# Reading the input
Inflation <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format

Inflation$Date <- as.Date(Inflation$Date,format="%d-%m-%Y")

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Inflation$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Inflation <- Inflation[-dim(Inflation)[1],]
Inflation <- cbind(Inflation,Change)

# To calculate the percentage change in the index price
Inflation$percent_change<-(Inflation$Change/Inflation$Close)*100

save(Inflation,file="Inflation_p.Rda")