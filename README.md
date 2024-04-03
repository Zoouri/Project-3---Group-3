![Logo](ss/activefam.png)
# *Sweatin' & Spreadsheets: An Analysis of Exercise Efforts* :running: :sweat_drops: :weight_lifting_woman: 

**In this project, we embark on a journey through a vast dataset, harnessing the tools of SQL and the agility of Jupyter Nootebook to mold and manipulate our data. Our mission? To sculpt and reshape the dataset into meaningful insights, employing prowess of Pandas and other Python libraries along the way.**

![Eexercise](ss/exercise.gif)

#### Data Preparation and  Tasks
For this project, we curated data sourced from Kaggle. After refining the raw data into a more manageable format, we converted it into 3 CSV files. 
Our subsequent actions included importing this data into SQL databases, establishing a robust foundation for in-depth analysis within Jupyter Notebook and loading converted and cleaned data back into the server. Through meticulous cleaning and merging processes, we ensured data cohesion, guaranteeing that it is primed and prepared for thorough analytical exploration.

The pipeline of the data extraction process was visually represented using a graph, illustrating the sequential steps involved in sourcing, refining, and importing the data:

![ETL](ss/etl.png)


## Data Extraction step by step:
![ERD](ss/erdp3.png)

* We set a new database.
* Created tables using schemata.
* Imported required CSV files into respective tables.
* Verified that tables got correctly populated.
* Created an engine connection to our SQL database for further transformation.

## Data Transformation step by step:

* Merged table 'exercise_df' and 'age_df' on 'id', 'calories_burnt'.

* Merged result table with the 3rd table 'weight_bmi_df' table on 'id', 'age', 'gender’.

* Rearranged and ordered columns.

* Renamed columns.

* Changing datatypes to floats and integer for easier numerical manipulation.

* Normalising calories burnt by each participant to calories burnt in 60 minutes utilising the Exercise Duration (Minute) and Calories Burnt (Cal) data into a new column.

* Rounding decimal values and updating the data frame.

* Changing gender entries to binary 'Female': 1, 'Male': 0 for ease of numerical analysis.

* Finding the Average 'Calories Burnt (60 min)’ for each exercise type.

* Finding top 2 highest average 'Calories Burnt (60 min)' for each exercise type.

* Analysing ratio of participants from each gender for each exercise type to determine validity of further analysis of correlations and comparability.

* Confirming approximate 50%-50% ratio of male and female participants for the top 2 exercises burning highest average calories within 60 minutes duration.

* Filtering original table to include data for the 2 nominated exercise types and reducing the data size by 80% for the final data frame.

* Exported final table format as a CSV file.

## Data Loading: 

* We created an empty table named: "table_cleaned_test" for further test of new CSV file importation.
* Loaded the table with CSV file to guarantee success for future users.
* Exported cleaned and transformed, final panda dataframe into our SQL database ready for analysis.

### Ethical Considerations
The selected dataset is synthetic, ensuring the protection of individual's privacy and adhering to ethical principles. By opting for synthetic data, privacy concerns associated with the use of real world data are effectively mitigated. This choice alligns with ethical standards, prioritizing the safeguard of personal information while enabling meaningful analysis and insights to be derived.

### *User Instructions*

*Welcome to our data analysis project! In this journey, we'll navigate through a vast dataset, using the powerful tools of SQL and the flexibility of Jupyter Notebook to shape and mold our data into meaningful insights. Our mission is to uncover hidden patterns and trends, leveraging the prowess of Pandas and other Python libraries along the way.*

**Option 1 Instructions**

1. Download Resources:

* Download the CSV files and SQL schemata provided in the Resources folder.

2. Import Data:

* Use the provided schemata to import data into corresponding tables and populate them with the downloaded CSV files.

3. Set Up Jupyter Notebook:

* Download our Jupyter Notebook file.

* Open the notebook and replace the placeholders ('username', 'password', 'hostname', 'port', and 'database_name') with your PostgreSQL credentials.

* Create a connection string and engine using your credentials.
Test the connection to ensure its success.

4. Run Code:

* Once the connection is successful, feel free to run the remaining codes in the notebook.

5. Export Final Table:

* Use the code provided to export the final and cleaned table back into your database for further analysis as desired.

**Option 2 Instructions:**

1. Download Resources:

* Download the CSV files, SQL schemata, and the `Final_Cleaned_Data.csv` from the Resources folder.

2. Import Data:

* Use the provided schemata to import data into corresponding tables and populate them with the downloaded CSV files.

Note: The last created table is the final version of contained data.

3. Set Up Jupyter Notebook:

* Open a new Jupyter Notebook and download our Jupyter Notebook file.
Replace the placeholders ('username', 'password', 'hostname', 'port', and 'database_name') with your PostgreSQL credentials.

* Create a connection string and engine using your credentials.

* Test the connection to ensure its success.

4. Data Analysis:

* Your data is now ready for analysis.

* Explore the dataset and perform any desired analyses using the provided notebook.

With these user instructions, you're now equipped to embark on your data analysis journey. Happy exploring! 
![Homer](ss/homer.gif)


#### Technologies used
* *Visual Studio Code - **Python** Software*
* *Excel* 
* *GitHub* 
* **Pandas**
* **Jupyter Notebook**
* **SQL**
* **Seaborn**
* **Alstair**

#### File list
* main_codes.ipynb
* age_data.csv - resources file containing dataset
* weight_bmi.csv - resources file containing dataset
* exercise_data.csv - resources file containing dataset
* fitness_schemata.sql
* README.md
* Various Screen Shots
* output_folder - with various files

#### Resources & Links:

Kaggle WHO - A report using large dataset of fitness and exercise metrics.

Cover Photo Source: `https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Fvector-art%2F4761631-healthy-families-concept-isolated-person-situations-collection-of-scenes-with-people-parents-with-children-go-in-for-sports-compete-and-active-lifestyle-mega-set-vector-illustration-in-flat-design&psig=AOvVaw0w0ooOd7TrbqvSQoh-N53a&ust=1711527016814000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLj-h7K9kYUDFQAAAAAdAAAAABAT`

Exercise GIF source: `https://i.gifer.com/7kvp.gif` 
Homer GIF source: `https://i.giphy.com/media/3orif0rjs49gsPWg1y/giphy.gif`
##### Copyright
A. Czynszak, A. Yazdan, C. Ramos, C.Y. Lee © 2024. All Rights Reserved.


