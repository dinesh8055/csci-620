# Reading the input
Spasx <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Spasx$Date <- as.Date(Spasx$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Spasx$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Spasx <- Spasx[-dim(Spasx)[1],]
Spasx <- cbind(Spasx,Change)

# To calculate the percentage cSpasxe in the index price
Spasx$percent_change<-(Spasx$Change/Spasx$Close)*100

save(Spasx,file="Spasx_p.Rda")

