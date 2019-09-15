
mydf <- read.csv(path2csv, stringAsFactors = FALSE)

dim(mydf)

head(mydf)

packageVersion("dplyr")

select(cran, ip_id, package, country)

select(cran, r_arch:country)

## Using the previous code in reverse order
select(cran, country:r_arch)

select(cran, -(x:size))

filter(cran, package == "swirl")

filter(cran, r_version == "3.1.1", country == "US")

filter(cran, r_version <= "3.0.2", country == "IN")

filter(cran, country == "US" | country == "IN")

filter(cran, size > 100500, r_os == "linux-gnu")

filter(cran, !is.na(r_version))

cran2 <- select(cran, size:ip_id)

arrange(cran2, ip_id)

arrange(cran2, desc(ip_id))

arrange(cran2, package, ip_id)

arrange(cran2, country, desc(r_version), ip_id)

mutate(cran3, size_mb = size/2^20)

mutate(cran3, size_mb = size/2^20, size_gb = size_mb/2^10)





