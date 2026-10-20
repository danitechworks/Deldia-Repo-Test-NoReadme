using System;
using DelDia.ExplorerSample;

namespace DelDia.ExplorerSample.Tests;

// Dependency-free checks that can be called from a test harness.
public static class CalculatorTests
{
    public static void VerifyAddition()
    {
        var calculator = new Calculator();
        int actual = calculator.Add(2, 3);

        if (actual != 5)
        {
            throw new InvalidOperationException("Expected 2 + 3 to equal 5.");
        }
    }
}
