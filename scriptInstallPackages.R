# script to download essential files
#saved from ubuntu on github Saturday 7:05
#https://plus.google.com/u/0/+karimmezhoud_tn/posts/G9JLRnuwwem?cfem=1

install.packages("glmmet")
#ERROR: dependencies ‘GSEABase’, ‘GSEAlm’, ‘geNetClassifier’, ‘Biobase’, ‘phenoTest’ are not available for package ‘canceR’
#* removing ‘/home/robert/R/x86_64-pc-linux-gnu-library/3.2/canceR’
#Error: Command failed (1)
# try to use CHAMELEON for clustering.. very robust and high qualith
install.packages("rio")
install.packages("RCurl") ########## not working
install.packages("readr") ############# not working
install.packages("RMySQL")  ############### nt working
#library(xkcd)
install.packages("zoo")
install.packages("xlsx")
install.packages("choroplethr")
install.packages("metricsgraphics") # not working check GitHub hrbrmstr/metricsgraphics
install.packages("rvest")
install.packages("leafletR")
install.packages("leaflet")
install.packages("RColorBrewer")
install.packages("rga")
install.packages("fitbitScrapper")
install.packages("XML")
install.packages("RColorBrewer")
install.packages("sqldf")
install.packages("lubridate")
install.packages("readxl")
install.packages("readr")
install.packages("rvest")
install.packages("dplyr")
install.packages("plyr")
install.packages("reshape2")
install.packages("stringr")
install.packages("ggplot2")
install.packages("quantmod")
install.packages("googlesheets") # not working
install.packages("jsonlite")
install.packages("dygraphs")
install.packages("listviewer") # check GitHub timelyportfolio/listviewer
install.packages("googleVis")
install.packages("tmap")
install.packages("data.table")
install.packages("plotly") # not working
install.packages("DT") # GitHub rstudio/DT
install.packages("leaflet")
install.packages("shiny")
install.packages("editR")
install.packages("psych")
install.packages("knitr")

#vignette("xkcd-intro")for hand drawn chart look

install.packages("ellipse")
install.packages("corrplot")
install.packages("caretEnsemble")
install.packages("Epi")
install.packages("caTools")
install.packages(c("mlbench","pROC")) # for caretEnsemble
install.packages("extrafont")
install.packages("xkcd")
install.packages("mlr")
install.packages("gamlss")
install.packages("StreamMetabolism") # sunrise and sunset
#install.packages("sunrise.set")
install.packages("MCMCpack")
install.packages("ISLR")
install.packages("robust")
install.packages("useful")
install.packages("GISTools")
install.packages("classInt")
install.packages("SQDA")
install.packages("RQDA")
install.packages("gamlss.dist")
library(gamlss)
gamlss(gamlss.demo)
gamlss(demo)
install.packages("GGally")
install.packages("rgeos")
install.packages("apcluster")
install.packages("Rbbg")
install.packages("ctv")

install.packages("rgdal")
library(ctv)
install.views("Spatial")
install.packages("ggthemes")
#ls('package:GGally')
install.packages("curl")
install.packages("RCurl")

install.packages("XML")
install.packages("raster")
install.packages("jsonlite") #vailable??
install.packages("timeDate")
install.packages("Zelig")
install.packages("MCMCpack")#, "coda")
install.packages("forecast")
install.packages("igraph)")
install.packages("lattice")
install.packages(c("car", "mgcv","lme4", "nime", "multcomp", "vcd", "glmnet", 
                   "survival", "caret", "shiny", "knitr", "xtable", "slidify",
                   "sp", "maptools", "maps", "ggmap", "zoo", "ggplot2", "rgl",
                   "googleVis", "stringr", "lubridate", "plyr", "reshape2",
                   "reshape", "xts", "quantmod", "Rcpp", "XML", "jsonlite",
                   "httr", "devtools", "roxygen2", "sjPlot"))
install.packages(c("RODBC", "RMySQL", "RPostgresSQL","RSQLite"))
install.packages("arima.sim")
install.packages("struccharge")  # to test for constant parameters mean, sd, corr, cov
#  can also use rolling estimates using zoo package and rollapply function
install.packages("boot")
install.packages("foreign")
install.packages("xlsx")
install.packages("dplyr")
install.packages("reshape2")
install.packages("GGally")
install.packages("vcd")

install.packages(c("acf","tseries","PerformanceAnalytics","zoo","rgdal", "gstat", "gridSVG"))
install.packages(c("labeling","mvtnorm","visualizationTools","dplyr","quadprog","classInt"))

installed.packages("git2r")

install.packages("devtools") # problems.. does not install.
library(devtools)
devtools::install_github("hrbrmstr/metricsgraphics")
install.packages("dygraphs") # http://rstudio.github.io/dygraphs/index.html

install.packages("rJava")
install_github("kmezhoud/canceR") # nice circular plots
devtools::install_github("timelyportfolio/listviewer")
install.packages("Rsitecatalyst") # GitHub randyzwitch/RSiteCatalyst
devtools::install_github("randyzwitch/RsiteCatalyst")







install_github("gforge/Grmd")
install_github("ropensci/plotly")
install_github("broom", "dgrtwo")  # for tidy, glance and augment functions
#to use tidy(lmfit) on lmfit = lm(mpg ~ wt, mtcars)
install.packages("rattle", repos="http://rattle.togaware.com", type="source")  #see notes 
install.packages("wsrf", repos="http://rattle.togaware.com", type="source")
install.packages("wsrpart", repos="http://rattle.togaware.com", type="source")
install.packages("wskm", repos="http://rattle.togaware.com", type="source")
install.packages("RGtk2")
install.packages(c("xts", "hexbin", "rattle", "swirl"))
install.packages(c("tm","Hmisc","caroline","textcat"))
install.packages("qdap")  # Installed lots of text procesing packages and help.
# qdap not installed
install.packages(c("BH", "caret", "mtvnorm", "TH.data"))
install.packages(c("textir","tau","RTextTools","rgeos"))
install.packages("foreign")
install.packages("RgoogleMaps")
install.packages("mapproj")
library(swirl)
swirl()
library(mvtnorm)

# pmvnorm(lower=c(-1))
install.packages("fortunes")
library("fortunes")
fortune()
devtools::install_github( "timelyportfolio/DiagrammeR@feature/vivagraphjs" )
install.packages("pipeR")
devtools::install_github("rstudio/leaflet")