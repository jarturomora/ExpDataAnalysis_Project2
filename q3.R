#Loading R packages
#library(plyr) 
#library(reshape2)
library(ggplot2)

#Code for Question 3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008?
plot_3 <- subset(NEI_SCC, fips == "24510", c("Emissions", "Year","type"))
plot_3 <- melt(plot_3, id=c("Year", "type"), measure.vars=c("Emissions"))
plot_3 <- dcast(plot_3, Year + type ~ variable, sum)
ggplot(data=plot_3, aes(x=Year, y=Emissions, group=type, color=type)) + geom_line() + geom_point( size=4, shape=21, fill="white") + xlab("Year") + ylab("Emissions (tons)") + ggtitle("Baltimore PM2.5 Emissions by Type and Year")
ggsave(file="plot-q3.png")