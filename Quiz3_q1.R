
## Downloading files for the problem 
Q3_1url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

download.file(Q3_1url, destfile="./data/idaho_housing.csv")

idaho_housing <- read.csv("./data/idaho_housing.csv")

## Query
agricultureLogical <- which(idaho_housing$ACR == 3 & idaho_housing$AGS == 6)

agricultureLogical