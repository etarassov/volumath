---
id: "7902"
title: "Quand 3n + 1 se termine par un zéro"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, chiffre des unites, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 4 (énoncé p. 21, solution p. 24)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Combien y a-t-il d'entiers $n$ compris entre $1$ et $1000$ tels que $3n + 1$ soit divisible par $10$ ?

## Hints

1. Un nombre est divisible par $10$ exactement quand son chiffre des unités est $0$.
2. Le chiffre des unités de $3n + 1$ ne dépend que du chiffre des unités de $n$. Pourquoi ?
3. Essaie les dix possibilités pour le chiffre des unités de $n$ : $0$, $1$, $2$, …, $9$. Combien en marche-t-il ?
4. Il reste à compter les entiers de $1$ à $1000$ qui se terminent par ce chiffre-là.

## Solution

**La réponse : il y en a $100$.**

**Étape 1 : seul le dernier chiffre de $n$ compte.**

Écrivons $n = 10q + r$, où $r$ est le chiffre des unités de $n$ (donc $0 \le r \le 9$) et $q$ est ce qui reste devant. Alors

$$3n + 1 = 3(10q + r) + 1 = 10 \times (3q) + (3r + 1) .$$

Le premier morceau, $10 \times (3q)$, est un multiple de $10$. Donc $3n+1$ est un multiple de $10$ exactement quand $3r + 1$ en est un.

**Étape 2 : on essaie les dix chiffres.**

| $r$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|---|
| $3r+1$ | 1 | 4 | 7 | 10 | 13 | 16 | 19 | 22 | 25 | 28 |

Un seul de ces nombres est divisible par $10$ : celui de la colonne $r = 3$.

Donc $3n + 1$ est divisible par $10$ si et seulement si $n$ se termine par le chiffre $3$.

**Étape 3 : on compte.**

Les entiers entre $1$ et $1000$ qui se terminent par $3$ sont

$$3, \ 13, \ 23, \ 33, \ \ldots, \ 983, \ 993 .$$

Ils vont de $3$ à $993$ de $10$ en $10$. Il y en a

$$\frac{993 - 3}{10} + 1 = 99 + 1 = 100 .$$

**Conclusion.** Il y a exactement $\boxed{100}$ tels entiers.
