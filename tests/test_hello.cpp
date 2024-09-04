// #include "hello.h"
// #include <gtest/gtest.h>


// // A Simple test case
// TEST(HelloTest, BasicAssertions){

//     EXPECT_NO_THROW(hello());
// }

#include "hello.h"
#include <gtest/gtest.h>

class helloTest : public ::testing::Test {
protected:
    hello app;
};

TEST_F(helloTest, ProcessInputExit) {
    EXPECT_TRUE(app.processInput("exit"));
}

TEST_F(helloTest, ProcessInputOther) {
    EXPECT_FALSE(app.processInput("hello"));
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}