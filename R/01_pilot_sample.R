# Parte 1 / Part 1: Amostra-piloto / Pilot sample
# Rode a partir da raiz do repositório / Run from the repository root.

dados <- read.csv("data/clientes_plataforma_Streaming.csv")
N <- nrow(dados)                      # tamanho da população
cat("N =", N, "\n")

# AAS de n = 25 SEM reposição (sample() sem replace é sem reposição por padrão)
# SRS of n = 25 WITHOUT replacement; the seed makes the draw reproducible.
n <- 25
set.seed(42)
linhas <- sample(1:N, n)              # números sorteados entre 1 e N
piloto <- dados[linhas, ]

# (a) Tabela da amostra-piloto / pilot sample table
piloto_tab <- data.frame(i = 1:n, Cliente_ID = piloto$Cliente_ID, Gasto_reais = piloto$Gasto_reais)
print(piloto_tab, row.names = FALSE)

# (b) Média e variância (divisor n - 1) / mean and variance (divisor n - 1)
x <- piloto$Gasto_reais
soma   <- sum(x)
media  <- soma / n                    # x barra
desv2  <- (x - media)^2               # (xi - x barra)^2
SQ     <- sum(desv2)                  # soma dos quadrados dos desvios
S2     <- SQ / (n - 1)                # variância amostral
S      <- sqrt(S2)

cat("\nSoma           =", soma, "\n")
cat("Média (x barra) =", media, "\n")
cat("Soma dos quadrados dos desvios =", SQ, "\n")
cat("Variância S2    =", S2, "\n")
cat("Desvio padrão S =", S, "\n")

# Conferência com as funções do R / cross-check with built-in functions
cat("\nConferência: mean() =", mean(x), "| var() =", var(x), "| sd() =", sd(x), "\n")

# Salva para as partes seguintes / save for the next parts
write.csv(piloto_tab, "data/piloto_25.csv", row.names = FALSE)
