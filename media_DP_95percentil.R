meuDf <- read.table("C:\\Users\\danie\\Desktop\\DataSet.csv", header = TRUE,sep = ",")
class <- c('totalProblemasClasseFrequente','totalProblemas','totalProblemasErros','totalProblemasWarnings','totalClasses')
for( c in class){
  print(paste(c, mean(meuDf[,c]), sd(meuDf[,c]), quantile(meuDf[,c], c(.95)), sep=","))
}