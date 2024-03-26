import sqlite3
import pandas as pd

from pathlib import Path

db_path = "fitness.sqlite"
Path(db_path).touch()

conn = sqlite3.connect(db_path, timeout=10)
c = conn.cursor()

c.execute('''
	Drop table if exists exercise;''')
c.execute('''
	CREATE TABLE exercise (
    id SERIAL NOT NULL,
	exercise VARCHAR(10) NOT NULL,    
	duration INT,
	calories_burnt DECIMAL(10, 2),
	exercise_intensity INT,
	PRIMARY KEY(id)
);''')

c.close()
conn = sqlite3.connect(db_path, timeout=10)
c = conn.cursor()

c.execute('''
	Drop table if exists weight_bmi;''')
c.execute('''
    CREATE TABLE weight_bmi(
	id SERIAL NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(10),
	dream_weight DECIMAL(10, 2) NOT NULL,
    actual_weight DECIMAL(10, 2) NOT NULL,
	bmi DECIMAL(10, 2) NOT NULL, 
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES exercise(id)
);''')

c.close()
conn = sqlite3.connect(db_path, timeout=10)
c = conn.cursor()

c.execute('''
	Drop table if exists age;''')
c.execute('''
    CREATE TABLE age(
	id SERIAL NOT NULL,
	calories_burnt DECIMAL(10, 2),
	heart_rate INT NOT NULL,
	age INT NOT NULL,
	gender VARCHAR(10), 
	PRIMARY KEY(id),
	FOREIGN KEY(id) REFERENCES weight_bmi(id)
);''')



csv_exercise = pd.read_csv("exercise_data.csv")
csv_exercise.to_sql("exercise", conn, if_exists='append', index=False)

csv_weight_bmi = pd.read_csv("weight_bmi_data.csv")
csv_weight_bmi.to_sql("weight_bmi", conn, if_exists='append', index=False)

csv_age = pd.read_csv("age_data.csv")
csv_age.to_sql("age", conn, if_exists='append', index=False)

c.close()