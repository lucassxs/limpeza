dados <- read.csv('tempo.csv', sep = ';', stringsAsFactors = T)
dados

summary(dados$Umidade)
dados[dados$Temperatura < -130 | dados$Temperatura > 130,]$Temperatura <- median(dados$Temperatura)
dados

dados[is.na(dados$Umidade),]$Umidade = median(dados$Umidade, na.rm = T)
dados[dados$Umidade < 0 | dados$Umidade > 100,]$Umidade <- mean(dados$Umidade)
dados


dados <- dados[-which(dados$Vento == ""),]
dados

data.frame(table(unlist(strsplit(tolower(dados$Aparencia), " "))))

dados[dados$Aparencia == "menos", ]$Aparencia = "sol"
dados



