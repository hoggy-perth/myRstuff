library("RODBC")
#create a DSN first - so much easier
con <- odbcConnect("WideWorldImporters")
countries <- sqlQuery(con, "SELECT * FROM Application.Countries;")
