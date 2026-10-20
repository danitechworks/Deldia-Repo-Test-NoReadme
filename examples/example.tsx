// Representative TSX fixture; no package installation is required.
type PreviewProps = {
    title: string;
    enabled?: boolean;
};

const files = [
    { name: "Calculator.cs", details: { lines: 17 } },
    { name: "app.js", details: { lines: 16 } },
];

export function Preview({ title, enabled = true }: PreviewProps) {
    return (
        <section aria-label={title}>
            <h1>{title} &amp; examples</h1>
            {enabled && files.map((file) => (
                <p key={file.name}>{`${file.name}: ${file.details.lines} lines`}</p>
            ))}
        </section>
    );
}
