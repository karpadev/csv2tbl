rm(list = ls())
library(RMySQL)

createTable<-function(fileName, tableName, dbName, userName, password, hostName){

  df<-read.csv(fileName, header=TRUE)

  #drop row names

  tryCatch({

    conn<-dbConnect(MySQL(), user=userName,
                    password=password,
                    dbname=dbName,
                    host=hostName)


    dbWriteTable(conn, tableName, df, row.names=FALSE, overwrite=TRUE)

  },
     warning = function(w) {
      print(w)
  },

  error = function(e) {
    print(e)
  },

  finally = {
    on.exit(dbDisconnect(conn), add=TRUE)
  }

  )
}

#-------------------------------------------------------------------------------------#


appendTable<-function(fileName, tableName, dbName, userName, password, hostName){

  df<-read.csv(fileName, header=TRUE)

  tryCatch({

    conn<-dbConnect(MySQL(), user=userName,
                    password=password,
                    dbname=dbName,
                    host=hostName)

    table<-dbReadTable(conn, tableName)

    newTable<-rbind(df, table)

    # remove duplicates - keep the latest
    dup<-which(duplicated(newTable))
    newTable<-newTable[-dup,]
    dbWriteTable(conn, value = df, name = tableName, overwrite = TRUE, row.names=FALSE)

  },
  warning = function(w) {
    print(w)
  },

  error = function(e) {
    print(e)
  },

  finally = {
    on.exit(dbDisconnect(conn), add=TRUE)
  }

  )
}

#-------------------------------------------------------------------------------------#

