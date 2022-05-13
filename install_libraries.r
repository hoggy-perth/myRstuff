pkgs <- read.table("data/libraries.csv",header=FALSE,sep=",")
install.packages(pkgs)
