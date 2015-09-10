library(xlsx)
setwd("../Desktop")

url<-"http://www.apra.gov.au/adi/Publications/Documents/MBS-July-2015-BackSeries.xls"
file<-"MBS-July-2015-BackSeries.xls"

download.file(url,destfile=file,mode="wb")
dat<-readWorksheetFromFile(file,sheet=4,startRow=2)
dat<-dat[,-ncol(dat)]
# file.remove(file)

url<-"http://www.apra.gov.au/adi/Publications/Documents/MBS-July-2015-BackSeries.xls"
file<-"MBS-July-2015-BackSeries.xls"

download.file(url,destfile=file,mode="wb")
dat<-readWorksheetFromFile(file,sheet=4,startRow=2)
dat<-dat[,-ncol(dat)]
