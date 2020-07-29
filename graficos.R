library(ggplot2)

#Path to the main folder
setwd("C:\\Users\\lesandrop\\Documents\\GitHub\\TCC")

df <- data.frame(qproblemas=c(20,53,63,96,146,272,909,1155,3302,3465,10963,19359),
	projeto=c('apacteca','pectometro','Kanleitos','Gestao CSF','Bartech','Private Class','Alpmys','Will List','Novolharua','Apac','gmfonseca','Projeto Incluir'))


p <- ggplot(data=df, aes(x=projeto, y=qproblemas)) +
geom_bar(stat="identity") +
geom_text(stat="identity", aes(label=qproblemas),  vjust=-1) + 
theme_bw(base_size = 12) + 
theme(axis.text.x = element_text(angle = 75, hjust = 1)) +
xlab("Projeto de TIS") +
 ylab("#Problemas (erros + warnings)")
	

pdf("Figuras/ProblemasPorProjeto.pdf", width = 7, height = 4)
plot(p)
dev.off()