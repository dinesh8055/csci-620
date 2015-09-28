
# Reading the input
Nikkei <- read.csv(file.choose())

# To maintain consistency, all the date fields are  transformed to the same format
nikkei$Date <- gsub("/","-",nikkei$Date)
nikkei$Date <- as.Date(nikkei$Date,format="%m-%d-%Y")

# Find the difference between consecutive observations and store it in a variable
Change<-diff(nikkei$Close,differences=1)

#To offset the rows due to the diff operation, We remove the last row from the dataset
nikkei <- nikkei[-dim(nikkei)[1],]
nikkei <- cbind(nikkei,Change)

# To calculate the percentage change in the index price
nikkei$percent_change<-(nikkei$Change/nikkei$Close)*100

save(nikkei,file="nikkei_p.Rda")