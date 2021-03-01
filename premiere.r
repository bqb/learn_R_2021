# the very first Bubba R script  2021-02-28 (bbq)
#
# Following along with Introduction to R by Robert J. Hijmans
# version of 2020-03-23
#

a <- 7
print(a)
a <- 1:10
class(a)
a <- as.integer(7)
class(a)
a <- 7L
class(a)
b <- c(1.25, 2.9, 3.14)
b
d <- 6:9
d
8:2
e <- seq(from = 5, to = 14, by = 3)
e
f <- rev(e)
f
rep(8, times = 8)
rep(6:9, times = 5)
x <- 'Yi'
y <- 'Liang'
class(x)
x
countries <- c('China', 'China', 'Japan', 'South Korea', 'Japan')
countries
length(countries)
nchar(countries)
z <- letters
z
zup <- toupper(z)
zup
girl <- "Mary"
boy <- "John"
paste(girl, "likes", boy)
paste(countries, collapse=' -- ')
substr('Hello World', 7, 11)
gsub('l', '!!', 'Hello World')
sub('l', '!!', 'Hello World')
gsub('Hello', 'bye bye', "Hello World")
d <- c('az20', 'az21', 'az22', 'ba30', 'ba31', 'ba32')
i <- grep('b', d)
i
d[i]
i <- grep('2', d)
d[i]
i
grep('2$', d)
grep('^b', d)
z <- FALSE
z
x <- 5
x > 3
x == 5
y <- TRUE
y + 1
as.logical(0)
as.logical(3.14)
f1 <- as.factor(countries)
f1
f2 <- c(5:7, 5:7, 5:7)
f2
f2 <- as.factor(f2)
f2
as.integer(f2)
# factors are typed lists
fc2 <- as.character(f2)
# casting to characters implied by the list
fc2
as.integer(fc2)
# casting to integers implied by the list values
m <- c(2, NA, 5, 2, NA, 2)
m
# now it's time for time
d1 <- as.Date('2015-4-11')
d2 <- as.Date('2015-3-11')
class(d1)
d1 - d2
as.POSIXlt(d1)
as.POSIXct(d1)
#
#  Hijmans chapter 1.3   Basic Data Structures  p.10
#
matrix(ncol=3, nrow=2)
matrix(1:6, ncol=3, nrow=2)
matrix(1:6, ncol=3, nrow=2, byrow = TRUE)
a <- c(1,2,3)
a
b <- 5:7
b
m1 <- cbind(a, b)
m1
m2 <- rbind(a, b)
m2
m3 <- cbind(b, b, a)
m3
m <- cbind(m1, m3)
m
ncol(m)
nrow(m)
dim(m)
length(m)
colnames(m)
rownames(m)
colnames(m) <- c('ID', 'X', 'Y', 'v1', 'v2')
m
rownames(m) <- paste0('rw_', 1:nrow(m))
m
cbind(vchar=c('a','b'), vnumb=1:2)
#                       List    p 13
list(1:3)
e <- list(c(2,5), 'abc')
e
names(e) <- c('first' , 'last')
e
m <- matrix(1:6, ncol=3, nrow=2)
m
f <- list(e, m, 'abc')
f
m <- matrix(1:9, nrow=3, ncol=3, byrow = TRUE)
colnames(m) <- c('a', 'b', 'c')
m
m[2,2]
m[1,3]
m[3,2]
m[2:3, 2:3]
m[2,]
m[,3]
m[, 'b']
m[,c('a', 'c')]
m[5]
m[7]
m[3]
m[2,]
m[,2, drop=FALSE]
diag(m)
m
diag(m) <- 0
m
#
# index access to lists
#
m <- matrix(1:9, nrow=3, ncol=3, byrow = TRUE)
m
colnames(m) <- c('a', 'b', 'c')
m
e <- list(list(1:3), c('a', 'b', 'c', 'd'), m)
e
e[2]
e[[2]]
e[1]
e[[3]]
names(e) <- c('zzz', 'xyz', 'abc')
e
e$xyz
e$zzz
e$zzz[1]

m
d <- data.frame(m)
d
class(d)
d[,2]
d[2]
d[,'b']
d['b']
d$b
d[, 'b', drop=FALSE]
x <- 10:21
x
i <- which(x > 15)
i
x[i]
x
b <- x > 15
b
x[b]
j <- c(7, 9, 11, 13)
j %in% x
which(j %in% x)
match(j, x)
match(x, j)

#
#  Chapter 1.5   Algebra   p 20
#
m <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE)
m
n <- matrix(1:6, nrow=3, ncol=2)
n
m %*% n
n %*% m
a <- 4:11
r <- runif(11)
r <- rnorm(5, mean=11,  sd=1)
r
set.seed(14)
runif(5)
runif(5)

set.seed(14)
runif(5)
u = matrix(1, ncol=3, nrow=3)
u
u <- u * runif(length(u))
u
#
# Chapter 1.6   Read and write files   p 24
#
txt <- "Here be an example\nwith newline to boot\n\tand taubularity\n"
txt
message(txt)
f1 <- "/home/darb/github/learn_R_2021/foost.csv"
file.exists(f1)
d <- data.frame(id=1:10, name=letters[1:10], value=seq(10,28,2))
d
write.csv(d, 'test.csv', row.names=FALSE)
write.table(d, 'test.dat', row.names=FALSE)
file.exists('test.csv')
file.exists('test.dat')
getwd()
file.path(getwd(), 'test.csv')
d <- read.csv('test.csv', stringsAsFactors=FALSE)
d
d <- read.table('test.dat', stringsAsFactors=FALSE)
d
d <- read.table('test.dat', header=TRUE, stringsAsFactors=FALSE)
d
d <- readLines('test.csv')
class(d)
webpage <- readLines("http://bq.bz", warn=FALSE)
head(webpage)
webpage[10:55]

list.files()
list.files(pattern = 'csv$')
