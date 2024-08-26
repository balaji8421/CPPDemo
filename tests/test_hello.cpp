#include <gtest/gtest.h>
#include "hello.h"

// A Simple test case
TEST(HelloTest, BasicAssertions){

    EXPECT_NO_THROW(hello());
}