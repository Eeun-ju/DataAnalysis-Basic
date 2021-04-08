library('glmnet') #ridege, lasso, elasticnet regression 제공 함수
library('dplyr') # 데이터 전처리에 사용되는 패키지

prostate=read.table(file='C:/Users/user/Downloads/prostate.txt',header=TRUE,fill = TRUE)
head(prostate)

y = prostate$lpsa #lpsa 예측 문제
x = prostate %>% select(lcavol, lweight, age, lbph, svi, lcp, gleason, pgg45) %>% data.matrix()
lambdas <- seq(0, 0.3, by = .05)

cv_fit = cv.glmnet(x,y,alpha=0.5, lambda = lambdas) # alpha 값에 따라 lasso(1), ridge(0), ridge(0.5)
plot(cv_fit)
# 가장 낮은 점이 최적의 람다-> CV에서 오차를 가장 최소화하는 로그 람다 값
# 빨간 점이 가장 낮은 지점이 MSE를 가장 작게하는 람다

opt_lambda = cv_fit$lambda.min
opt_lambda

result = glmnet(x,y,alpha = 0.5,lambda = opt_lambda)
coef(result)
