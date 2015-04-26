#Loading R packages
#library(plyr) 
#library(reshape2)
#library(ggplot2)

#Code for Question 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == ???24510???) from 1999 to 2008?
plot_2 <- subset(NEI_SCC, fips == "24510", c("Emissions", "Year","type"))
plot_2 <- aggregate(Emissions ~ Year, plot_2, sum)
plot(plot_2$Year,plot_2$Emissions, main="Total Baltimore PM2.5 Emissions", "b", xlab="Year", ylab="Emissions (thousand tons)",xaxt="n")
axis(side=1, at=c("1999", "2002", "2005", "2008"))