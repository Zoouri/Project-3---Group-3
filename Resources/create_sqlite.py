import sqlite3
import pandas as pd

from pathlib import Path

db_path = "fitness.sqlite"
Path(db_path).touch()

conn = sqlite3.connect(db_path)
c = conn.cursor()

c.execute('''CREATE TABLE fitness (
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
)''')

csv_fitness = pd.read_csv("exercise_dataset.csv")
csv_fitness.to_sql("fitness", conn, if_exists='append', index=False)

conn.close()