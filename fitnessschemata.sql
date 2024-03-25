-- Creating Fitness Table 
CREATE TABLE fitness (
    id SERIAL PRIMARY KEY,
    exercise VARCHAR(250) NOT NULL,
    calories_burnt DECIMAL(10, 2),
    dream_weight DECIMAL(10, 2) NOT NULL,
    actual_weight DECIMAL(10, 2) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(250),
    duration INT,
    heart_rate INT NOT NULL,
    bmi DECIMAL(10, 2) NOT NULL, 
    weather_conditions VARCHAR(250),
    exercise_intensity INT
);

SELECT * FROM fitness;