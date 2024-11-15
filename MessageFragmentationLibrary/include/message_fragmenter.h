// message_fragmenter.h
#ifndef MESSAGE_FRAGMENTER_H
#define MESSAGE_FRAGMENTER_H

#include <string>
#include <vector>
#include <unordered_map>
#include <functional>
#include <mutex>
#include <chrono>

class MessageFragmenter {
public:
    using MissingCallback = std::function<void(const std::string& messageId, int missingChunk)>;
    using CorruptionCallback = std::function<void(const std::string& messageId)>;

    MessageFragmenter(size_t chunkSize, int timeoutSeconds);

    // Fragment a message into smaller chunks
    std::vector<std::string> fragment(const std::string& message, const std::string& messageId);

    // Reassemble a chunk into a complete message
    void reassemble(const std::string& messageId, int chunkIndex, const std::string& chunkData);

    // Register callbacks
    void onMissingChunk(MissingCallback callback);
    void onCorruption(CorruptionCallback callback);

private:
    void checkTimeouts();
    void triggerMissingCallback(const std::string& messageId, int missingChunk);
    void triggerCorruptionCallback(const std::string& messageId);

    size_t chunkSize_;
    int timeoutSeconds_;

    std::unordered_map<std::string, std::vector<std::string>> chunks_;
    std::unordered_map<std::string, int> totalChunks_;
    std::unordered_map<std::string, std::chrono::steady_clock::time_point> timestamps_;

    MissingCallback missingCallback_;
    CorruptionCallback corruptionCallback_;
    std::mutex mutex_;
};

#endif // MESSAGE_FRAGMENTER_H
