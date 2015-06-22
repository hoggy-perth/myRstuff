if(!file.exists("data")){dir.create("data")}
library(jsonlite)
boardData <- fromJSON("./data/board.json")
head(boardData)