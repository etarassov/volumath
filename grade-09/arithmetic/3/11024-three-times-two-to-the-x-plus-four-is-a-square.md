---
id: "11024"
title: "3 × 2ˣ + 4 = n²"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, puissances-de-deux, factorisation, carres-parfaits, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 3 (arithmétique)"
  reference: "2022-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 4 ; corrigé 2022-02_corrige-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-01_sujet-envoi-3.pdf"
---

## Statement

Trouver tous les couples $(x, n)$ d'entiers naturels non nuls tels que

$$3 \times 2^x + 4 = n^2 .$$

## Hints

1. Fais passer le $4$ de l'autre côté et factorise $n^2 - 4$.
2. Les deux facteurs $n - 2$ et $n + 2$ n'ont que $2$ et $3$ comme facteurs premiers. Ils diffèrent de $4$ : que peux-tu dire de leur parité ? Peuvent-ils être tous les deux multiples de $8$ ?
3. L'un des deux facteurs vaut donc $2$, $4$, $6$ ou $12$. Il reste peu de cas à essayer.

## Solution

**On factorise.** L'équation s'écrit

$$(n - 2)(n + 2) = n^2 - 4 = 3 \times 2^x .$$

Comme $x \geqslant 1$, on a $n^2 > 4$, donc $n \geqslant 3$ et les deux facteurs $n - 2$ et $n + 2$
sont des entiers strictement positifs. Leur produit n'a que $2$ et $3$ comme facteurs premiers, donc
chacun d'eux est de la forme $2^e$ ou $3 \times 2^e$.

**Les deux facteurs sont pairs.** Leur produit $3 \times 2^x$ est pair, donc l'un des deux facteurs est
pair. Comme ils diffèrent de $4$, ils ont la même parité : ils sont donc pairs tous les deux.

**Ils ne sont pas tous les deux multiples de $8$.** Sinon leur différence, qui vaut $4$, serait un
multiple de $8$. Donc l'un des deux facteurs contient le facteur $2$ exactement une ou deux fois :
il vaut $2$, $4$, $2 \times 3 = 6$ ou $4 \times 3 = 12$.

**On essaie les cas.**

| facteur connu | $n$ | $n - 2$ | $n + 2$ | produit | solution ? |
|---|---|---|---|---|---|
| $n - 2 = 2$ | $4$ | $2$ | $6$ | $12 = 3 \times 2^2$ | oui, $x = 2$ |
| $n - 2 = 4$ | $6$ | $4$ | $8$ | $32$ | non, pas de facteur $3$ |
| $n - 2 = 6$ | $8$ | $6$ | $10$ | $60$ | non, facteur $5$ |
| $n - 2 = 12$ | $14$ | $12$ | $16$ | $192 = 3 \times 2^6$ | oui, $x = 6$ |
| $n + 2 = 2$ ou $4$ | $0$ ou $2$ | | | | non, car $n \geqslant 3$ |
| $n + 2 = 6$ | $4$ | $2$ | $6$ | | déjà vu |
| $n + 2 = 12$ | $10$ | $8$ | $12$ | $96 = 3 \times 2^5$ | oui, $x = 5$ |

**Vérification.** $3 \times 2^2 + 4 = 16 = 4^2$, $\; 3 \times 2^5 + 4 = 100 = 10^2$ et
$3 \times 2^6 + 4 = 196 = 14^2$.

Les solutions sont $(x, n) = (2, 4)$, $(5, 10)$ et $(6, 14)$.
