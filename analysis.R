# Load libraries
library(baseballr)
library(dplyr)
library(ggplot2)

# -------------------------------
# STEP 1: Pull real Statcast data
# -------------------------------
# Example: Dodgers vs Yankees (June 7, 2024 — Yamamoto start)
data <- statcast_search(start_date = "2024-06-07", end_date = "2024-06-07")

# -------------------------------
# STEP 2: Filter for Yamamoto
# -------------------------------
yamamoto_data <- data %>%
  filter(player_name == "Yamamoto, Yoshinobu")

# Check if data exists
if (nrow(yamamoto_data) == 0) {
  stop("No data found for Yamamoto on this date.")
}

# -------------------------------
# STEP 3: Plot pitch movement
# -------------------------------
movement_plot <- ggplot(yamamoto_data, 
                        aes(x = pfx_x, y = pfx_z, color = pitch_type)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Yoshinobu Yamamoto Pitch Movement (June 7, 2024)",
    x = "Horizontal Break (feet)",
    y = "Vertical Break (feet)",
    color = "Pitch Type"
  ) +
  theme_minimal()

# -------------------------------
# STEP 4: Show plot
# -------------------------------
print(movement_plot)
