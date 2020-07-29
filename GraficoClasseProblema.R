library(ggplot2)

#Path to the main folder
setwd("C:\\Users\\lesandrop\\Documents\\GitHub\\TCC")

df <- data.frame(qproblemas=c(397,2663,29684,3220398,4427,14922,2995809,21861),
                 classe=c('XML tag problems','Mismatched property value','Cannot resolve file/directory','Assign variable errors','Redundant variables','Missing required fields','Unused import/parameter/field','CSS property problems'))


p <- ggplot(data=df, aes(x=reorder(classe,qproblemas), y=qproblemas)) +
  geom_bar(stat="identity") +
  geom_text(stat="identity", aes(label=qproblemas),  hjust=-1) + 
  theme_bw(base_size = 12) + 
  scale_y_log10(breaks = scales::trans_breaks("log10", function(x) 10^x),
   labels = scales::trans_format("log10", scales::math_format(10^.x))) +
  xlab("Classes de problemas") +
  ylab("#Problemas (erros + warnings)")


pdf("Figuras/ProblemasPorClasse.pdf", width = 7, height = 4)
plot(p + coord_flip())
dev.off()