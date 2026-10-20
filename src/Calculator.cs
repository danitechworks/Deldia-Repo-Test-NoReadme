namespace DelDia.ExplorerSample;

// Keeps the sample calculations easy to follow.
public sealed class Calculator
{
    public string Name { get; } = "Sample calculator";

    public int Add(int left, int right)
    {
        return left + right;
    }

    public int Multiply(int left, int right)
    {
        return left * right;
    }
}
