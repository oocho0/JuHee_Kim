# 문제 1

v1 <- seq(10, 38, 2)
m1 <- matrix(v1, nrow=3, byrow=T)
m2 <- m1+100
m_max_v <- max(m1)
m_min_v <- min(m1)
row_max <- c(max(m1[1,]), max(m1[2,]), max(m1[3,]))
col_max <- c(max(m1[,1]), max(m1[,2]), max(m1[,3]), max(m1[,4]), max(m1[,5]))

m1; m2; m_max_v; m_min_v; row_max; col_max;

# 문제 2

m2 <- matrix(1:9, nrow=3)
n1 <- c(1, 2, 3)
n2 <- c(4, 5, 6)
n3 <- c(7, 8, 9)
mat1 <- cbind(n1, n2, n3)
m2; mat1;

# 문제 3

m3 <- matrix(1:9, nrow=3, byrow=T)
m3;

# 문제 4

m4 <- m3
colnames(m4) <- c('col1', 'col2', 'col3')
rownames(m4) <- c('row1', 'row2', 'row3')
m4;

# 문제 5

alpha <- matrix(letters[1:6], nrow=2)
alpha2 <- rbind(alpha, c("x", "y", "z"))
alpha3 <- cbind(alpha, c("s", "p"))
alpha2; alpha3;

# 문제 6
a <- array(1:24, dim=c(2,3,4)); a;
#(1)
a[2,3,4];
#(2)
a[2,,];
#(3)
a[,1,];
#(4)
a[,,3];
#(5)
a + 100
#(6)
a[,,4] * 100
#(7)
a[1,2:3,]
#(8)
a[2,,2] <- a[2,,2]+100; a;
#(9)
a[,,1] <- a[,,1]-2; a;
#(10)
a <- a * 10; a;
#(11)
rm(a); a