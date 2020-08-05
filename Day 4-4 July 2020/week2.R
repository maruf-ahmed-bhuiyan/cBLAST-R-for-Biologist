COPD <- read.csv("COPD_Dataset.csv", header = TRUE)
hist(COPD$MWT1Best)


hist(COPD$MWT1Best, main="Histogram of MWT1Best", xlab="MWT1Best", breaks=12)

subset(COPD, COPD$MWT1Best > 650)


subset(COPD, MWT1Best > 600 | MWT1Best < 150)

hist(COPD$FEV1, main="Histogram of FEV1", xlab="FEV1") 

list("Summary" = summary(COPD$MWT1Best), "Mean" = mean(COPD$MWT1Best, na.rm=TRUE), "Standard Deviation" = sd(COPD$MWT1Best, na.rm=TRUE), "Range" = range(COPD$MWT1Best, na.rm=TRUE), "Inter-Quartile Range" = IQR(COPD$MWT1Best, na.rm=TRUE))

plot(COPD$FEV1, COPD$MWT1Best, xlab = "FEV1", ylab = "MWT1Best")
cor.test(COPD$FEV1, COPD$MWT1Best, use = "complete.obs", method = "pearson")
cor.test(COPD$FEV1, COPD$MWT1Best, use = "complete.obs", method = "spearman")

########------------------#############


cor.test(COPD$AGE, COPD$MWT1Best, use="complete.obs", method="pearson")


  or.test(COPD$AGE, COPD$MWT1Best, use="complete.obs", method="spearman")
  
MWT1Best_FEV1 <- lm(MWT1Best~FEV1, data = COPD)
summary(MWT1Best_FEV1)  
confint(MWT1Best_FEV1)

par(mfrow=c(2,2))   
plot(MWT1Best_FEV1)  
  
MWT1Best_AGE <- lm(MWT1Best~AGE, data = COPD)  
summary(MWT1Best_AGE)
confint(MWT1Best_AGE)

##QQplot allows to asses the assumption of normality

predictedVals <- predict(MWT1Best_AGE)
residualVals <- residuals(MWT1Best_AGE)  
par(mfrow=c(2,2))  
plot(MWT1Best_AGE)

hist(residualVals, main = "Histogram of residuals", xlab = "Residuals") 



plot(COPD$AGE,COPD$MWT1Best)



###################################

#Fitting multiple REgression in R

plot(COPD$FVC, COPD$MWT1Best, xlab = "FVC", ylab = "MWT1Best")
cor.test(COPD$FEV1, COPD$MWT1Best, use = "complete.obs", method = "pearson")
cor.test(COPD$FEV1, COPD$MWT1Best, use = "complete.obs", method = "spearman")
MWT1Best_FVC <- lm(MWT1Best~FVC, data = COPD)
summary(MWT1Best_FVC)  
confint(MWT1Best_FVC)
predictedVals <- predict(MWT1Best_FVC)
residualVals <- residuals(MWT1Best_FVC)  
par(mfrow=c(2,2))  
plot(MWT1Best_FVC)

MWT1Best_FEV1_AGE <- lm(MWT1Best~FEV1+AGE, data = COPD)

summary(MWT1Best_FEV1_AGE) 
confint(MWT1Best_FEV1_AGE)


MWT1Best_FVC_AGE <- lm(MWT1Best~FVC+AGE, data = COPD)

summary(MWT1Best_FVC_AGE) 
confint(MWT1Best_FVC_AGE)



###########Feedback
lr1 <- lm(MWT1Best~FVC, data = COPD)

summary(lr1) # View the output of the regression 

confint(lr1) # View the 95% confidence intervals of the regression 
lr2 <- lm(MWT1Best~AGE, data = COPD)

summary(lr2)

confint(lr2)

lr3 <- lm(MWT1Best~FVC+AGE, data = COPD) 

summary(lr3) 

confint(lr3) 


plot(COPD$AGE, COPD$FVC, xlab ="AGE", ylab ="FVC")
cor.test(COPD$AGE, COPD$FVC, use="complete.obs", method="spearman")  




















