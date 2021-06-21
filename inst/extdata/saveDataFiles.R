# Converting raw data into package data
library(usethis)
library(data.table)
library(magrittr)

rawDataFolder = "C:/Z/models/exampleRepo/inst/extdata/"

# exampleDataCSV
exampleDataCSV = data.table::fread(paste0(rawDataFolder,"exampleData.csv"),
                                   header=T)%>%
  as.data.frame()
exampleDataCSV

use_data(exampleDataCSV, overwrite=T)

# exampleDataR
exampleDataR = data.frame(sector=c("a","b",'c'),
                          coefficients=c(1,2,3))
exampleDataR
use_data(exampleDataR, overwrite=T)
