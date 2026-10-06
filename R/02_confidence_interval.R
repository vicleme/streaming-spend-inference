# Parte 2 / Part 2: Intervalo de confiança para a média, variância desconhecida
# 95% CI for the mean, unknown variance (Student's t). Run from the repository root.

piloto <- read.csv("data/piloto_25.csv")   # gerado por R/01_pilot_sample.R
x <- piloto$Gasto_reais
n <- length(x)

media <- mean(x)                           # x barra
S     <- sd(x)                             # desvio padrão amostral (divisor n - 1)
EP    <- S / sqrt(n)                       # erro padrão estimado

conf  <- 0.95
alfa  <- 1 - conf                          # nível de significância
gl    <- n - 1                             # graus de liberdade

# Valor da Tabela V - t de Student (bicaudal), linha 24, coluna 5%: 2.064
t_tab <- 2.064
# Conferência com o software (diferença só de arredondamento da tabela)
t_exato <- qt(1 - alfa/2, df = gl)

margem <- t_tab * EP
ic <- c(media - margem, media + margem)

cat("n =", n, "| gl =", gl, "\n")
cat("x barra =", media, "| S =", S, "| EP = S/raiz(n) =", EP, "\n")
cat("t (Tabela V - t de Student) =", t_tab, "| t exato (qt) =", round(t_exato, 4), "\n")
cat("Margem de erro =", margem, "\n")
cat("IC(mu; 95%) = [", round(ic[1], 2), ";", round(ic[2], 2), "]\n")
cat("Conferência com t exato: [", round(media - t_exato*EP, 2), ";", round(media + t_exato*EP, 2), "]\n")
