# Reading the input
SP <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
SP$Date <- as.Date(SP$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(SP$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
SP <- SP[-dim(SP)[1],]
SP <- cbind(SP,Change)

# To calculate the percentage change in the index price
SP$percent_change<-(SP$Change/SP$Close)*100

save(SP,file="SP_p.Rda")