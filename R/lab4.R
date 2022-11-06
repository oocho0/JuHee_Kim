#  문제 1

(L1 <- list(
  name = "scott",
  sal = 3000
))
(result1 <- L1$salfd *2)

#  문제 2

(L2 <- list(
  "scott",
  c(100,200,300)
))

#  문제 3

(L3 <- list(
  c(3, 5, 7),
  c("A", "B", "C")
))
(L3[[2]][1] <- "Alpha")
L3

#  문제 4

(L4 <- list(
  alpha = 0:4,
  beta = sqrt(1:5),
  gamma = log(1:5)
))
L4$alpha+10

#  문제 5

emp<-read.csv("data/emp.csv")
(L5 <- list(
  data1 = LETTERS,
  data2 = emp[1:3,],
  data3 = L4
))

L5$data1[1]
L5$data2[,2,]
L5$data3$gamma

#  문제 6

(L6 <- list(
  math=list(95, 90),
  writing=list(90, 85),
  reading=list(85, 80)
))
unL6 <-unlist(L6[1:3])
mean(unL6)

#  문제 7

(grade <- sample(1:6, 1))
ifelse(
  grade == 1 | grade == 2 | grade == 3, 
  paste(grade, "학년은 저학년 입니다."), 
  paste(grade, "학년은 고학년 입니다.")
)

#  문제 8

(choice <- sample(1:5, 1))
switch(EXPR=choice, 300+50, 300-50, 300*50, 300/50, 300%%50)

#  문제 9

(count <- sample(3:10, 1))
(deco <- sample(1:3, 1))
switch(EXPR=deco, rep("*",count), rep("$",count), rep("#",count))

#  문제 10
(score <- sample(0:100, 1))
sc <- as.character(score%/%10)
level <- switch(EXPR=sc, "10"=,"9"="A 등급", "8"="B 등급", "7"="C 등급", "6"="D 등급", "F 등급")
cat(score, "은 ",level, "입니다.\n", sep="")

#  문제 11

print(paste(LETTERS, letters, sep=""))
