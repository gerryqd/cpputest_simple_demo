#include "CppUTest/TestHarness.h"

TEST_GROUP(FirstTest)
{
};

TEST(FirstTest, First)
{
    LONGS_EQUAL(0, 0);
}
