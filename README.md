# DataAnalysis-Basic
분석 코딩 테스트 대비 파이썬 모듈 익히기
-----------------
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
<h6> 참고자료 : https://data-make.tistory.com/126?category=317622

### [SOM](som예제.R)  
+ SOM(Self-Organizing Map) 차원 축소를 이용한 클러스터링 기법이다. n차원 입력벡터에서 주로 시각화 가능한 2-3차원으로 축소를 진행한다. 
+ **python somlearn을 사용했으나 NameError : wrap_train 발생으로 해결 후 업데이트 예정이다.**
+ Series에서 변수 count 가능하다. (series.value_count())  
<h6> 참고자료 : https://m.blog.naver.com/PostView.nhn?blogId=plasticcode&logNo=221514486602&proxyReferer=https:%2F%2Fwww.google.com%2F
