library(ggplot2)
library(dplyr)
data <- read.csv("C:/Users/jijip/Downloads/1310076801_databaseLoadingData (1).csv")
summary_data <- data %>%
group_by(`Age.at.time.of.death`) %>%
summarize(TotalDeaths = sum(VALUE))
print(summary_data)
              pie_chart <- ggplot(summary_data, aes(x = "", y = TotalDeaths, fill =                                 
              `Age.at.time.of.death`)) +
geom_bar(stat = "identity", width = 1) +
coord_polar("y", start = 0) +
theme_void() +
labs(title = "Distribution of Deaths by Age Group")
print(pie_chart)
