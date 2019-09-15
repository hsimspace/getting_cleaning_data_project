
# Setting working directory
# "~\coursera_gettingdata\\chapter1"

# Downloading .csv data:
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "data_ch1\\camera.csv")
list.files("data_ch1")
dateDownloaded <- date()

# Adding the downloading data to a variable so that 
# we can manipulate the data
cameraData <- read.table("data_ch1\\camera.csv", sep = ",", header = TRUE)

## Checking the variable just created
head(cameraData)


# Downloading .xlsx data:
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile="data_ch1\\camera.xlsx", mode="wb")

# It is very important to include the mode "wb" otherwise you will n
# not be able to open the file. 
cameraData <- read.xlsx("data_ch1\\camera.xlsx", sheetIndex=1, header=TRUE)
head(cameraData)

## Reading specific subsheet
colIndex <- 2:3
rowIndex <- 1:4
cameraDataSubset <- read.xlsx("data_ch1\\camera.xlsx",sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)

## Downloading .xml data:
library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)

## Accessing rootNode elements 
rootNode[[1]]

rootNode[[1]][[1]] 

# Extracting parts of the xml file
xmlSApply(rootNode, xmlValue)

# We need to learn 'xpath' which is a programming language
xmlSApply(rootNode, "//price", xmlValue)


## A more complicated example using the Baltimore Ravens website
fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeparse(fileUrl, useInternal=TRUE)
scores1 <- xpathSApply(doc, "//div[@class='score']", xmlValue)









































































