# 三种鸢尾花各自的花萼长度直方图
library(lattice)
print(
  histogram(~ Sepal.Length | Species, layout = c(3, 1), data = iris,
            xlab = "花萼长度", ylab = "百分数")
)
