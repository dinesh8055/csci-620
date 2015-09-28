# Acquire Database connection from R to the created database
require(RMySQL)
mydb = dbConnect(MySQL(), user='User_name', password='xxxx', dbname='stock_data', host='localhost')

# Creating a table from Dataframe in R

dbWriteTable(mydb, name='Cac', value=Cac)
dbWriteTable(mydb, name='Dax', value=Dax)
dbWriteTable(mydb, name='Enxt', value=Enxt)
dbWriteTable(mydb, name='Estx', value=Estx)
dbWriteTable(mydb, name='Hang', value=Hang)
dbWriteTable(mydb, name='Inflation', value=Inflation)
dbWriteTable(mydb, name='SP', value=SP)
dbWriteTable(mydb, name='Spasx', value=Spasx)
dbWriteTable(mydb, name='Sti', value=Sti)
dbWriteTable(mydb, name='nikkei', value=nikkei)
