# DataAnalysis-Basic  

## 1. 분석 코딩 테스트 대비 파이썬 모듈 익히기

### [OneHot-시각화](OneHot-시각화.ipynb)  
캘리포니아 행정 구역 내 주택 가격 데이터  
+ **numeric** 변수-> level1,2,3로 categorical 진행 컬럼을 추가하여 0 or 1 기록하기  
+scatter plot  
### [Groupby-multiple columns](Groupby-multipleColumns.ipynb)  
+ Facker() 이용한 데이터 생성(의미 없는 데이터)  
+ groupby()를 이용하여 데이터를 정렬하고 unstack()과 비교해본다.<br>
<h6> 참고자료 :  https://github.com/scentellegher/code_snippets/blob/master/pandas_groupby_unstack/Plot_groupby_multiple_columns_unstack.ipynb<br>

### [Multi-inde,Multi-columns](Multi-inde&Multi-columns.ipynb)  
+ 0,1,2로 이루어진 target 컬럼 setosa,versicolor,virginica로 매핑 **map이용**  
+ 특정 컬럼을 index로 바꾸기 -> set_index(컬럼명)
+ multi-index xs 접근하기
+ multi-index 순서 변경 swaplevel  
<h6> 참고자료 : https://data-make.tistory.com/126?category=317622 <br>
  
### [분류,시각화](분류,시각화.ipynb)  
+ 시간 데이터 시각화, 머신러닝 기법을 이용한 분류문제  
+ **XGboost 기법 알고리즘 공부**
  
## 2. Machine Learning - Algorithm using Python

### [SOM](som예제.R)  
+ SOM(Self-Organizing Map) 차원 축소를 이용한 클러스터링 기법이다. n차원 입력벡터에서 주로 시각화 가능한 2-3차원으로 축소를 진행한다. 
+ **python somlearn을 사용했으나 NameError : wrap_train 발생으로 해결 후 업데이트 예정이다.**
+ Series에서 변수 count 가능하다. (series.value_count())  
<h6> 참고자료 : https://m.blog.naver.com/PostView.nhn?blogId=plasticcode&logNo=221514486602&proxyReferer=https:%2F%2Fwww.google.com%2F
  
### [tSNE](tSNE.ipynb)  
+ t-Stochastic Nearest Neighbor 는 vetor visualization을 위해 자주 사용되는 알고리즘이다. 선형변환을 이용한 PCA(Principal Component analysis)는 비선형 특성을 가진 데이터에 대해서는 데이터의 특성을 잘 추출하지 못하는 한계가 있다. 데이터의 비선형적 특성을 고려하기 위해 SNE,LLE, 등이 제안되었는데 tSNE는 그 중 하나이다.
+ **T분포를 이용하며 친밀도가 가까운 값끼리 클러스터링된다.**
+ PCA처럼 군집이 중복되지 않는 장점은 있지만 매 계산마다 축의 위치가 바뀌어서, 다른 모양으로 나타날 수 있다.  
<h6> 참고자료 : https://agiantmind.tistory.com/215

### [PLS](PLS.ipynb)  
+ Partial Least Squares(부분 최소 제곱법)은 종속변수 Y와의 공분산이 높은 k개의 선형조합 변수를 추출하는 방식이다. 회귀, 분류 모델로 사용되며 데이터 차원을 축소 시킬 때 주로 쓰인다. PCA(Principal Component analysis)는 선형 특성을최대화 하는 축을 찾지만 PLS는 이와 더불어 상관관계를 최대화 하도록 축을 찾는다. (즉, X선형결합-Y 상관관계, X선형결합의분산을 최대) 
+ 첫 번째 t1 변수를 추출하고 t1이 설명하지 못하는 부분만을 고려하기 위해 t1이 설명하는 X,y 부분을 제외하여 t2를 추출한다. **k번 반복**
+ k를 순차적으로 증가시키며 예측 결과를 확인하고, 가장 좋은 예측 결과를 보이는 k를 선택한다. MSE 값이 가장 작을 때  
+ IF Y가 여러 개일 때? -> 하나의 모델로 여러 개의 Y 예측 가능
+ IF Y가 범주형일 때? -> PLS-DA(PLS-Discriminant Analysis)
<h6> 참고자료 : https://lsjsj92.tistory.com/547

### [XGBoost](XGBoost.ipynb)  
+ Gradient Boosting 방법 중 한 가지이다. 트리를 기본 구조로 Gain을 최대화한다. 뛰어난 예측 성능을 보여주고 과적합을 방지하는 장점이 있다. 
+ 초기 분기에서 Gain을 최대화하는 분기를 찾는다. 리프 노드에 대해 과정을 재귀적으로 반복한다. **파라미터를 이용해 개수, 깊이, 반복횟수 제한이 가능하다**
+ 암분류 데이터를 XGB를 이용하여 분류해보고, 조기종료, 파리미터 조정을 해보자  
<h6> 참고자료 : https://dive-into-ds.tistory.com/33 https://dining-developer.tistory.com/3  
  
### [구현CNN](구현_CNN(result).ipynb)  
+ CNN(Convolutional Neural Network) 
+ FClayer, Softmax, Relu, Cross Entropy,Conv, MaxPooling 일부를 구현하자.
+ Mnist 데이터를 이용하여 학습을 진행하고 학습전,후 이미지 형태를 비교한다.  
  
### [구현 NN](구현_NN.ipynb)  
+ MNIST_784 분류하기
+ FClayer, Softmax, Relu, Cross Entropy 일부를 구현하자.
+ 최소한 85% 이상의 test acc가 나올 수 있도록 학습  

## 3. Machine Learning - Algorithm using R

 ### [ElasticNet](ElasticNet예제.R)  
+ Lasso, Ridge 에서의 L1, L2 norm이 모두 사용되는 모델이다. 두 모델의 장점을 가지고 있기 때문에 변수의 수도 줄이고 variance도 줄이고 싶을 때 사용한다. 큰 데이터 셋에서 잘 작동하는 모델이다. 
+ 실제로 영향을 주는 변수를 A라고 하자. A와 연관이 있는 변수 B가 있는 경우 통계적으로 B도 영향을 주는 것처럼 보일 수 있다. Ridge 경우 계수를 전체적으로 줄이기 때문에 변수 선택이 안될 것이고, Lasso도 비슷하게 영향을 주지 않는 B가 남고 A 영향이 없어질 수 있다. 이러한 경우 ElasticNet을 사용한다. **L1, L2 가중치를 조절하여 lasso, ridge를 모두 동작할 수 있다.**
+ 전립선암 데이터를 이용하여 예측해보자 
<h6> 참고자료 : https://soobarkbar.tistory.com/30 https://analysisbugs.tistory.com/199

 ### [RandomForest](Simple_R_code/iris_RF_분석.R)  
+ 의사결정나무의 특징인 분산이 크다는 점을 고려하여 bagging과 boosting보다 더 많은 무작위성을 주어 약한 학습기들을 생성한 후 이를 선형 결합하여 최종 학습기를 만드는 방법이다. 
+ 분석용 데이터로부터 N개의 bootstrap 데이터를 추출하고 N개의 분류기를 훈련한 후 대표 변수 샘플을 도출한다. 이 샘플을 트리의 leaf node로 분류하고 leaf node들의 선형 결합으로 최종 모델이 결정된다. **이론적 설명이나 해석이 어렵지만, 예측력은 매우 높다.**
+ iris 데이터를 이용하여 예측해보자 

 ### [교차분석(카이제곱 검정)](Simple_R_code/교차분석.R)  
+ 교차분석은 적합도 검정, 독립성 검정, 동질성 검정의 3가지로 분류할 수 있다.
+ 적합도 검정 : 표본 집단의 분포가 주어진 특정 이론을 따르고 있는지를 검정하는 기법이다. 귀무가설 - 표본 집단의 분포가 가정한 이론과 동일
+ 독립성 검정 : 여러 범주를 가지는 2개의 요인이 독립적인지, 연관성이 있는지 검정하는 기법이다. 귀무가설 - 요인1과 요인2는 독립적
+ 동질성 검정 : 독립적인 부모집단으로부터 정해진 표본의 크기만큼 자료를 추출하는 경우 관측값들이 정해진 범주 내에서 서로 동질한지 여부를 검정하는 기법이다. 귀무가설 - 모집단은 동질하다.
+ **표본 수 적거나 치우치게 분포된 경우** 피셔의 정확 검정을 사용한다.
+ 남녀 커피 선호도 데이터 

### [분류 모형의 평가지표(Confusion Matrix)](Simple_R_code/ConfusionMatrix.R)  
+ confusion matrix은 분석 모델에서 구한 분류의 예측 범주와 데이터의 실제 분류 범주를 교차표 형태로 정리한 행렬이다. (Positive/Negative 예측한 값, True/False 예측값과 실제 비교
+ 예측이 정확한 경우-TP,TN // 예측이 틀린 경우 FP, FN
+ 분류 모형의 평가지표는 정확도, 오차 비율, 민감도, 정밀도 등이 있다.
+ 모형의 평가지표가 우연히 나온 결과가 아니라는 것을 카파(Kappa) 통계량을 통하여 설명할 수 있다.
+ ROC(Receiver Operating Characteristic Curve) : 가로축을 거짓 긍정률(FP-rate)로 두고 세로축을 민감도(FP-rate)로 두어 시각화한 그래프이다. 두 축은 서로 반비례 관계에 있고, AUC(Area Under ROC) ROC 곡선 아래의 면적을 모형의 평가지표로 삼는 값으로 0.5~1 값을 가지며 1에 가까울수록 좋은 모형이다.

### [정규성 확인](Simple_R_code/정규성.R)  
+ 적합도 검정은 가정된 확률이 정해진 경우와 아닌 경우로 유형을 분리한다. 
+ 가정된 확률 검정 : 카이제곱 검정을 이용하여 검정 수행 // 귀무가설 : 데이터가 가정된 확률을 따름
+ 가정된 확률이 아닌 경우(정규성 검정) : 샤피로-윌크 검정(Shapiro-Wilk Test), 콜모고로프-스미르노프 적합성 검정(Kolmogorov-Smirnov Goodness of Fit Test; K-S Test), histogram, qqplot 시각화 검정 기법으로 사용
+ shapiro.test() 귀무가설 : '표본은 정규 분포를 따른다' 1개의 수치형 벡터만 사용할 수 있으며 데이터의 수는 3개부터 5000개 이하만 사용이 가능하다
+ ks.test() 귀무가설 : '표본은 정규 분포를 따른다' 데이터가 많은 경우 사용하며 인자는 3가지 검정할 데이터(x), 비교 검정할 데이터이거나 이론적 분포(pnorm, etc,,), alternative(양측검정 or not)
