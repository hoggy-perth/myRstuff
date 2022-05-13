#my list of libraries I use are in the csv below. Get the list, assign to a dataframe and load the libraries
pkgs <- utils:::read.table("data/libraries.csv",header=FALSE,sep=",")
inst = lapply(pkgs, library, character.only = TRUE) # load them
search()