if (!require(dplyr)) install.packages("dplyr")
library(dplyr)

if (!require(car)) install.packages("car")
library(car)

setwd("C:/Users/Fernanda Alice/Documents/UFAM/TCC/test-t")

dados <- read.csv('somas.csv', sep = ',', dec = ',', stringsAsFactors = TRUE, fileEncoding = "latin1")
glimpse(dados)

shapiro_resultados <- dados %>%
  group_by(genero) %>%
  summarise(p_valor = shapiro.test(soma_clance)$p.value)

print(shapiro_resultados)

leveneTest(soma_clance ~ genero, dados, center = mean)

wilcox.test(soma_clance ~ genero, data = dados, exact = FALSE)

medianas <- tapply(dados$soma_clance, dados$genero, median)
print(medianas)

cores_respostas <- c("#B39DDB", "#FFD54F")

boxplot(soma_clance ~ genero, data = dados, 
        ylab = "Soma Clance", xlab = "Gênero", 
        col = cores_respostas)
