
# Read in the csv files 
gdp_file <- read.csv(text=readLines("./data/gdp_file.csv")[-(1:5)], header=FALSE)

head(gdp_file)

empty_CCode <- gdp_file[, 1] != ""

# Clean up the file
gdp_file <- gdp_file[empty_CCode, ]

# Delete empty columns
gdp_file <- gdp_file[, -c(3, 6:10)]

# Naming the columns
colnames(gdp_file) <- c("CountryCode", "Ranking", "Economy", "GDP")

# Read in the csv file
ed_file <- read.csv("./data/ed_file.csv")

# Merging both variables 
merged_data <- merge(gdp_file, ed_file, by=c("CountryCode"))

# Set the GDP column to numeric
merged_data[,4] <- as.numeric(gsub(",", "", merged_data[, 4]))


