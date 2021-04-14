# 평균이 10이고 분산이 2인 100개의 정규 분포를 따르는 임의의 데이터를 추출한 후, 
# 실제 추출한 데이터가 평균이 10이고 분산이 2인 정규 분포를 따르는지에 대한 검정 결과이다.

sample = rnorm(100,10,2)
ks.test(sample,'pnorm',mean = 10, sd = 2)

# ks는 두 데이터가 동일한 분포인지에 대한 여부도 검정 가능
parent = rnorm(150)
sample = rnorm(100)
ks.test(sample,parent)

# 샤피로 윌크 검정

library(MASS)
head(Pima.tr$bmi)
shapiro.test(Pima.tr$bmi)
hist(Pima.tr$bmi)

# QQ plot

bmi = Pima.tr$bmi
qqnorm(bmi)
qqline(bmi)
