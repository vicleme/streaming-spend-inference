# Parte 3 / Part 3: Tamanho mínimo da amostra para estimar a média
# Minimum sample size to estimate the mean. Run from the repository root.

piloto <- read.csv("data/piloto_25.csv")
x  <- piloto$Gasto_reais
S2 <- var(x)                         # variância da piloto (divisor n - 1), estimativa de sigma^2

eps <- 50                            # erro máximo, em R$ (absoluto)
conf <- 0.95
# Tabela III - normal padrão: área entre 0 e z = (1 - alfa)/2 = 0.47500  ->  z = 1.96
z_tab <- 1.96
z_exato <- qnorm(1 - (1 - conf)/2)   # conferência

n_calc <- z_tab^2 * S2 / eps^2       # n = z^2 * S^2 / eps^2
n_min  <- ceiling(n_calc)            # sempre arredondar para CIMA

cat("S2 =", S2, "| eps =", eps, "| z (Tabela III - normal padrão) =", z_tab, "| z exato =", round(z_exato, 4), "\n")
cat("n calculado =", n_calc, "\n")
cat("n mínimo    =", n_min, "\n")

# Conferência: a margem de erro com n_min e com n_min - 1
for (n in c(n_min - 1, n_min)) {
  cat("n =", n, "-> margem = z * S / raiz(n) =", z_tab * sqrt(S2) / sqrt(n), "\n")
}
