install.packages("tidyverse")
install.packages("jsonlite")
library(dplyr)
MechaCar_Table <-read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_Table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Table))

Suspension_Coil_Table <-read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(Suspension_Coil_Table)
total_summary <-Suspension_Coil_Table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI))
lot_summary <-Suspension_Coil_Table%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups='keep')

t.test(Suspension_Coil_Table$PSI, mu=1500)

t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

