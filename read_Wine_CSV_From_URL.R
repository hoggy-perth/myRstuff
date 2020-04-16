theURL <- "http://jaredlander.com/data/wine.csv"
#good practice to specify parameter names
wine <- read.table(file = theURL, header = TRUE, sep = ",", stringsAsFactors = F)
