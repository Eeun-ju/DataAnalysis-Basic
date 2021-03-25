library("randomcoloR")
library("som")

n = 10000; p = 2
x = matrix( runif(n*p), n, p)
par(mfrow=c(1,2))
Som = som(x, xdim=5, ydim=5, topol = "rect")
cl = Som$visual
cl = cl$x*10+cl$y
cl = as.character(cl)
cl_col = c();
cl_id = unique(cl)
for (i in 1:length(cl_id)) {
  cl_col[which(cl==cl_id[i])] = randomColor(1)
}
plot(x, ylab="", xlab="", col=cl_col, pch=19) 

Som = som(x, xdim=5, ydim=5, topol = "hexa")
cl = Som$visual
cl = cl$x*10+cl$y
cl = as.character(cl)
cl_col = c();
cl_id = unique(cl)
for (i in 1:length(cl_id)) {
  cl_col[which(cl==cl_id[i])] = randomColor(1)
}
plot(x, ylab="", xlab="", col=cl_col, pch=19)
