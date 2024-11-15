# MessageFragmenter Library

The MessageFragmenter library provides functionality for splitting long messages into manageable chunks, reassembling them from disorganized fragments, and handling errors like missing or corrupted data. The library is designed for efficient processing, supports multithreaded environments, and includes callback mechanisms for error reporting.

## Features
- Fragmentation: Split large messages into smaller, fixed-size chunks.
- Reassembly: Combine chunks back into the original message, even if received out of order.
- Missing Chunk Detection: Trigger a callback when chunks are missing.
- Corruption Handling: Report corrupted messages when reassembly times out.
- Thread-Safe: Built to handle concurrent operations securely.
- Customizable Callbacks: Register functions to handle missing chunks and corrupted messages.

## Getting Started
### Prerequisites
- Compiler: A C++ compiler supporting C++11 or higher (e.g., GCC, Clang, or MSVC).
- Build Tools: make or equivalent for compiling and linking.

## Installation
Clone the repository and navigate to the project directory:
```bash
git clone https://github.com/Massawe14/cpp-libraries.git
cd cpp-libraries/MessageFragmentationLibrary
```
Compile the library and test code:
```bash
g++ -o test_message_fragmenter test_message_fragmenter.cpp message_fragmenter.cpp -std=c++11 -pthread
```

## Usage
Example: Fragmenting and Reassembling a Message
```cpp
#include "message_fragmenter.h"
#include <iostream>

int main() {
    // Create a fragmenter with 10-byte chunks and a 5-second timeout
    MessageFragmenter fragmenter(10, 5);

    // Register callbacks
    fragmenter.onMissingChunk([](const std::string& messageId, int chunkIndex) {
        std::cout << "Missing chunk " << chunkIndex << " for message [" << messageId << "]" << std::endl;
    });

    fragmenter.onCorruption([](const std::string& messageId) {
        std::cerr << "Message [" << messageId << "] is corrupted." << std::endl;
    });

    // Fragment a message
    std::string message = "This is a long message that needs fragmentation.";
    std::string messageId = "msg1";

    auto chunks = fragmenter.fragment(message, messageId);

    // Simulate reassembling chunks out of order
    fragmenter.reassemble(messageId, 1, chunks[1]);
    fragmenter.reassemble(messageId, 0, chunks[0]);
    fragmenter.reassemble(messageId, 2, chunks[2]);

    return 0;
}
```
Output:
```text
Message [msg1] reassembled: This is a very long message at needs to be fragmented.
```

## Testing
A test program is included to validate the library's features:
- Fragmentation
- Reassembly
- Missing chunk detection
- Corruption handling

To run the test:
```bash
g++ -o test_message_fragmenter test_message_fragmenter.cpp message_fragmenter.cpp -std=c++11 -pthread
cd/build/MessageFragmentationLibrary/./test_MessageFragmentationLibrary
```

## API Reference
### Constructor
```cpp
MessageFragmenter(size_t chunkSize, int timeoutSeconds);
```
- chunkSize: Size of each fragment in bytes.
- timeoutSeconds: Timeout for reassembly, after which corruption is reported.

### Methods
- std::vector<std::string> fragment(const std::string& message, const std::string& messageId);

- Splits a message into chunks. Returns a vector of fragments.
void reassemble(const std::string& messageId, int chunkIndex, const std::string& chunkData);

- Adds a chunk to the reassembly process.
void onMissingChunk(MissingCallback callback);

- Registers a callback for handling missing chunks.
void onCorruption(CorruptionCallback callback);

- Registers a callback for handling message corruption.

## Contributing
Contributions are welcome! Feel free to submit issues, feature requests, or pull requests.
- Fork the repository.
- Create a feature branch (git checkout -b feature-name).
- Commit your changes (git commit -m "Add feature").
- Push to the branch (git push origin feature-name).
- Open a pull request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
