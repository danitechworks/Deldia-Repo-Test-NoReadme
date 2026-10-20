using System;

namespace DelDia.ExplorerSample;

// A small entry point for file preview testing.
public static class Program
{
    public static void Main()
    {
        var calculator = new Calculator();
        var total = calculator.Add(12, 8);
        string message = $"Welcome to DelDia! Total: {total}";

        Console.WriteLine(message);
    }
}
