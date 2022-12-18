score.1 <- 1; score.2 <- 2; score.3 <- 3; score.4 <- 4; score.5 <- 5; 
score.6 <- 6; score.7 <- 7; score.8 <- 8; score.9 <- 9; score.10 <- 10;
total_1 <- c(score.1 + score.2 + score.3 + score.4 + score.5 + score.6
             + score.7 + score.8 + score.9 + score.10) 
(avg <- (total_1/10))
total_2 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
mean(total_2)

# 숫자형 벡터
(x <- c(1, 2, 3))

# 문자형 벡터
(y <- c('a', 'b', 'c'))

# 논리형 벡터
(z <- c(T, T, F, T)) 

# 연속된 숫자로 이루어진 벡터
(v1 <- 1:10)
(v2 <- c(1, 2, 5, 10:50))

v3 <- seq(1, 30, 3)

v3 <- rep(1, times=5)
v3 <- rep(1:3, times=5)
v3 <- rep(1:3, each=5)
v4 <- rep(c(1, 3, 5), times=3)

v <- c( 2, 4, 6, 8, 10)
names(v) <-c('이','사','육', '팔')
v
names(v)

v['이']
v[c('이', '사')]

b <- c(1, 2, 3, 4, 5)
b[1]
b[2]
b[3]
b[4]
b[5]
b[6]

d <- c(6, 7, 8, 9, 10)
d[c(1, 3, 5)]
d[c(1:3)]
d[seq(2, 5, 2)]
d[-2]
d[-c(3:5)]

num <- c(1, 2, 3, 4)
names(num) <- c("a", "b", "c", "d")
num
num[3]
num["c"]
num[c("b","d")]

a1 <- c(1, 2, 3, 4, 5)
a1
a1[2] <- 7
a1
a1[c(1, 5)] <- c(10, 50)
a1 <- c(100, 200, 300)

a <- c(1, 4, 3, 6, 7)
(2*a)
a
a <- c(1, 4, 3, 6, 7)
(a <- 2*a)
a

i <- c(1, 2, 3, 4)
j <- c(11, 22, 33, 44)
k <- i + j
k
i*j
x <- c(i, j)
x
y <- c(j, i)
y
z <- c(i, j, 5, 55)
z

(a1 <- c(11, 22, 33, 44))
(a2 <- c("oochoo", "mydong", "dalgom"))
(a3 <- c(a1, a2))

x <- c(1,2,3,5,7,11,13,17,19,29,31,37)
sum(x)
sum(5*x)
length(x)
mean(x[5:11])
max(x)
min(x)
sort(x)
sort(x, decreasing=F)
sort(x, decreasing=T)

y <- median(x)
y
z <- sum(x)/length(x)
z
a <- mean(x)
a

a <- 90:100
a >= 95
a[a > 95]
sum(a <= 95)
sum(a[a < 95])
a==100
a!=80
a[a>94 & a<99]
