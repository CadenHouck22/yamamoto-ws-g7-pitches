library(dplyr)
library(ggplot2)

# Load downloaded CSV
data <- read.csv("C:/Users/caden/Downloads/yamamoto_data.csv")

# Quick check
print(colnames(data))

# Plot pitch movement
ggplot(data, aes(x = pfx_x, y = pfx_z, color = pitch_type)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Yoshinobu Yamamoto Pitch Movement (2024)",
    x = "Horizontal Break (feet)",
    y = "Vertical Break (feet)",
    color = "Pitch Type"
  ) +
  theme_minimal()
