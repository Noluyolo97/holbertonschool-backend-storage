-- Show and compute overall score
SELECT * FROM users;
SELECT * FROM corrections;

SELECT "--";
CALL ComputeOverallScoreForUser((SELECT id FROM users WHERE name = "Jeanne"));

SELECT "--";
SELECT * FROM users;