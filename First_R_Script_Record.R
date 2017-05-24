
library(dplyr)
#library(stringr)
#library(lubridate)

getwd()
setwd("H:/R_Folder/R_Scripts/Mitchell-R-Work")

# list.files()

# I just saved my first script in Git...this is awesome!!!



#install.packages("ICC")
library(ICC)

#install.packages("irr")
library(irr)
# Install irr for its 'anxiety' data...and check what other data if interested. 
{
  data(package = .packages(all.available = TRUE))
  
  data()
  
  dat <- as.data.frame(data(package = .packages(all.available = TRUE))$results)
  dat[dat$Item=="anxiety", c(1,3,4)]
}

data(anxiety)
icc(anxiety, model="twoway", type="agreement")

r1 <- round(rnorm(20, 10, 4))
r2 <- round(r1 + 10 + rnorm(20, 0, 2))
r3 <- round(r1 + 20 + rnorm(20, 0, 2))
icc(cbind(r1, r2, r3), "twoway")              # High consistency
icc(cbind(r1, r2, r3), "twoway", "agreement") # Low agreement


# This (below) is going to be very important for this project. 
test2 <- data_frame(ICC_Data = icc(cbind(r1, r2, r3), "twoway"))

# Something different to save...I don't see how this working!!!
