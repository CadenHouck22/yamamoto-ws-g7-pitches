# Fetching Pitch Data for Yoshinobu Yamamoto from World Series Game 7

# Load the necessary libraries
library(baseballr)
library(ggplot2)

# Fetch the pitch data
# Note: Replace with actual function to fetch data from game date 11/1/25
pitch_data <- pitchfx_data(game_id = "WGS7_2025", pitcher = "Yoshinobu Yamamoto")

# Create pitch movement plots
# Plot pitch movement by pitch type
movement_plot <- ggplot(pitch_data, aes(x = horizontal_break, y = vertical_break, color = pitch_type)) + 
  geom_point() + 
  labs(title = "Yoshinobu Yamamoto Pitch Movement", 
       x = "Horizontal Break (inches)", 
       y = "Vertical Break (inches)") + 
  theme_minimal()

# Display the plot
print(movement_plot)