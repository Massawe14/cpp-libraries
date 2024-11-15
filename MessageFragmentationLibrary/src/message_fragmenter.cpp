// message_fragmenter.cpp
#include "message_fragmenter.h"
#include <iostream>
#include <algorithm>

MessageFragmenter::MessageFragmenter(size_t chunkSize, int timeoutSeconds)
    : chunkSize_(chunkSize), timeoutSeconds_(timeoutSeconds) {}

std::vector<std::string> MessageFragmenter::fragment(const std::string& message, const std::string& messageId) {
    std::lock_guard<std::mutex> lock(mutex_);

    size_t totalChunks = (message.size() + chunkSize_ - 1) / chunkSize_;
    totalChunks_[messageId] = static_cast<int>(totalChunks);
    timestamps_[messageId] = std::chrono::steady_clock::now();

    std::vector<std::string> fragments;
    for (size_t i = 0; i < message.size(); i += chunkSize_) {
        fragments.push_back(message.substr(i, chunkSize_));
    }
    return fragments;
}

void MessageFragmenter::reassemble(const std::string& messageId, int chunkIndex, const std::string& chunkData) {
    std::lock_guard<std::mutex> lock(mutex_);

    if (chunks_.find(messageId) == chunks_.end()) {
        chunks_[messageId] = std::vector<std::string>(totalChunks_[messageId], "");
    }

    chunks_[messageId][chunkIndex] = chunkData;

    // Check if reassembly is complete
    if (std::all_of(chunks_[messageId].begin(), chunks_[messageId].end(), [](const std::string& chunk) { return !chunk.empty(); })) {
        std::cout << "Message [" << messageId << "] reassembled: ";
        for (const auto& chunk : chunks_[messageId]) std::cout << chunk;
        std::cout << std::endl;

        chunks_.erase(messageId);
        totalChunks_.erase(messageId);
        timestamps_.erase(messageId);
    } else {
        checkTimeouts();
    }
}

void MessageFragmenter::onMissingChunk(MissingCallback callback) {
    missingCallback_ = callback;
}

void MessageFragmenter::onCorruption(CorruptionCallback callback) {
    corruptionCallback_ = callback;
}

void MessageFragmenter::checkTimeouts() {
    auto now = std::chrono::steady_clock::now();
    for (auto it = timestamps_.begin(); it != timestamps_.end();) {
        if (std::chrono::duration_cast<std::chrono::seconds>(now - it->second).count() > timeoutSeconds_) {
            if (corruptionCallback_) {
                triggerCorruptionCallback(it->first);
            }
            chunks_.erase(it->first);
            totalChunks_.erase(it->first);
            it = timestamps_.erase(it);
        } else {
            ++it;
        }
    }
}

void MessageFragmenter::triggerMissingCallback(const std::string& messageId, int missingChunk) {
    if (missingCallback_) {
        missingCallback_(messageId, missingChunk);
    }
}

void MessageFragmenter::triggerCorruptionCallback(const std::string& messageId) {
    if (corruptionCallback_) {
        corruptionCallback_(messageId);
    }
}
