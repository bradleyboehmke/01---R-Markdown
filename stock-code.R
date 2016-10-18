# Packages used - run the next two lines of code if you do not have these
# packages installed on your computer
# pkgs <- c("xts", "quantmod")
# install.packages(pkgs)
library(xts)
library(quantmod)

# load data
prices <- getSymbols("AMZN", auto.assign = FALSE)

# get the most recent opening & closing prices
move <- Cl(last(prices)) - Op(last(prices))

# determine if you buy or sell
ifelse(move > 0, "BUY", "SELL")

# plot historical stock prices
chartSeries(prices, theme = chartTheme("white", bg.col = "white"))

# show stock info for last 7 days
tail(prices, 7)[, 1:5]

