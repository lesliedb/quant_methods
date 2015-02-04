## Dan McGlinn comments:
# Grade = 100%

# In general this looks really good but I also need the output of the functions
# pasted as comments to assess that the code is working on your setup. 
# Also blank rows between lines is helpful to delinate code chunks but in 
# your case it seems a bit liberal and is making it more difficult for me 
# to read your code. 

## Specific Comments
# To read in from https you were correct that you needed the package RCurl
# It just looks like the url got screwy. Try this instead
# dat_url = 'https://raw.githubusercontent.com/dmcglinn/quant_methods/master/data/tgpp.csv'
# dat = read.csv(dat_url)

# dat[0, ] is an unconvential way to get the column names
# instead use either names() or colnames()

# dim() is a single function that returns number of rows and columns

# sapply() rather than apply() is the correct way to access the classes of 
# each column - thanks for catching my stupid error!

# An alternative way to reference specific columns in a data.frame is 
# with the "$" symbol (e.g., dat$richness). 

# Lastly don't let your lines of code get too long use Rstudio's 80 character
# margin as a guide for where to put in a carriage return. See 
# http://adv-r.had.co.nz/Style.html for explanation

##------------------------------

# Import Libraries
library(bitops)
library(RCurl)

# File path
dat_url = 'https://raw.githubusercontent.com/dmcglinn/quant_methods/master/data/tgpp.csv'
# infileHome <- "/Users/David/Desktop/School/EVSS 695-Quantitative Methods/assignments/tgpp.csv"
# Not Working
# infileDropbox <- getURL("https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_dmcglinn_quant-5Fmethods_blob_master_data_tgpp.csv&d=AwIFAg&c=7MSSWy9Bs2yocjNQzurxOQ&r=s_l9A9_5KxIVLVh87-t4NTdMhVpHPbMdJZngIwFxI-4&m=FJ4xiWvJlM15BAp30sGZKCADM8zHOMmonMijw-xXAg0&s=mtU6t1cbnfggYSD3f7vf-psw9GzXvlywypwsGEYYaKo&e= ")

# Read csv
dat = read.csv(dat_url)
# dat <- read.csv(file = infileHome, header = T)
#dat <- read.csv(text = infileDropbox, header = T)

# Get names of columns - plot, year, record_id corner, scale, richness, easting, northing 
dat[0,] 

# Number of rows and columns - 4080, 11
dim(dat)
# numOfRows <- nrow(dat)
# numOfCols <- ncol(dat)

# Type of data in each column - integer, integer, integer, integer, numeric,  integer, integer, integer, integer, numeric, numeric
sapply(dat, class)

# Get values for rows 1, 5, and 8 at columns 3, 7, and 10
# Concatenate - c()
dat[c(1, 5, 8), c(3, 7, 10)]

# Plot data
# Unlabeled
plot(dat[,5], dat[,6])

# Labeled
plot(dat[,5], dat[,6], xlab = 'scale', ylab = 'richness', col = 'blue', pch = 16, frame.plot = F)

# Logged data
plot(dat[,5], dat[,6], xlab = 'scale', ylab = 'richness', col = 'blue', pch = 16, frame.plot = F, log = 'xy')

# Create pdf
pdf('./richness_fig1.pdf')
par(mfrow = c(1,2))
plot(dat[,5], dat[,6], xlab = 'scale', ylab = 'richness', col = 'blue', pch = 16, frame.plot = F)
plot(dat[,5], dat[,6], xlab = 'scale', ylab = 'richness', col = 'blue', pch = 16, frame.plot = F, log = 'xy')
dev.off()










