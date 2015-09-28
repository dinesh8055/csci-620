# Preprocssing

# Reading the input
Enxt <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Enxt$Date <- as.Date(Enxt$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Enxt$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Enxt <- Enxt[-dim(Enxt)[1],]
Enxt <- cbind(Enxt,Change)

# To calculate the percentage change in the index price
Enxt$percent_change<-(Enxt$Change/Enxt$Close)*100

save(Enxt,file="Enxt_p.Rda")