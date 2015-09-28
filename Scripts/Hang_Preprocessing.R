# Reading the input
Hang <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Hang$Date <- as.Date(Hang$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(nikkei$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Hang <- Hang[-dim(Hang)[1],]
Hang <- cbind(Hang,Change)

# To calculate the percentage change in the index price
Hang$percent_change<-(Hang$Change/Hang$Close)*100

save(Hang,file="Hang_new.Rda")

