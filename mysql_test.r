contest <- dbConnect(MySQL(),user="test1",password="test1", dbname="test",host="172.0.0.1") 
result <- dbGetQuery(contest,"show databases;"); 
result
x <- dbGetQuery(contest,"select * from x;"); dbDisconnect(contest);
x
