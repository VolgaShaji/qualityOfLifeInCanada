library(ggplot2)
library(dplyr)
data <- read.csv("C:/Users/jijip/Downloads/4310006401_databaseLoadingData.csv")
# Pivot the data to create a matrix suitable for heatmap
heatmap_data <- data %>%
select(Visible.minority, Selected.sociodemographic.characteristics, Indicators, VALUE) %>%
spread(Indicators, VALUE)
heatmap_plot <- ggplot(heatmap_data, aes(x = Selected.sociodemographic.characteristics, y = Visible.minority)) +
geom_tile(aes(fill = `Strong sense of belonging to the local community`), color = "white") +
scale_fill_viridis_c() +  
theme_minimal() +
labs(title = "Heatmap of Strong Sense of Belonging to the Local Community",
x = "Selected Sociodemographic Characteristics",
y = "Visible Minority Group")
print(heatmap_plot)
