library(ggplot2)

setwd("C:\\Users\\lesandrop\\Documents\\GitHub\\TCC")

df <- read.csv("cadaProblemaPorProjeto.csv")

p <- ggplot(data=df, aes(x=PROBLEMA, y=QUANTIDADE)) +
geom_boxplot(outlier.size=4) +
theme_bw(base_size = 12) + 
scale_y_log10(breaks = scales::trans_breaks("log10", function(x) 10^x), labels = scales::trans_format("log10", scales::math_format(10^.x))) +
theme(axis.text.x = element_text(angle = 75, hjust = 1)) +
xlab("Classe de problema") +
 ylab("#Problemas")
	
pdf("Figuras/ProblemasBoxPlot.pdf", width = 8, height = 6)
plot(p)
dev.off()