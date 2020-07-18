setwd("C:/Users/danie/Desktop")
prg <- read.table("DataSet.csv", head=T, sep=",")

dependent <- c('totalProblemasClasseFrequente','totalProblemas','totalProblemasErros','totalProblemasWarnings','totalClasses')
independent <- c('numeroCommits','linguagensProgramacaoUtilizadas','usoTestesAutomatizados','frequenciaInteracaoCliente','tamanhoSprints','artefatosEntreguesCiclo','ferramentasComunicacaoEquipe','tamanhoEquipe','periodoTisRealizado')


for( i in independent){
  for( d in dependent){
    p = cor.test(prg[,i],prg[,d], method="spearman")$p.value
    rho = cor.test(prg[,i],prg[,d], method="spearman")$estimate
    print(paste(i, d, p, rho, sep=","))
  }
}
