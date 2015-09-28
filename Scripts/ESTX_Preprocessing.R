
# Reading the input
Estx <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
Estx$Date <- as.Date(Estx$Date)

# Find the difference between consecutive observations and store it in a variable
Change<-diff(Estx$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
Estx <- Estx[-dim(Estx)[1],]
Estx <- cbind(Estx,Change)

# To calculate the percentage change in the index price
Estx$percent_change<-(Estx$Change/Estx$Close)*100

save(Estx,file="Estx_p.Rda")