# Parte 4 / Part 4: Distribuição da média amostral
# Sampling distribution of the mean. Run from the repository root.

dados <- read.csv("data/clientes_plataforma_Streaming.csv")
N <- nrow(dados)
gasto <- dados$Gasto_reais

amostras_medias <- function(n, k = 100, semente = 42) {
  set.seed(semente)                       # mesma semente do grupo / group seed
  medias <- numeric(k)
  for (i in 1:k) {
    linhas <- sample(1:N, n)              # AAS sem reposição dentro de cada amostra
    medias[i] <- mean(gasto[linhas])      # média de gasto_reais na amostra i
  }
  medias
}

# --- Principal: n = 272 (tamanho mínimo da Parte 3) ---
n <- 272
medias <- amostras_medias(n)
tab <- data.frame(amostra = 1:100, media = round(medias, 2))
write.csv(tab, "data/medias_100_amostras_n272.csv", row.names = FALSE)

m_medias  <- mean(medias)                 # média das 100 médias
dp_medias <- sd(medias)                   # desvio padrão das 100 médias (divisor 99)
sigma <- 387                              # desvio padrão populacional (dado no enunciado, Parte 5)
cat("n =", n, "\n")
cat("Média das 100 médias =", m_medias, "\n")
cat("Desvio padrão das 100 médias =", dp_medias, "\n")
cat("Erro padrão teórico sigma/raiz(n) =", sigma / sqrt(n), "\n")
cat("Média da população (todos os 100000) =", mean(gasto), "\n")

# --- Complemento: n = 100 ---
medias100 <- amostras_medias(100)
cat("\nComplemento n = 100: média das médias =", mean(medias100),
    "| dp =", sd(medias100), "| sigma/raiz(n) =", sigma / sqrt(100), "\n")
write.csv(data.frame(amostra = 1:100, media = round(medias100, 2)),
          "data/medias_100_amostras_n100.csv", row.names = FALSE)

# --- Figura: população x distribuição das médias (como no script da aula 03) ---
options(OutDec = ",", scipen = 5)
pdf("report/fig_parte4.pdf", width = 8, height = 3.6)
par(mfrow = c(1, 2), mar = c(4.2, 4, 3, 1))
hist(gasto, breaks = 30, col = "gray80", probability = TRUE,
     main = "População (100 000 clientes)", xlab = "Gasto (R$)", ylab = "Densidade")
hist(medias, breaks = 12, col = "lightblue", probability = TRUE,
     main = "100 médias amostrais (n = 272)", xlab = "Média amostral (R$)", ylab = "Densidade")
curve(dnorm(x, m_medias, dp_medias), add = TRUE, lwd = 2)
dev.off()
