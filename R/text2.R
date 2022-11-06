z <- scan("data/iotest2.txt", what="")
y <- names(which.max(table(z)))
cat("가장 많이 등장하는 단어는 ", y,"입니다.", sep="")
