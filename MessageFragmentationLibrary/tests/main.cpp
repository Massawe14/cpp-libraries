// test_message_fragmenter.cpp
#include "message_fragmenter.h"
#include <iostream>
#include <thread>

void simulateNetwork(MessageFragmenter& fragmenter, const std::string& message, const std::string& messageId) {
    auto chunks = fragmenter.fragment(message, messageId);
    for (size_t i = 0; i < chunks.size(); ++i) {
        if (i != 2) {  // Simulate missing the third chunk
            fragmenter.reassemble(messageId, static_cast<int>(i), chunks[i]);
        }
    }
}

int main() {
    MessageFragmenter fragmenter(10, 5); // 10-byte chunks, 5-second timeout

    fragmenter.onMissingChunk([](const std::string& messageId, int missingChunk) {
        std::cout << "Missing chunk " << missingChunk << " for message [" << messageId << "]" << std::endl;
    });

    fragmenter.onCorruption([](const std::string& messageId) {
        std::cerr << "Message [" << messageId << "] is corrupted due to timeout." << std::endl;
    });

    std::string message = "This is a very long message that needs to be fragmented.";
    std::string messageId = "msg1";

    std::thread simulation(simulateNetwork, std::ref(fragmenter), message, messageId);

    // Simulate delayed arrival of the missing chunk
    std::this_thread::sleep_for(std::chrono::seconds(6));
    fragmenter.reassemble(messageId, 2, "message ");

    simulation.join();
    return 0;
}
