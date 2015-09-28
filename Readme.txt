Requirements:
--------------------
1) Rattle\R 
2) MySQL database.
3) RMySQL package in R.


Instructions for training and Testing:
-------------------------------------
1) The final input data is available in Input_Data directory.
2) To check the output, load the input.RData into Rattle by selecting the RData File option.
3) Make sure to select the partition option with default i.e. 70/15/15 for training and testing purposes.
4) Navigate to model tab, and select different models and then execute. Random Forests resulted in more accurate results.
5) For testing purposes, Go to Evaluate tab, with Error matrix option selected. This gives the accuracy details.

Data Preprocessing:
------------------

1) All the data is available in csv format in the Data directory.  
2) Scripts needed to perform preprocessing the data are available in the scripts directory (files created will be in the current working directory.).
3) A preprocessed data is available in the preprocessed directory.

Export to SQL
------------------
1) Create a database named "stock_data" by using the following query.
	CREATE DATABASE stock_data;
2) Run the script available under Export_From_R_to_SQL to export dataframes into SQL.

Creating Input data
--------------------
1) Run the .sql files under Create_Final_Data directory in mysql.
2) This will create a final table with all the information needed for training of the model.

Import data from SQL to R
--------------------------
1) Run "import_to_R.R" under Import_From_SQL_To_R directory. 
2) This will create a "model_data.RData" file under the current working directory.

Prediction step:
-----------------
Load the "model_data.RData" in to rattle as said in the instructions part for training and testing results.

