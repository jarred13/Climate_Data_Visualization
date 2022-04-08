#Historic CO2 Exploratory Data Analysis

# downloading libraries
library(tidyverse)
library(dslabs)
library(ggplot2)
library(ggthemes)
library(scales)

#downloading the data
data("historic_co2")
data("temp_carbon")
data("greenhouse_gases")

#Temperatures   

#looking at the data
dim(temp_carbon)
head(temp_carbon)
tail(temp_carbon)
summary(temp_carbon)
str(temp_carbon)

#plot of temperatures anomaly 1880-2018
temp_carbon %>% filter(year >= 1880) %>%
  ggplot(aes(year,temp_anomaly)) +
  geom_line() +
  geom_smooth() +
  xlab("Year") +
  ylab("Celsius") +
  ggtitle("Temperture Anomaly 1880 - 2018") +
  theme_economist()
  
#plot of land temperatures 1880-2018
temp_carbon %>% filter(year >= 1880) %>%
  ggplot(aes(year,land_anomaly)) +
  geom_line() +
  geom_smooth() +
  xlab("Year") +
  ylab("Celsius") +
  ggtitle("Land Temperture Anomaly 1880 - 2018") +
  theme_economist()

#plot of ocean temperatures 1880-2018
temp_carbon %>% filter(year >= 1880) %>%
  ggplot(aes(year,ocean_anomaly)) +
  geom_line() +
  geom_smooth() +
  xlab("Year") +
  ylab("Celsius") +
  ggtitle("Ocean Temperture Anomaly 1880 - 2018") +
  theme_economist()

#Observed Carbon

#looking at the data
dim(historic_co2)
head(historic_co2)
tail(historic_co2)
summary(historic_co2)
str(historic_co2)

#plot of historical CO2 in the atmosphere
historic_co2 %>% ggplot(aes(year,co2)) +
  geom_line() +
  geom_smooth() +
  scale_x_continuous(labels = label_comma()) +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 in the Atmosphere") +
  theme_economist()

#plot of historical CO2 up to 1880
historic_co2 %>% filter(year <= 1880) %>%
  ggplot(aes(year,co2)) +
  geom_line() +
  geom_smooth() +
  scale_x_continuous(labels = label_comma()) +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 up to 1880") +
  theme_economist()

#plot of 1880-2018
historic_co2 %>% filter(year >= 1880) %>%
  ggplot(aes(year,co2)) +
  geom_line() +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 from 1880 to 2018") +
  theme_economist()

#plot of 1918-2018
historic_co2 %>% filter(year >= 1918) %>%
  ggplot(aes(year,co2)) +
  geom_line() +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 from 1918 to 2018") +
  theme_economist()

#plot of 1980-2018
historic_co2 %>% filter(year >= 1980) %>%
  ggplot(aes(year,co2)) +
  geom_line() +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 from 1980 to 2018") +
  theme_economist()

#plot of 2000-2018
historic_co2 %>% filter(year >= 2000) %>%
  ggplot(aes(year,co2)) +
  geom_line() +
  ylab("Co2 parts per million") +
  ggtitle("Historical CO2 from 2000 to 2018") +
  theme_economist()

#Carbon Admissions

#plot of carbon emissions per year
temp_carbon %>% ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 1751 to 2014") +
  theme_economist()

temp_carbon %>% filter(year <= 1875) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 1751 to 1875") +
  theme_economist()

temp_carbon %>% filter(year >= 1875) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 1875 to 2014") +
  theme_economist()

temp_carbon %>% filter(year >= 1914) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 1914 to 2014") +
  theme_economist()

temp_carbon %>% filter(year >= 1980) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 1980 to 2014") +
  theme_economist()

temp_carbon %>% filter(year >= 2000) %>%
  ggplot(aes(year,carbon_emissions)) +
  geom_line() +
  ylab("Co2 Emissions") +
  ggtitle("Co2 Emissions from 2000 to 2014") +
  theme_economist()

#Greenhouse Gases

#looking at the data
dim(greenhouse_gases)
head(greenhouse_gases)
tail(greenhouse_gases)
summary(greenhouse_gases)
str(greenhouse_gases)

#plot of greenhouse gases over the years
greenhouse_gases %>% ggplot(aes(year, concentration)) +
  geom_line(aes(colour = gas)) +
  ylab("Parts Per Million") +
  ggtitle("Greenhouse Gases in Atmosphere 20AD to 2000") +
  theme_economist()

greenhouse_gases %>% filter(year <= 1800) %>%
  ggplot(aes(year, concentration)) +
  geom_line(aes(colour = gas)) +
  ylab("Parts Per Million") +
  ggtitle("Greenhouse Gases in Atmosphere 20AD to 1800") +
  theme_economist()

greenhouse_gases %>% filter(year >= 1800) %>%
  ggplot(aes(year, concentration)) +
  geom_line(aes(colour = gas)) +
  ylab("Parts Per Million") +
  ggtitle("Greenhouse Gases in Atmosphere 1800 to 2000") +
  theme_economist()

