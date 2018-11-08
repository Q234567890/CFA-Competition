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


