# Get data from Table to R 
result_set = dbSendQuery(mydb, "select * from tindex_change")
model_data = fetch(result_set, n=-1)
# Save table data as dataframe
save(file="model_data.RData",data)