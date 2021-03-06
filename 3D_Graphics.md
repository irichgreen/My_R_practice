---
title: "3차원 interactive 그래프 소개"
author: "Jin-Hoon An"
date: "Monday, December 01, 2014"
output: html_document
---

그래프는 단순히 멋있어 보이는 그림이 아니라 분석을 할때 쓰여지는 유용한 도구이다.보통 3차원 그래프를 사용하는것을 권장하지는 않지만, 요즘은 그래프가 (그래프의 정확도나 관련성과는 무관하게) 프레젠테이션등에서 비쥬얼적인 효과를 높혀주는데 많이 사용되므로, 이 추세를 무시하기는 힘들다. R이 요즘 점점더 data visualisation쪽으로 발전되고 있는것도 이러한 추세와 무관하지 않을것이다.

R에서 3차원 그래프를 그리는 방법은 몇가지가 있는데 그 중 시각적으로 보기도 좋고 쉽게 사용할수있는 3차원 interactive 그래프를 소개해 보겠다,

여기서 쓰여지는 팩키지들은 아래와 같으며 scatter3d()를 사용하여 그래프를 실행한다.


```r
library(MASS)
library(nnet)
library(car)
library(rgl)    
library(mgcv)

scatter3d(iris[,1],iris[,2],iris[,3],bg.col="black",axis.col=c("white","white","white"),xlab=colnames(iris)[1],ylab=colnames(iris)[2],zlab=colnames(iris)[3],revolutions=0,grid=FALSE,groups=factor(iris$Species),ellipsoid=TRUE,surface=FALSE)
```


위의 명령어를 실행하면 그래픽 디바이스가 새창으로 뜨는데, 마우스를 이용하여 그래프를 움직이고 zoom-in/out등을 할수도있다. scatter3d() 함수내에있는 여러가지 컨트럴 매개변수들을 이용해 색상과 사이즈등등을 바꿀수도있고 그래프회전이나 grouping 등을 정할수도있다. 

