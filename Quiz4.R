
# Question1
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

download.file(fileUrl, destfile="./data/quiz4q1.csv")

idaho_housing <- read.csv("./data/quiz4q1.csv")

names(idaho_housing)

strsplit(names(idaho_housing), "wgtp")

## Question 2
## Download the data, clean it up, then save the gdp column in variable "test"

test1 <- as.numeric(gsub(",", "", test))

mean(test1)

# Question 3
# Clean the data frist
grep("^United",countryNames)

## Question 4
edgdpData <- merge(gdpData, edData, by.x="CountryCode", by.y="CountryCode")
grep("^Fiscal year end: June",edgdpData$Special.Notes)

## Question 5
## Getting historical prices of stocks traded on the NASDAQ
test <- index(amzn) 
## returns all the dates
amznDates <- as.Date(amznDates)

amznDates <- format(amznDates, "%a %b %d")

answer <- grep("^Mon", amznDates)

