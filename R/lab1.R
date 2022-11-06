# 문제 1

v1 <- 1:10
v2 <- (v1*2)
max_v <- max(v2)
min_v <- min(v2)
avg_v <- mean(v2)
sum_v <- sum(v2)
v3 <- v2[-5]
v1; v2; max_v; min_v; avg_v; sum_v; v3;

# 문제 2

v4 <- seq(1, 10, 2)
v5 <- rep(1, 5)
v6 <- rep(1:3, times=3)
v7 <- rep(1:4, each=2)
v4; v5; v6; v7;

# 문제 3

nums <- sample(1:100, 10, replace=T)
nums
sort(nums)
sort(nums, decreasing = T)
nums[nums > 50]
which(nums <= 50)
which.max(nums)
which.min(nums)

# 문제 4

v8 <- seq(1, 10, 3)
v8
names(v8) <- LETTERS[1:4]
v8

# 문제 5

score <- sample(1:20, 5, replace=T)
myFriend <- c("둘리", "또치", "도우너", "희동", "듀크")
paste(score, myFriend, sep="-")
myFriend[which.max(score)]
myFriend[which.min(score)]
myFriend[which(score > 10)]

# 문제 6

count <- sample(1:100, 7, replace = TRUE)
week.korname <- c("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일")
paste(week.korname, count, sep=":")
week.korname[which.max(count)]
week.korname[which.min(count)]
week.korname[which(count > 10)]

# 문제 7

v1 <- sample(1:30, 10)
names(v1) <- (sort(letters, decreasing = T)[1:10])
v2 <- v1
names(v1) <- NULL
v1; v2