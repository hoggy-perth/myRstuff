#this is a cool little script
if (!file.exists("data")) {
  dir.create("data")
}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv")
dateDownloaded <- date()
cameraData <- read.table("./data/cameras.csv",sep=",",header=TRUE)
head(cameraData)
