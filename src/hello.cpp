// #include <iostream>
// #include "hello.h"

// void hello(){
//     std::cout << "Hello, World!" << std::ends;
   
// }

#include "hello.h"
#include <iostream>

hello::hello() {}

hello::~hello() {}

void hello::run() {
    std::string input;
    std::cout << "Application is running... Type 'exit' to quit." << std::ends;
    
    while (true) {
        if(!(std::cin >> input)) {
            std::cout << "No Input detected, existing....." << std::ends;
            break;
        }
        if (processInput(input)) {
            break;
        }
    }
}

bool hello::processInput(const std::string &input) {
    if (input == "exit") {
        std::cout << "Exiting application..." << std::ends;
        return true; // Exit the loop
    } else {
        std::cout << "You typed: " << input << std::ends;
        return false; // Continue running
    }
}