// #ifndef HELLO_H
// #define HELLO_H

// void hello();

// #endif

#ifndef HELLO_H
#define HELLO_H

#include <string>

class hello {
public:
    hello();
    ~hello();

    void run();
    bool processInput(const std::string &input);
};

#endif // HELLO_H