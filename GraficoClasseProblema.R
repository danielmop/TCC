library(ggplot2)

#Path to the main folder
setwd("C:\\Users\\danie\\OneDrive\\Documentos")

df <- data.frame(qproblemas=c(2663,29684,3220398,4427,397,14922,2995809,21861),
                 classe=c('Mismatched property value','Cannot resolve file/directory','Assign variable errors','Redundant variables','XML tag problems','Missing required fields','Unused import/parameter/field','CSS property problems'))


p <- ggplot(data=df, aes(x=classe, y=qproblemas)) +
  geom_bar(stat="identity") +
  geom_text(stat="identity", aes(label=qproblemas),  vjust=-1) + 
  theme_bw(base_size = 12) + 
  theme(axis.text.x = element_text(angle = 75, hjust = 1)) +
  scale_y_log10() +
  xlab("Classes de problemas") +
  ylab("Quantidade de problemas encontrados")


pdf("Figuras/ProblemasPorClasse.pdf", width = 7, height = 7)
plot(p)
dev.off()