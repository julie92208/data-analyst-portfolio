DROP PROCEDURE IF EXISTS listlazyusers;
DELIMITER //
CREATE PROCEDURE listlazyusers(IN input_date DATE)
BEGIN
   SELECT 
       user.UserID,
       user.Fname, 
       user.Lname, 
       user.Email,
       MAX(progress.Date) AS LastTime_Workout, 
       MAX(Transaction.Startdate) AS Subscription_startdate, 
       discount.duration,
       DATE_ADD( MAX(Transaction.Startdate), INTERVAL discount.duration DAY) AS subscription_enddate
   FROM user
   JOIN progress ON progress.userID = user.userID
   JOIN Transaction ON Transaction.User_UserID = user.UserID
   JOIN discount ON discount.DiscountID = Transaction.Discount_DiscountID
   GROUP BY UserID
   HAVING LastTime_Workout < input_date AND subscription_enddate > current_date()
   ORDER BY UserID;
END //

CALL listlazyusers('2024-11-01')


