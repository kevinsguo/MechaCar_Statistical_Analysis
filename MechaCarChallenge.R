# packages
library(dplyr)
library(tidyverse)

# importing the csv data as df
df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Performing Linear Regression
summary(lm(mpg ~  spoiler_angle + vehicle_weight + ground_clearance + AWD + vehicle_length, data = df))

# End of Deliverable 1

# importing the csv data as df
sc_df = read.csv('Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# creating total summary of the csv file
total_summary <- sc_df %>% summarize(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))

# summary of the csv file
m_summary <- table %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))

# End of Deliverable 2

# t.test() on Suspension coils
t.test(sc_df$PSI, mu=1500)
# subset for lot 1
lot1 <- subset(sc_df, Manufacturing_Lot=='Lot1')
t.test(x=lot1$PSI, mu=1500)
# subset for lot 2
lot2 <- subset(sc_df, Manufacturing_Lot=='Lot2')
t.test(x=lot2$PSI, mu=1500)
# subset for lot 3
lot3 <- subset(sc_df, Manufacturing_Lot=='Lot3')
t.test(x=lot3$PSI, mu=1500)