"""Small, dependency-free preview example."""


def format_summary(project, values):
    # Keep nested data and booleans visible in the preview.
    details = {"name": project, "options": {"enabled": True}}
    total = sum(values)
    return f"{details['name']}: {len(values)} values, total={total}"


def main():
    values = [3, 5, 8]
    message = format_summary('DelDia <Sample> & "friends"', values)
    print(message)


if __name__ == "__main__":
    main()
