library(here)
library(ggplot2)


here
(list = ls())

scriptdir <- here()

rootdir <- scriptdir
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"RExam.dat")
exams <- read.delim(dataFile,header=TRUE)
