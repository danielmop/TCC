import matplotlib.pyplot as plt
fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
df = [20,53,63,96,146,272,909,1155,3302,3465,10963,19359]
project=['apacteca','pectometro','Kanleitos','Gestao CSF','Bartech','Private Class','Alpmys','Will List','Novolharua','Apac','gmfonseca','Projeto Incluir']
ax.bar(project,df,)
plt.xlabel("Nome dos projetos TIS")
plt.ylabel("Quantidade de problemas encontrados")
plt.title("Quantidade de problemas por projeto")
plt.xticks(rotation=90)
plt.show()