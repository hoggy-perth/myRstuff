# store the current directory
initial.dir<-getwd()
# change to the new directory
setwd("C:/Users/Dave/OneDrive/Development/R/rprog_data_quiz1_data")
#read the file
f<-read.table("hw1_data.csv",sep=",",header=TRUE)
#print the file to the console
f
#check the file
class(f)
names(f)
str(f)
#set the directory back
setwd(initial.dir)
getwd()
