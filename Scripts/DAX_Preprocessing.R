# Preprocssing
-------------------------
# Reading the input
Dax <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Dax$Date <- as.Date(Dax$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Dax$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Dax <- Dax[-dim(Dax)[1],]
Dax <- cbind(Dax,Change)

# To calculate the percentage change in the index price
Dax$percent_change<-(Dax$Change/Dax$Close)*100

save(DAX,file="DAX_p.Rda")