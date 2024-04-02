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

-- Creating age table - for future CSV importation if desired
CREATE TABLE clean_table_test (
    Participant_id SERIAL PRIMARY KEY,
    Age INT NOT NULL,
    Gender INT NOT NULL,
    "Exercise Type (1-10)" INT NOT NULL,
    "Exercise Intensity" VARCHAR(250), 
    "Exercise Duration (Minute)" INT,
    "Calories Burnt (Cal)" FLOAT,
    "Calories Burnt (60 min)" FLOAT,
    "Heart Rate (BPM)" INT NOT NULL,
    BMI FLOAT NOT NULL,
    "Recorded Weight (Kg)" INT NOT NULL,
    "Dream Weight (Kg)" INT NOT NULL
);

