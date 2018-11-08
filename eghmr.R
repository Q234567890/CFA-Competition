

#old########################
oper <- read.csv("CTSH_OPER_MARGIN.csv")
View(oper)

prof <- read.csv("CTSH_PROF_MARGIN.csv")
View(prof)

oper[c(3,5,7,9,11)] <- NULL
prof[c(3,5,7,9,11)] <- NULL
View(prof)

install.packages("quantmod")
library("quantmod")
getSymbols("CTSH", from = "2008-03-31", to = "2018-09-18")
ctsh.AD <- CTSH$CTSH.Adjusted
plot(ctsh.AD)
retCTSH <- diff(log(ctsh.AD))

install.packages("xts")
library("xts")
install.packages("zoo")

library("zoo")
operDates <- as.Date(oper$X, format = "%m/%d/%y")

operDates
operCTSH <- cbind(operDates, oper$CTSH)
colnames(operCTSH) <- c("Dates", "CTSH")
View(operCTSH)

xts



#new####################
install.packages("Rblpapi")
library("Rblpapi")

blpConnect(host = getOption("blpHost", "localhost"),
           port = getOption("blpPort", 8194L), default = TRUE)

blpConnect()

opt <- c('PeriodicitySelection' = 'Quarterly')

overrd <- c("START_DT" = "2011", "END_DT = 20181107")

#Equity - Profit_Margin#################
prof.ctsh <- bds("CTSH US Equity", "PROF_MARGIN")
View(prof.ctsh)

prof.hclt <-bdh("HCLT IN Equity", c("PROF_MARGIN"), start.date = as.Date('2018-01-01'),)
View(prof.hclt)




plot(prof.ctsh, type = "line")


oper.ctsh <- bdh("CTSH US Equity", c("OPER_MARGIN"), start.date=Sys.Date()-30000)
View(oper.ctsh)
s <- oper.ctsh - prof.ctsh

install.packages("quantmod")










