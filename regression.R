data <- read.csv('finaldataset1_.csv')

names(data)[names(data) == "NUMBER_FIRMS"] <- "Number_Firms"
names(data)[names(data) == "complexity"] <- "Complexity"

lmodel <- lm(firm_prpn ~ complexity, data = data)
lmodel1 <- lm(firm_prpn ~ Complexity+Number_Firms, data = data)

summary(lmodel)
summary(lmodel1)

install.packages("texreg")
library("texreg")
texreg(list(lmodel, lmodel1))

