INSERT INTO Exercise (Name, Description, MuscleGroup, EquipmentRequired) VALUES
('Push Up', 'A bodyweight exercise targeting the chest, shoulders, and triceps.', 'Chest', 'None'),
('Pull Up', 'An upper-body exercise that targets the back and biceps.', 'Back', 'Pull-Up Bar'),
('Squat', 'A lower-body exercise that targets the quads, hamstrings, and glutes.', 'Legs', 'None'),
('Deadlift', 'A compound exercise that targets the entire posterior chain.', 'Back', 'Barbell'),
('Bench Press', 'A chest exercise performed with a barbell or dumbbells.', 'Chest', 'Bench, Barbell'),
('Overhead Press', 'A shoulder exercise performed with a barbell or dumbbells.', 'Shoulders', 'Barbell'),
('Bicep Curl', 'An isolation exercise that targets the biceps.', 'Arms', 'Dumbbells'),
('Tricep Extension', 'An isolation exercise that targets the triceps.', 'Arms', 'Dumbbells'),
('Lunge', 'A lower-body exercise that targets the quads and glutes.', 'Legs', 'None'),
('Leg Press', 'A lower-body exercise performed on a leg press machine.', 'Legs', 'Leg Press Machine'),
('Lat Pulldown', 'An upper-body exercise that targets the back.', 'Back', 'Lat Pulldown Machine'),
('Hamstring Curl', 'A lower-body exercise that targets the hamstrings.', 'Legs', 'Hamstring Curl Machine'),
('Chest Fly', 'A chest exercise performed with dumbbells.', 'Chest', 'Dumbbells'),
('Shoulder Fly', 'A shoulder exercise performed with dumbbells.', 'Shoulders', 'Dumbbells'),
('Calf Raise', 'A lower-body exercise that targets the calves.', 'Legs', 'None'),
('Plank', 'A core exercise that targets the abdominals and lower back.', 'Core', 'None'),
('Russian Twist', 'A core exercise that targets the obliques.', 'Core', 'None'),
('Mountain Climber', 'A full-body exercise that targets the core and legs.', 'Core', 'None'),
('Bicycle Crunch', 'A core exercise that targets the abdominals.', 'Core', 'None'),
('Leg Raise', 'A core exercise that targets the lower abdominals.', 'Core', 'None'),
('Dumbbell Row', 'An upper-body exercise that targets the back.', 'Back', 'Dumbbells'),
('Face Pull', 'An upper-body exercise that targets the rear deltoids.', 'Shoulders', 'Cable Machine'),
('Cable Curl', 'An isolation exercise that targets the biceps.', 'Arms', 'Cable Machine'),
('Cable Tricep Pushdown', 'An isolation exercise that targets the triceps.', 'Arms', 'Cable Machine'),
('Sit Up', 'A core exercise that targets the abdominals.', 'Core', 'None'),
('Side Plank', 'A core exercise that targets the obliques.', 'Core', 'None'),
('Dumbbell Shoulder Press', 'A shoulder exercise performed with dumbbells.', 'Shoulders', 'Dumbbells'),
('Goblet Squat', 'A lower-body exercise performed with a dumbbell or kettlebell.', 'Legs', 'Dumbbell'),
('Kettlebell Swing', 'A full-body exercise that targets the posterior chain.', 'Back', 'Kettlebell'),
('Dumbbell Lateral Raise', 'A shoulder exercise performed with dumbbells.', 'Shoulders', 'Dumbbells');

INSERT INTO User (FName, Lname, Email, DateOfBirth, Gender, Password) VALUES
('John', 'Doe', 'john.doe@hohoho.com', '1985-05-15', 'Male', 'password123'),
('Jane', 'Smith', 'jane.smith@hohoho.com', '1990-08-22', 'Female', 'securepass456'),
('Alex', 'Johnson', 'alex.johnson@hohoho.com', '1983-11-12', 'Non-binary', 'mypassword789'),
('Emily', 'Davis', 'emily.davis@hohoho.com', '1978-02-10', 'Female', 'passw0rd'),
('Michael', 'Brown', 'michael.brown@hohoho.com', '1982-07-25', 'Male', 'letmein123'),
('Sarah', 'Wilson', 'sarah.wilson@hohoho.com', '1993-03-17', 'Female', 'iloveyou456'),
('David', 'Taylor', 'david.taylor@hohoho.com', '1987-09-05', 'Male', '123456789'),
('Laura', 'Anderson', 'laura.anderson@hohoho.com', '1989-12-20', 'Female', 'abcdefg123'),
('Chris', 'Thomas', 'chris.thomas@hohoho.com', '1984-06-15', 'Male', 'qwerty456'),
('Anna', 'Jackson', 'anna.jackson@hohoho.com', '1992-01-30', 'Female', 'password321'),
('Ryan', 'White', 'ryan.white@hohoho.com', '1981-04-14', 'Male', 'pass1234'),
('Sophia', 'Harris', 'sophia.harris@hohoho.com', '1986-10-21', 'Female', 'secure789'),
('James', 'Martin', 'james.martin@hohoho.com', '1991-07-18', 'Male', 'mypassword456'),
('Olivia', 'Garcia', 'olivia.garcia@hohoho.com', '1988-09-12', 'Female', 'letmein789'),
('Daniel', 'Clark', 'daniel.clark@hohoho.com', '1979-02-04', 'Male', 'iloveyou123'),
('Chloe', 'Lewis', 'chloe.lewis@hohoho.com', '1994-08-23', 'Female', '123secure'),
('Ethan', 'Walker', 'ethan.walker@hohoho.com', '1980-11-29', 'Male', 'pass321'),
('Isabella', 'Robinson', 'isabella.robinson@hohoho.com', '1987-03-07', 'Female', 'mypassword123'),
('Liam', 'Scott', 'liam.scott@hohoho.com', '1985-01-22', 'Male', 'password456'),
('Mia', 'Adams', 'mia.adams@hohoho.com', '1990-05-19', 'Female', 'qwerty789');


INSERT INTO Progress (UserID, Date, Start_Time, End_Time, Weight, Height) VALUES
(1, '2023-12-01', '08:00', '08:45', 70.50, 175.50),
(1, '2024-07-28', '08:00', '08:45', 70.00, 175.50),
(1, '2024-08-01', '08:00', '08:45', 69.80, 176.50),
(2, '2024-01-01', '09:00', '09:30', 65.00, 165.00),
(2, '2024-08-29', '09:00', '09:30', 64.50, 165.30),
(3, '2023-12-05', '07:00', '07:45', 85.00, 180.00),
(3, '2024-09-29', '07:00', '07:45', 84.80, 180.15),
(3, '2024-10-03', '07:00', '07:45', 84.60, 180.50),
(4, '2024-02-01', '06:30', '07:15', 75.00, 170.00),
(4, '2024-11-20', '06:30', '07:15', 74.50, 170.00),
(5, '2023-12-03', '18:00', '18:45', 90.00, 185.00),
(5, '2024-11-16', '18:00', '18:45', 89.70, 185.00),
(5, '2024-11-17', '18:00', '18:45', 90.50, 185.00),
(6, '2024-05-26', '17:00', '17:30', 68.00, 160.00),
(6, '2024-08-05', '17:00', '17:30', 67.50, 160.20),
(7, '2024-07-08', '08:30', '09:15', 95.00, 190.00),
(7, '2024-07-30', '08:30', '09:15', 94.80, 190.00),
(7, '2024-08-22', '08:30', '09:15', 94.60, 190.00),
(8, '2024-07-20', '09:30', '10:00', 55.00, 155.00),
(8, '2024-08-15', '09:30', '10:00', 54.50, 155.00),
(9, '2024-08-11', '07:30', '08:15', 80.00, 175.00),
(9, '2024-08-18', '07:30', '08:15', 79.80, 175.00),
(9, '2024-08-28', '07:30', '08:15', 79.60, 175.00),
(10, '2024-09-16', '06:00', '06:45', 76.00, 170.00),
(10, '2024-09-20', '06:00', '06:45', 75.50, 170.00),
(11, '2024-10-21', '17:30', '18:15', 90.00, 185.00),
(11, '2024-10-28', '17:30', '18:15', 89.80, 185.00),
(11, '2024-11-21', '17:30', '18:15', 89.60, 185.00),
(12, '2024-11-26', '16:00', '16:45', 70.00, 165.00),
(12, '2024-12-05', '16:00', '16:45', 69.50, 165.00),
(13, '2024-12-02', '06:30', '07:15', 85.00, 180.00),
(13, '2024-12-05', '06:30', '07:15', 84.80, 180.00),
(13, '2024-12-08', '06:30', '07:15', 84.60, 180.00),
(14, '2024-12-07', '18:30', '19:15', 65.00, 160.00),
(14, '2024-12-08', '18:30', '19:15', 64.50, 160.00),
(15, '2024-08-09', '07:00', '07:45', 95.00, 190.00),
(15, '2024-08-16', '07:00', '07:45', 94.80, 190.00),
(15, '2024-08-23', '07:00', '07:45', 94.60, 190.00),
(16, '2024-01-08', '08:30', '09:15', 55.00, 150.00),
(16, '2024-08-15', '08:30', '09:15', 54.50, 150.00),
(17, '2024-02-14', '06:00', '06:45', 80.00, 170.00),
(17, '2024-02-21', '06:00', '06:45', 79.80, 170.00),
(17, '2024-03-03', '06:00', '06:45', 79.60, 170.00),
(18, '2024-03-18', '17:00', '17:45', 76.00, 165.00),
(18, '2024-03-23', '17:00', '17:45', 75.50, 165.00),
(19, '2024-04-21', '07:30', '08:15', 90.00, 180.00),
(19, '2024-06-19', '07:30', '08:15', 89.80, 180.00),
(19, '2024-07-26', '07:30', '08:15', 89.60, 180.00),
(20, '2024-05-26', '16:30', '17:15', 70.00, 160.00),
(20, '2024-08-11', '16:30', '17:15', 69.50, 160.00);

INSERT INTO Discount (Duration, DiscountPercentage, Description) VALUES
(30, 5.00, '5% discount for a 30-day period'),
(90, 10.00, '10% discount for a 90-day period'),
(180, 15.00, '15% discount for a 180-day period'),
(365, 20.00, '20% discount for a 365-day period');

INSERT INTO SubscriptionType (Subscription_type, SubscriptionAmount, Description) VALUES
('Free Plan', 0.00, 'Access to 1 workout plan at no cost'),
('Premium', 49.99, 'Access to 3 workout plans for CAD 49.99 per month'),
('VIP', 99.99, 'All access to workout plans for CAD 99.99 per month');

INSERT INTO Workout (SubscriptionTypeID, Name, Type, Duration, CaloriesBurned) VALUES
-- Free Plan (1 workout)
(1, 'Basic Full Body Workout', 'Strength', 30, 300.00),

-- Premium Plan (3 workouts)
(2, 'Intermediate Strength Training', 'Strength', 45, 450.00),
(2, 'Cardio Blast', 'Cardio', 60, 500.00),
(2, 'Flexibility and Mobility', 'Flexibility', 30, 250.00),

-- VIP Plan (all access, including Free and Premium)
(3, 'Advanced HIIT Workout', 'Cardio', 45, 600.00),
(3, 'Endurance Training', 'Cardio', 60, 700.00),
(3, 'Pilates Core Workout', 'Core', 45, 400.00),
(3, 'Strength and Conditioning', 'Strength', 60, 550.00),
(3, 'Yoga Flow', 'Flexibility', 60, 200.00),
(3, 'Balance and Stability', 'Balance', 30, 250.00);

INSERT INTO WorkoutExercise (WorkoutID, ExerciseID) VALUES
-- Basic Full Body Workout (Free Plan)
(1, 1), (1, 2), (1, 3),

-- Intermediate Strength Training (Premium Plan)
(2, 4), (2, 5), (2, 6),

-- Cardio Blast (Premium Plan)
(3, 7), (3, 8), (3, 9),

-- Flexibility and Mobility (Premium Plan)
(4, 10), (4, 11), (4, 12),

-- Advanced HIIT Workout (VIP Plan)
(5, 13), (5, 14), (5, 15),

-- Endurance Training (VIP Plan)
(6, 16), (6, 17), (6, 18),

-- Pilates Core Workout (VIP Plan)
(7, 19), (7, 20), (7, 21),

-- Strength and Conditioning (VIP Plan)
(8, 22), (8, 23), (8, 24),

-- Yoga Flow (VIP Plan)
(9, 25), (9, 26), (9, 27),

-- Balance and Stability (VIP Plan)
(10, 28), (10, 29), (10, 30);


INSERT INTO Transaction (User_UserID, Discount_DiscountID, SubscriptionTypeID, PaymentMethod, StartDate) VALUES
(1, 1, 1, 'Credit Card', '2023-12-01'),
(1, 2, 2, 'Credit Card', '2024-07-15'),
(2, 2, 2, 'PayPal', '2024-01-05'),
(2, 3, 3, 'PayPal', '2024-08-20'),
(3, 3, 3, 'Credit Card', '2024-02-10'),
(3, 1, 1, 'Credit Card', '2024-09-25'),
(4, 1, 2, 'Credit Card', '2024-03-15'),
(4, 4, 2, 'Debit Card', '2024-10-30'),
(5, 4, 3, 'Debit Card', '2024-04-20'),
(5, 2, 1, 'Credit Card', '2024-11-15'),
(6, 2, 1, 'PayPal', '2024-05-25'),
(7, 3, 2, 'Credit Card', '2024-06-30'),
(8, 4, 3, 'Debit Card', '2024-07-05'),
(9, 1, 1, 'Credit Card', '2024-08-10'),
(10, 2, 3, 'PayPal', '2024-09-15'),
(11, 3, 2, 'Credit Card', '2024-10-20'),
(12, 4, 1, 'Debit Card', '2024-11-25'),
(13, 1, 3, 'Credit Card', '2024-12-01'),
(14, 2, 2, 'PayPal', '2024-12-06'),
(15, 3, 1, 'Credit Card', '2024-08-01'),
(16, 4, 3, 'Debit Card', '2024-01-05'),
(17, 1, 2, 'Credit Card', '2024-02-10'),
(18, 2, 1, 'PayPal', '2024-03-15'),
(19, 3, 3, 'Credit Card', '2024-04-20'),
(20, 4, 2, 'Debit Card', '2024-05-25');



