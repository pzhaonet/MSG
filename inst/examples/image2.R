# ggplot2 绘制火山高度数据颜色图
data(volcano)
library(ggplot2)
p = ggplot(transform(reshape2::melt(volcano),
                 x = Var1 * 10, y = Var2 * 10),
       aes(x = x, y = y, z = value, fill = value)) +
  geom_tile() +
  geom_contour() +
  scale_fill_distiller(palette="RdYlGn") +
  labs(x = "北部长度（米）", y = "西部长度（米）",
       fill = "高度\n(米)")
print(p)
