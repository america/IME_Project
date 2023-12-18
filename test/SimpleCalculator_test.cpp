#include <gtest/gtest.h>

#include "SimpleCalculator.h"

TEST(AddTest, TestCase1) {
  SimpleCalculator calc;
    
  EXPECT_EQ(-10, calc.Add(-5,-5));
}
