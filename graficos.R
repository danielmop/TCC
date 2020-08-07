library(ggplot2)

#Path to the main folder
setwd("C:\\Users\\lesandrop\\Documents\\GitHub\\TCC")

df <- data.frame(qproblemas=c(0,0,20,53,63,96,146,272,909,1155,3302,3465,10963,19359,654726,1176143,2186648,2232841), projeto=c('Jogo de Filosofia','Automecânica\nVailante','apacteca','pectometro','Kanleitos','Gestao CSF','Bartech','Private Class','Alpmys','Will List','Novolharua','Apac','gmfonseca','Projeto Incluir','Dcbio','Pain-o-matic','Age of Philosophy','Calf Generator'))


p <- ggplot(data=df, aes(x=reorder(projeto,qproblemas), y=qproblemas)) +
geom_bar(stat="identity") +
theme_bw(base_size = 12) + 
scale_y_log10(breaks = scales::trans_breaks("log10", function(x) 10^x), labels = scales::trans_format("log10", scales::math_format(10^.x))) +
theme(axis.text.x = element_text(angle = 75, hjust = 1)) +
xlab("Projeto de TIS") +
 ylab("#Problemas (erros + warnings)")
	

pdf("Figuras/ProblemasPorProjeto.pdf", width = 8, height = 5)
plot(p)
dev.off()