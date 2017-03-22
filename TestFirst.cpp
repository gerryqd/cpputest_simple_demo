#include "CppUTest/TestHarness.h"

TEST_GROUP(FirstTest)
{
};

TEST(FirstTest, First)
{
    CHECK_EQUAL(0, 0);
}

TEST(FirstTest, second)
{
    LONGS_EQUAL(0, 0);
}
