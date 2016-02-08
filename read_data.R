url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
zipFile <- 'household_power_consumption.zip'
destFile <- 'household_power_consumption.txt'

if (!file.exists(destFile)) {
  
  if (!file.exists(zipFile))
    download.file(url, zipFile)   
  
  unzip(zipfile = zipFile)
  
}

library(sqldf)

classes <- c("character", "character", replicate(7, "numeric"))

d <- read.csv.sql(destFile, sql="select * from file where Date in ('1/2/2007', '2/2/2007')",
                  header = TRUE,
                  sep=";",
                  colClasses = classes)

d$DateTime <- strptime(paste(d$Date, d$Time, sep=" "), format="%d/%m/%Y %H:%M:%S") 
