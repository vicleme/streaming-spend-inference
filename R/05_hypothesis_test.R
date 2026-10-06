# Parte 5 / Part 5: Teste de hipótese para a média (sigma conhecido, bicaudal)
# Hypothesis test for the mean (known sigma, two-tailed). Run from the repository root.

dados <- read.csv("data/clientes_plataforma_Streaming.csv")
N <- nrow(dados)

# Amostra de n = 100 clientes, AAS sem reposição, sorteada à parte
# (independente da piloto e das 100 amostras da Parte 4)
set.seed(42)                                   # mesma semente do grupo / group seed
n <- 100
linhas <- sample(1:N, n)
amostra <- dados[linhas, c("Cliente_ID", "Gasto_reais")]
write.csv(amostra[order(amostra$Cliente_ID), ], "data/amostra_teste_n100.csv", row.names = FALSE)

x_obs <- mean(amostra$Gasto_reais)             # média observada
mu0   <- 800                                   # H0: mu = 800   (H1: mu != 800)
sigma <- 387                                   # desvio padrão populacional (dado)
alfa  <- 0.05

# Passo: erro padrão
ep <- sigma / sqrt(n)

# Passo: valor crítico. Tabela III: área entre 0 e z = (1 - alfa)/2 = 0.47500 -> z = 1.96
z_tab   <- 1.96
z_exato <- qnorm(1 - alfa/2)                   # conferência

# Passo: região crítica na escala da média (aula 07, slides 11 e 12)
xL1 <- mu0 - z_tab * ep
xL2 <- mu0 + z_tab * ep

# Passo: decisão
z_obs <- (x_obs - mu0) / ep                    # conferência equivalente
rejeita <- (x_obs <= xL1) | (x_obs >= xL2)

cat("soma =", sum(amostra$Gasto_reais), "\n")
cat("x_obs =", x_obs, "| EP =", ep, "\n")
cat("z (Tabela III) =", z_tab, "| z exato =", round(z_exato, 4), "\n")
cat("RC: x <=", xL1, "ou x >=", xL2, "\n")
cat("z_obs =", z_obs, "\n")
cat("Rejeita H0?", rejeita, "\n")
