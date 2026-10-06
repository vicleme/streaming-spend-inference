# 1ª Atividade Prática: Estatística Indutiva

Fatec Baixada Santista Rubens Lara | Centro Paula Souza | Governo do Estado de São Paulo

**Estatística Indutiva** | **Ciência de Dados** | **3º Ciclo**

Reprodução do enunciado original em PDF (2 páginas), sem resumo. English translation: [assignment-1.en.md](assignment-1.en.md).

---

O arquivo `clientes_plataforma_Streaming.csv` contém informações de 100000 clientes de uma plataforma de streaming. Para esta atividade prática será estudada a variável `gasto_reais`, correspondente ao gasto, em reais, dos clientes da plataforma.

O objetivo é utilizar uma amostra-piloto para estimar características da população, determinar um tamanho adequado de amostra, estudar a distribuição da média amostral e realizar um teste de hipótese para a média populacional.

## Parte 1 — Amostra-piloto

Extraia, por amostragem aleatória simples, uma amostra-piloto de 25 clientes da base de dados. Para a variável `gasto_reais`.

a) apresente os dados da amostra-piloto em uma tabela;

b) calcule a média e a variância.

## Parte 2 — Intervalo de confiança

Considere que a variância populacional é desconhecida. Utilizando a amostra-piloto, construa um intervalo de confiança de 95% para o gasto médio dos clientes na plataforma. Apresente os cálculos e interprete o intervalo obtido no contexto do problema.

## Parte 3 — Determinação do tamanho da amostra

Utilize a variância obtida na amostra-piloto e determine o tamanho mínimo da amostra necessário para estimar o gasto médio dos clientes, considerando o nível de confiança de 95% e o erro estimado de R$ 50,00. Apresente a fórmula utilizada, os cálculos realizados e o tamanho mínimo de amostra encontrado.

## Parte 4 — Distribuição da média amostral

Nesta etapa será investigado o comportamento da média amostral. Para isso:

1. extraia 100 amostras aleatórias de mesmo tamanho da base de dados;
2. calcule a média de `gasto_reais` em cada uma das 100 amostras;
3. organize as 100 médias obtidas em uma tabela;
4. calcule a média e o desvio-padrão das 100 médias amostrais.

## Parte 5 — Teste de hipótese para a média

Deseja-se investigar a hipótese de que o gasto médio dos clientes na plataforma é de R$ 800,00. Utilizando a amostra de tamanho 100 e sabendo que o desvio padrão populacional é de 387 reais, realize um teste bilateral, com nível de significância de 5%, considerando:

- **H₀: μ = 800 reais**
- **H₁: μ ≠ 800 reais**

Apresente as etapas do teste de hipótese proposto.

## Produto final

Apresente um relatório, em papel, contendo tudo o que foi pedido em cada parte desta atividade prática.
