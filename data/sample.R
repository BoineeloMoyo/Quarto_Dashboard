library(ggplot2)
library(ggtext)
install.packages("ggtext")
# Sample Data
total_sunshine <- 2800  # Replace with actual value
prev_sunshine <- 2700  # Previous year's value

# Calculate change
change <- total_sunshine - prev_sunshine
change_pct <- round((change / prev_sunshine) * 100, 1)

# Create a simple text-based card
ggplot() +
  annotate("text", x = 1, y = 1, label = paste0("☀️ ", total_sunshine, " hrs"), size = 8, fontface = "bold") +
  annotate("text", x = 1, y = 0.8, label = paste0(ifelse(change >= 0, "▲", "▼"), " ", abs(change_pct), "%"), 
           size = 5, color = ifelse(change >= 0, "green", "red")) +
  theme_void()


#182b33 , #345e67, #538586, #76a4a3 , #9ed8d3

# Install and load the required library
install.packages("htmltools")
library(plotly)

# Create a simple gauge chart
gauge_chart <- plot_ly(
  type = "indicator",
  mode = "gauge+number",
  value = 70,  # Value to show on the gauge
  title = list(text = "Performance Gauge"),
  gauge = list(
    axis = list(range = c(0, 100)),  # Range of the gauge
    steps = list(
      list(range = c(0, 50), color = "lightgray"),
      list(range = c(50, 75), color = "yellow"),
      list(range = c(75, 100), color = "green")
    ),
    threshold = list(
      line = list(color = "red", width = 4),
      value = 85
    )
  )
)

# Display the gauge chart
gauge_chart

# Install and load the required library
install.packages("plotly")
library(plotly)

# Define the custom color palette
colors <- c("#182b33", "#345e67", "#538586", "#76a4a3", "#9ed8d3")

# Create the gauge chart for total hours of sunshine
gauge_chart <- plot_ly(
  type = "indicator",
  mode = "gauge+number",
  value = 3436,  # Value to show on the gauge
  title = list(text = "Total Hours of Sunshine"),
  gauge = list(
    axis = list(range = c(840, 3800)),  # Range of the gauge (min: 840, max: 3800)
    steps = list(
      list(range = c(840, 1520), color = colors[1]),
      list(range = c(1520, 2200), color = colors[2]),
      list(range = c(2200, 2880), color = colors[3]),
      list(range = c(2880, 3560), color = colors[4]),
      list(range = c(3560, 3800), color = colors[5])
    ),
    threshold = list(
      line = list(color = "red", width = 4),
      value = 3436  # You can adjust this value if needed
    )
  )
)

# Display the gauge chart
gauge_chart

# Install and load the required library
install.packages("plotly")
library(plotly)

# Define the custom color palette
base_color <- "#345e67"  # Color for all ranges
threshold_color <- "#9ed8d3"
title_color <- "#182b33"  # Title color
value_color <- "#538586"  # Value color

# Create the interactive gauge chart for total hours of sunshine
gauge_chart <- plot_ly(
  type = "indicator",
  mode = "gauge+number+delta",
  value = 3436,  # Value to show on the gauge
  title = list(text = " BW Total Hours of Sunshine"),
  gauge = list(
    axis = list(range = c(840, 4000)),  # Range of the gauge (min: 840, max: 3800)
    steps = list(
      list(range = c(840, 4000), color = base_color)  # All ranges will have the same color
    ),
    threshold = list(
      line = list(color = threshold_color, width = 4),  # Custom threshold line color
      fillcolor = "#182b33",  # Change the inside color of the threshold
      value = 3436  # Current value for the threshold
    )
  )
)

# Display the interactive gauge chart
gauge_chart



# Install and load the required library
install.packages("plotly")
library(plotly)

# Define the custom color palette
base_color <- "#345e67"  # Color for all ranges
threshold_color <- "#9ed8d3"
title_color <- "#182b33"  # Title color
value_color <- "#538586" 

# Create the interactive gauge chart for total hours of sunshine
gauge_chart <- plot_ly(
  type = "indicator",
  mode = "gauge+number+delta",
  value = 3436,  # Value to show on the gauge
  title = list(
    text = "Total Hours of Sunshine",
    font = list(size = 34, color = title_color, family = "Arial", bold = TRUE)  # Bold, color, and font size for title
  ),
  gauge = list(
    axis = list(range = c(840, 3800)),  # Range of the gauge (min: 840, max: 3800)
    steps = list(
      list(range = c(840, 3800), color = base_color)  # All ranges will have the same color
    ),
    threshold = list(
      line = list(color = threshold_color, width = 4),  # Custom threshold line color
      fillcolor = "#d1e1e4",  # New color for the inside of the threshold
      value = 3436  # Current value for the threshold
    )
  )
)

gauge_chart
