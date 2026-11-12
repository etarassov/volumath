---
id: "22047"
title: "Deux équations sans solution : 2023 et 2022"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, restes, carres, parite, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["8654", "8655"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Modulos » (Jean), exercice 8 (erreur de la source : pour la question 2, le corrigé écrit « 2021 ≡ 8 mod 11 » au lieu de 2022, et affirme que a⁵ − 2b² ne peut pas valoir 8 modulo 11, ce qui est faux, par exemple pour a = 2 et b = 1 ; en fait modulo 11 l'expression prend toutes les valeurs sauf 7, donc cet argument ne prouve rien ; la solution ci-dessous passe par la parité et les restes modulo 8)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Montrer qu'il n'existe pas d'entiers $a$ et $b$ tels que
   $$a^2 + b^2 = 2023.$$
2. Montrer qu'il n'existe pas d'entiers $a$ et $b$ tels que
   $$a^5 - 2b^2 = 2022.$$

## Hints

1. Quels restes peut avoir un carré dans la division par $4$ ? Séparez le cas d'un nombre pair et celui d'un nombre impair.
2. Pour la question 2, regardez d'abord la parité de $a$, puis celle de $b$.
3. Montrez qu'un carré impair a toujours le reste $1$ dans la division par $8$.

## Solution

**Un outil : les carrés dans la division par $4$ et par $8$.**

- Si $n = 2m$ est pair, $n^2 = 4m^2$ a le reste $0$ dans la division par $4$.
- Si $n = 2m + 1$ est impair, $n^2 = 4m^2 + 4m + 1 = 4m(m+1) + 1$. Or $m$ et $m + 1$ sont deux entiers qui se suivent, donc l'un des deux est pair, et $m(m+1)$ est pair. Ainsi $4m(m+1)$ est un multiple de $8$, et **un carré impair a le reste $1$ dans la division par $8$**, donc aussi dans la division par $4$.

**Question 1.** D'après l'outil, chacun des nombres $a^2$ et $b^2$ a le reste $0$ ou $1$ dans la division par $4$. Leur somme a donc le reste $0 + 0 = 0$, $0 + 1 = 1$ ou $1 + 1 = 2$. Elle n'a jamais le reste $3$.

Or $2023 = 4 \times 505 + 3$ a le reste $3$. Donc $a^2 + b^2 = 2023$ est impossible.

**Question 2.** Supposons par l'absurde que $a^5 - 2b^2 = 2022$.

- *La parité de $a$.* On a $a^5 = 2022 + 2b^2 = 2\,(1011 + b^2)$, qui est pair. Si $a$ était impair, $a^5 = a \times a \times a \times a \times a$ serait impair. Donc $a$ est pair : $a = 2c$ avec $c$ entier, et $a^5 = 32\,c^5$.
- *On simplifie.* L'équation devient $32\,c^5 - 2b^2 = 2022$. En divisant par $2$ : $16\,c^5 - b^2 = 1011$, c'est-à-dire
  $$b^2 = 16\,c^5 - 1011.$$
- *La parité de $b$.* Le nombre $16\,c^5 - 1011$ est impair, donc $b^2$ est impair, et $b$ aussi. D'après l'outil, $b^2$ a le reste $1$ dans la division par $8$.
- *Le reste de l'autre membre.* Comme $1016 = 8 \times 127$, on a
  $$16\,c^5 - 1011 = 16\,c^5 - 1016 + 5 = 8\,(2c^5 - 127) + 5,$$
  qui a le reste $5$ dans la division par $8$.

Les deux membres de $b^2 = 16\,c^5 - 1011$ n'ont pas le même reste dans la division par $8$ : c'est une contradiction.

**Conclusion.** Aucune des deux équations n'a de solution en nombres entiers.

## Going further

1. Le nombre $2021$ a le reste $1$ dans la division par $4$, donc l'argument de la question 1 ne dit rien pour lui. Est-il pour autant une somme de deux carrés ? (On a $2021 = 43 \times 47$.)
2. Montrer qu'un nombre de la forme $8k + 7$ n'est jamais la somme de trois carrés.
