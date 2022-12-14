-- Create a stored procedure AddBonus that updates the user with their average score
DELIMITER $$
DROP PROCEDURE IF EXISTS ComputeOverallScoreForUser;
CREATE PROCEDURE ComputeOverallScoreForUser ( IN user_id INT )
BEGIN
    UPDATE users
    SET overall_score = (
        SELECT AVG(score)
        FROM corrections
        WHERE corrections.user_id=user_id
        GROUP BY corrections.user_id
    )
    WHERE id=user_id;
END$$
