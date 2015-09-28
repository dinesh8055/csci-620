# Preprocssing
# Reading the input
Cac <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Cac$Date <- as.Date(Cac$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Cac$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Cac <- Cac[-dim(Cac)[1],]
Cac <- cbind(Cac,Change)

# To calculate the percentage cCace in the index price
Cac$percent_change<-(Cac$Change/Cac$Close)*100

save(Cac,file="Cac_p.Rda")

