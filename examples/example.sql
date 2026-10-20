-- Temporary sample data; intended for an isolated SQLite session.
CREATE TEMP TABLE preview_files (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    line_count INTEGER DEFAULT 0,
    enabled BOOLEAN DEFAULT TRUE
);

INSERT INTO preview_files (id, name, line_count, enabled)
VALUES (1, 'Calculator.cs', 17, TRUE),
       (2, 'Example <draft> & ''notes''', 12, FALSE);

SELECT name, line_count,
       CASE WHEN enabled THEN 'visible' ELSE 'hidden' END AS status
FROM preview_files
WHERE line_count > 10
ORDER BY name;
