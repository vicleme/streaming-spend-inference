# Streaming Spend Inference

🇺🇸 **Read in English:** [README.md](README.md)

Estatística inferencial, passo a passo, sobre o gasto de 100.000 clientes de uma plataforma de streaming: amostragem aleatória simples, intervalo de confiança, tamanho de amostra, distribuição da média amostral e teste de hipótese.

Este é um trabalho da disciplina *Estatística Indutiva*, curso de Ciência de Dados, Fatec Baixada Santista Rubens Lara. O objetivo é entender e treinar cada etapa, e não apenas chegar aos números.

## O que o projeto cobre

| Parte | Tema | Ideia central |
|---|---|---|
| 1 | Amostra-piloto | Amostra aleatória simples (AAS) de 25 clientes; tabela, média e variância (divisor n − 1) |
| 2 | Intervalo de confiança | IC de 95% para a média com variância desconhecida (distribuição t, ν = n − 1) |
| 3 | Tamanho da amostra | n = z² · s² / ε², com ε = R$ 50,00 e confiança de 95%, arredondado para cima |
| 4 | Distribuição da média amostral | 100 amostras; média e desvio-padrão das 100 médias contra σ/√n (Teorema do Limite Central) |
| 5 | Teste de hipótese | Teste bilateral para μ = R$ 800,00, σ = 387 conhecido, α = 5% |

O enunciado completo está em [`docs/`](docs/): o original em português ([`atividade-pratica-1.pt-BR.md`](docs/atividade-pratica-1.pt-BR.md)) e uma tradução não oficial para o inglês ([`assignment-1.en.md`](docs/assignment-1.en.md)).

## Abordagem

As resoluções seguem o método ensinado na disciplina, para que cada resultado possa ser reproduzido à mão:

- os valores críticos são lidos nas tabelas impressas (normal padrão, t de Student); o valor do software aparece só como conferência;
- os graus de liberdade são ν = n − 1, e a variância amostral usa o divisor n − 1;
- o tamanho da amostra n é sempre arredondado **para cima**;
- as amostras são sorteadas por AAS **sem reposição**, com semente fixa para reprodutibilidade;
- a região crítica do teste é escrita na escala da média amostral, e a conclusão usa a linguagem do problema.

O código apoia a explicação; ele não a substitui.

## Dados

A base de dados (`clientes_plataforma_Streaming.csv`, 100.000 linhas) é material da disciplina e está em [`data/`](data/) para que todos os resultados possam ser reproduzidos. Ela continua sendo de propriedade da disciplina; se o responsável pedir, será removida. Veja [`data/README.md`](data/README.md) para as colunas.

## Como executar

Basta ter o R (versão 4 ou superior). Os scripts são escritos para rodar com o R base, sem pacotes extras, sempre que possível.

- **Localmente:** instale o R e execute os scripts de `R/` a partir da raiz do repositório (eles leem `data/clientes_plataforma_Streaming.csv`).
- **Google Colab:** abra um notebook de `notebooks/` e escolha *Ambiente de execução → Alterar tipo de ambiente de execução → R*.

## Estrutura do repositório

```
.
├── docs/         enunciado (original em pt-BR + tradução em inglês)
├── data/         base da disciplina e arquivos gerados pelos scripts
├── R/            scripts em R, um por parte
├── notebooks/    notebooks do Colab
├── report/       relatório final
├── LICENSE
├── README.md
└── README.pt-BR.md
```

As pastas são preenchidas conforme o trabalho avança, uma parte por vez.

## Situação

As cinco partes estão resolvidas (`R/01` a `R/05`) e redigidas passo a passo no relatório impresso (`report/relatorio.pdf`). Dúvida em aberto para a professora: na Parte 4, "100 amostras de mesmo tamanho" foi lido como n = 272 (resultado da Parte 3), com n = 100 apresentado como complemento.

## Licença

[MIT](LICENSE) © 2026 Victor Gabriel Leme da Silva
