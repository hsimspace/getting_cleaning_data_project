
# Reading jpeg pictures and calculate quantiles
Q3_q2url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"

download.file(Q3_q2url, destfile="./data/instructor_photo.jpg", mode="wb")

instructor_photo <- readJPEG("./data/instructor_photo.jpg", native=TRUE)
 
Q3_answer2 <- quantile(instructor_photo, seq(0.3, 0.8, by=.1))

Q3_answer2
