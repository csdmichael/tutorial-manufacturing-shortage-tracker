-- Forward-only migration 0002: reference data so a new environment is not empty.
-- Re-runnable: each row is inserted only when its title is absent.
INSERT INTO tracker (title, reference, status, priority)
SELECT 'Sample Tracker 1', 'T-0001', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM tracker WHERE title = 'Sample Tracker 1');
INSERT INTO tracker (title, reference, status, priority)
SELECT 'Sample Tracker 2', 'T-0002', 'in-progress', 'normal'
WHERE NOT EXISTS (SELECT 1 FROM tracker WHERE title = 'Sample Tracker 2');
INSERT INTO tracker (title, reference, status, priority)
SELECT 'Sample Tracker 3', 'T-0003', 'complete', 'high'
WHERE NOT EXISTS (SELECT 1 FROM tracker WHERE title = 'Sample Tracker 3');
INSERT INTO tracker (title, reference, status, priority)
SELECT 'Sample Tracker 4', 'T-0004', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM tracker WHERE title = 'Sample Tracker 4');
