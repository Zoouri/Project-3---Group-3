-- Creating exercise table
CREATE TABLE exercise(
	id SERIAL NOT NULL,
	exercise VARCHAR(250) NOT NULL,
	duration INT,
	calories_burnt DECIMAL(10, 2),
	exercise_intensity INT,
	PRIMARY KEY(id)
);

-- Creating weight_bmi table
CREATE TABLE weight_bmi(
	id SERIAL NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(250),
	dream_weight DECIMAL(10, 2) NOT NULL,
    actual_weight DECIMAL(10, 2) NOT NULL,
	bmi DECIMAL(10, 2) NOT NULL, 
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES exercise(id)
);

-- Creating age table
CREATE TABLE age(
	id SERIAL NOT NULL,
	calories_burnt DECIMAL(10, 2),
	heart_rate INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(250), 
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES weight_bmi(id)
);

SELECT * FROM exercise
SELECT * FROM weight_bmi
SELECT * FROM age