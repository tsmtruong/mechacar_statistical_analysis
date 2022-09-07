# importing libraries
library(dplyr)

# reading and importing csv
mecha_table <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD, data = mecha_table)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_table))


########## Deliverable 2 ###############

# reading and importing suspension coil table
suspension_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# total summary dataframe
total_summary <- suspension_table %>%  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#statistical summary with group_by
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')

############ Deliverable 3 ##############
# t-test for all manufacturing lots
t.test(suspension_table$PSI, mu=mean(suspension_table$PSI))

# t-test for lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

#t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))
