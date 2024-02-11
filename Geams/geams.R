

mydata <- read.csv(file.choose())

remove.packages("ggplot2") # Unisntall ggplot
install.packages("ggplot2") # Install it again
library(ggplot2)



ggplot(data=mydata, aes(x=carat, y=price, colour=clarity))+
  geom_point(alpha=0.1) +

geom_smooth()

