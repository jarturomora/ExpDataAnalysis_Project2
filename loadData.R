#Loading R packages
library(plyr) 
library(reshape2)
library(ggplot2)

#Load data from path "../Data/c4Data"
dataPath <- "../Data/c4Data/"
NEI <- readRDS(paste(dataPath, "summarySCC_PM25.rds", sep="")) 
SCC <- readRDS(paste(dataPath, "Source_Classification_Code.rds", sep=""))
df <- subset(SCC, select = c("SCC", "Short.Name"))
NEI_SCC <- merge(NEI, df, by.x="SCC", by.y="SCC", all=TRUE)
NEI_SCC$Emissions <- NEI_SCC$Emissions/1000
NEI_SCC <- rename(NEI_SCC, c("year"="Year"))