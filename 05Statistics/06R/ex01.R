a <- 7
a = 7
df <- data.frame(c=c(4,5), d=c(6,7))
df <- data.frame(c<-c(4,5), d<-c(6,7)) #전역변수로 만듦

getwd()

plot(c(1,2,3), c(5,4,3))

# 패키지 설치
install.packages('dplyr')
# 패키지 사용
library(dplyr)

c[1:2]
d
d[c(F,T)]

arr <- rnorm(1000)
arr
hist(arr, breaks = 30)

rnorm
pnorm
qnorm

pnorm(1) -pnorm(-1)
pnorm(2) -pnorm(-2)
pnorm(3) -pnorm(-3)
qnorm(0.5)
qnorm(0.95)
pnorm(qnorm(0.95))

rexp()
