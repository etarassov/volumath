---
id: "3614"
title: "Le chiffre des dizaines d'une grande puissance de 7"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [puissances, restes, periodicite, deux-derniers-chiffres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Number Theory"
  reference: "Handout-5143-5656.pdf, problème 6.8 (AMC 8 2011, problème 22)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5143-5656.pdf"
---

## Statement

Quel est le chiffre des dizaines de $7^{2011}$ ?

## Hints

1. Le chiffre des dizaines et le chiffre des unités, ce sont les deux derniers chiffres, c'est-à-dire le reste de la division par $100$.
2. Calcule les deux derniers chiffres de $7^1$, $7^2$, $7^3$, $7^4$, $7^5$. Que remarques-tu ?
3. Une fois la période repérée, il suffit de savoir où $2011$ tombe dans le cycle : fais la division euclidienne de $2011$ par la longueur du cycle.

## Solution

**Étape 1. Ce qu'il faut calculer.**

Les deux derniers chiffres d'un entier sont exactement le reste de sa division par $100$. On cherche donc le reste de $7^{2011}$ dans la division par $100$, puis on en lira le chiffre des dizaines.

**Étape 2. Chercher un cycle.**

Pour passer d'une puissance à la suivante, on multiplie par $7$ et on ne garde que les deux derniers chiffres (les chiffres plus à gauche n'influencent jamais les deux derniers).

$$7^1 = 7 \quad \rightarrow \quad 07$$
$$7^2 = 49 \quad \rightarrow \quad 49$$
$$7^3 = 343 \quad \rightarrow \quad 43$$
$$43 \times 7 = 301 \quad \rightarrow \quad 7^4 \text{ se termine par } 01$$
$$1 \times 7 = 7 \quad \rightarrow \quad 7^5 \text{ se termine par } 07$$

On retombe sur $07$, qui était le début. À partir de là tout se répète : les deux derniers chiffres de $7^n$ suivent le cycle

$$07, \ 49, \ 43, \ 01, \ 07, \ 49, \ 43, \ 01, \ \ldots$$

de longueur $4$.

**Étape 3. Placer $2011$ dans le cycle.**

Divisons $2011$ par $4$ :

$$2011 = 4 \times 502 + 3$$

Le reste est $3$, donc $7^{2011}$ se termine comme $7^3$, c'est-à-dire par $43$.

Plus précisément, $7^{2011} = 7^{4 \times 502} \times 7^3 = (7^4)^{502} \times 343$. Comme $7^4$ se termine par $01$, toutes ses puissances se terminent aussi par $01$, et multiplier par $343$ redonne bien un nombre se terminant par $43$.

**Réponse.** $7^{2011}$ se termine par $43$, donc son chiffre des dizaines est $4$ (et son chiffre des unités est $3$).

## Going further

Le même cycle donne d'un coup toutes les réponses : si le reste de $n$ dans la division par $4$ vaut $1$, $2$, $3$ ou $0$, alors $7^n$ se termine respectivement par $07$, $49$, $43$ ou $01$.

Attention, la longueur du cycle dépend de la base. Pour les deux derniers chiffres de $3^n$, le cycle est $03, 09, 27, 81, 43, 29, 87, 61, 83, 49, 47, 41, 23, 69, 07, 21, 63, 89, 67, 01$, de longueur $20$.
