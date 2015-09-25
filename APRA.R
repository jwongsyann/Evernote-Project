library(XLConnect)
setwd("~/../Desktop/Data")

# APRA Monthly Banking Statistics
url<-"http://www.apra.gov.au/adi/Publications/Documents/MBS-July-2015-BackSeries.xls"
file<-"MBS-July-2015-BackSeries.xls"
download.file(url,destfile=file,mode="wb")
dat<-readWorksheetFromFile(file,sheet=4,startRow=2)
dat<-dat[,-ncol(dat)]
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="backseries.csv",row.names=FALSE)
file.remove(file)

# APRA Monthly Banking Statistics
url<-"http://www.apra.gov.au/adi/Publications/Documents/1505-QAPES-June-2015.xlsx"
file<-"QAPES.xls"
download.file(url,destfile=file,mode="wb")

dat<-readWorksheetFromFile(file,sheet=6,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="allADICommercialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=7,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="allADIResidentialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=8,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="allADINewHousingLoanApprovals.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=9,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="BanksCommercialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=10,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="BanksResidentialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=11,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="BanksNewHousingLoanApprovals.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=18,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="MajorBanksCommercialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=19,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="MajorBanksResidentialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=20,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="MajorBanksNewHousingLoanApprovals.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=21,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="OtherDomesticBanksCommercialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=22,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="OtherDomesticBanksResidentialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=23,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="OtherDomesticBanksNewHousingLoanApprovals.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=24,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="ForeignSubsidiariesBankCommercialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=25,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="ForeignSubsidiariesBankResidentialPropertyExposures.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=26,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="ForeignSubsidiariesBankNewHousingLoanApprovals.csv",row.names=FALSE)

dat<-readWorksheetFromFile(file,sheet=27,startRow=4)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="ForeignBranchBankCommercialPropertyExposures.csv",row.names=FALSE)

file.remove(file)

# BIS
bis<-"https://www.bis.org/statistics/totcredit/totcredit.xlsx"
file<-"totcredit.xlsx"
download.file(bis,destfile=file,mode="wb")
dat<-readWorksheetFromFile(file,sheet=3,startRow=3)
names(dat)<-gsub("\\.","",names(dat))
write.csv(dat,file="totcredit.csv",row.names=FALSE)
file.remove(file)
