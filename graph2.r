# store the current directory
initial.dir<-getwd()
# change to the new directory
setwd("C:/Users/Dave/OneDrive/Development/R/Examples")

counts<-read.table("Haemocyte.txt",header=TRUE)

attach(counts)

par(mfrow=c(1,2))


plot(Weight[Species=="P.brassicae"],
     log(Count[Species=="P.brassicae"]),
     pch=16,
     xlab="Weight (g)",
     ylab="Log Haemocyte count",
     main="P.brassicae",
     font.main=3)

lm(log(Count[Species=="P.brassicae"]) ~ Weight[Species=="P.brassicae"])
abline(4.5752,-0.7648)

points(Weight[Species=="P.napi"],
       log(Count[Species=="P.napi"]),
       pch=16,
       col="darkred")

points(Weight[Species=="P.brassicae"],
       log(Count[Species=="P.brassicae"]),
       pch=17,
       col="darkblue")

legend(0.38,
       5.7,
       legend=c("P.napi","P.brassicae"),
       pch=16:17,
       col=c("darkred","steelblue"),
       cex=0.7,
       text.font=3,
       bty="n")

#set the directory back
setwd(initial.dir)
getwd()
