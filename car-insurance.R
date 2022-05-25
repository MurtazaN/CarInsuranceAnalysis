
#Read car insurance data
my_data = read.csv("car-insurance.csv")
insurance = read.csv("car-insurance.csv")

#installing packages and loading with library
install.packages("ggplot2",dependencies=TRUE)
library(ggplot2)

install.packages("tidyverse")
library(tidyverse)


#display data
my_data

#display data structure
?my_data
str(my_data)

#Histogram - bar graph for ageg
ggplot(data = insurance) + 
  geom_bar(mapping = aes(x = ageg, fill = ""))

#Histogram - bar graph for region
ggplot(data = insurance) + 
  geom_bar(mapping = aes(x = region, fill = ""))

#Histogram - bar graph for type of insurance
ggplot(data = insurance) + 
  geom_bar(mapping = aes(x = type, fill = ""))

#Histogram - bar graph for insurance type over gender
ggplot(data = insurance) + 
  geom_bar(mapping = aes(x = gender, fill = type))

#Histogram - bar graph for insurance region over age group
ggplot(data = insurance) +
  geom_bar(mapping = aes(x = ageg, fill = region))

#HIstogram - gender over age group
ggplot(data = insurance) +
  geom_bar(mapping = aes(x = ageg, fill = gender))

#HIstogram - type over vehicle age group
ggplot(data = insurance) +
  geom_bar(mapping = aes(x = vage, fill = type))

#HIstogram - gender over vehicle age group
ggplot(data = insurance) +
  geom_bar(mapping = aes(x = vage, fill = gender))

#boxplot - cost and no. of claims
ggplot(data = insurance, mapping = aes(x = ageg, y = age)) + #ask about this
  geom_boxplot()

#boxplot - age
ggplot(data = insurance, mapping = aes(x = age)) + #ask about this
  geom_boxplot()

#boxplot - no. of claims
ggplot(data = insurance, mapping = aes(y = num)) + #ask about this
  geom_boxplot()

#boxplot - age over age group
boxplot(insurance$age ~ insurance$ageg)

boxplot(insurance$cost)

#describes cost in terms of age and store in cost.lm
cost.lm = lm(cost ~ num, data = insurance)
#simple linear regression
cost.res = resid(cost.lm)
plot(insurance$num, cost.res) #ask about this
  abline(0,0)

#Piechart- template
ggplot(data, aes(x="", y=value, fill=group)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

#Piechart - regions
ggplot(insurance, aes(x="", y=1, fill=region)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

#Piechart - age group
ggplot(insurance, aes(x="", y=1, fill=ageg)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

#Piechart - type of insurance
ggplot(insurance, aes(x="", y=1, fill=type)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)










