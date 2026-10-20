const projectName = "DelDia explorer sample";
const values = [12, 8, 5];

// Format a short summary for the repository preview.
function formatSummary(name, numbers) {
    const total = numbers.reduce((sum, value) => sum + value, 0);
    return `${name}: ${numbers.length} values, total ${total}`;
}

function showSummary() {
    const message = formatSummary(projectName, values);
    console.log(message);
    return message;
}

showSummary();
