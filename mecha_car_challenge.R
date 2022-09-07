# importing libraries
library(dplyr)

# reading and importing csv
mecha_table <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD, data = mecha_table)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table))
