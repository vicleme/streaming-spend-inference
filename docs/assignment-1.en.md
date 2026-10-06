# Practical Assignment 1: Inferential Statistics

> Unofficial English translation. The official statement is the Portuguese original: [atividade-pratica-1.pt-BR.md](atividade-pratica-1.pt-BR.md).

Fatec Baixada Santista Rubens Lara | Centro Paula Souza | State of São Paulo Government

**Inferential Statistics** | **Data Science** | **3rd Cycle**

---

The file `clientes_plataforma_Streaming.csv` contains information on 100,000 customers of a streaming platform. This assignment studies the variable `gasto_reais`, the customers' spending on the platform, in Brazilian reais.

The goal is to use a pilot sample to estimate characteristics of the population, determine an adequate sample size, study the distribution of the sample mean and carry out a hypothesis test for the population mean.

## Part 1: Pilot sample

Draw, by simple random sampling, a pilot sample of 25 customers from the database, for the variable `gasto_reais`.

a) present the pilot sample data in a table;

b) compute the mean and the variance.

## Part 2: Confidence interval

Assume the population variance is unknown. Using the pilot sample, build a 95% confidence interval for the customers' mean spending on the platform. Show the calculations and interpret the interval in the context of the problem.

## Part 3: Sample size

Use the variance obtained from the pilot sample and determine the minimum sample size needed to estimate the customers' mean spending, with a 95% confidence level and an estimation error of R$ 50.00. Present the formula used, the calculations and the minimum sample size found.

## Part 4: Distribution of the sample mean

This step investigates the behavior of the sample mean. To do so:

1. draw 100 random samples of the same size from the database;
2. compute the mean of `gasto_reais` in each of the 100 samples;
3. organize the 100 means in a table;
4. compute the mean and the standard deviation of the 100 sample means.

## Part 5: Hypothesis test for the mean

The hypothesis is that the customers' mean spending on the platform is R$ 800.00. Using the sample of size 100 and knowing that the population standard deviation is 387 reais, carry out a two-sided test at the 5% significance level, considering:

- **H₀: μ = 800 reais**
- **H₁: μ ≠ 800 reais**

Present the steps of the proposed hypothesis test.

## Final product

Submit a printed report containing everything requested in each part of this assignment.
