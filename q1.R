#Code for Question 1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
plot_1 <- aggregate(Emissions ~ Year, NEI_SCC, sum)
plot(plot_1$Year,plot_1$Emissions, main="Total US PM2.5 Emissions", "b", xlab="Year", ylab="Emissions (thousands of tons)",xaxt="n")
axis(side=1, at=c("1999", "2002", "2005", "2008"))