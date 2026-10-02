---
id: "11601"
title: "a³ + b⁵ + c⁷ + d¹¹ = e¹³ a une infinité de solutions"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [puissances, puissances-de-deux, equation-diophantienne, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices Juniors, exercice 1 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

Montrer que l'équation

$$a^3 + b^5 + c^7 + d^{11} = e^{13}$$

admet une infinité de solutions où $a$, $b$, $c$, $d$ et $e$ sont des entiers strictement positifs.

## Hints

1. Il est très difficile de trouver une solution « au hasard ». Cherche plutôt des solutions où les cinq nombres sont des puissances de $2$.
2. Si les quatre termes de gauche sont égaux, leur somme vaut quatre fois l'un d'eux. Or $4 = 2^2$.
3. On cherche donc un exposant $N$ tel que $a^3 = b^5 = c^7 = d^{11} = 2^N$. Il faut que $N$ soit un multiple de $3$, de $5$, de $7$ et de $11$, et que $N + 2$ soit un multiple de $13$.
4. Essaie $N = 3 \times 5 \times 7 \times 11$. Pour en avoir une infinité, cherche ensuite d'autres valeurs de $N$ qui conviennent.

## Solution

**L'idée : chercher des solutions formées de puissances de 2, avec quatre termes égaux à gauche.**

Supposons que les quatre termes de gauche soient tous égaux à une même puissance de $2$ :

$$a^3 = b^5 = c^7 = d^{11} = 2^N.$$

Alors le membre de gauche vaut $4 \times 2^N = 2^2 \times 2^N = 2^{N+2}$. Pour que ce soit égal à $e^{13}$, on prend $e = 2^m$ avec $13m = N + 2$.

Il nous faut donc un entier $N$ tel que :

- $N$ soit un multiple de $3$, de $5$, de $7$ et de $11$, pour que $a = 2^{N/3}$, $b = 2^{N/5}$, $c = 2^{N/7}$ et $d = 2^{N/11}$ soient des entiers ;
- $N + 2$ soit un multiple de $13$, pour que $e = 2^{(N+2)/13}$ soit un entier.

**Une première solution.** Le nombre $N = 3 \times 5 \times 7 \times 11 = 1155$ est un multiple de $3$, $5$, $7$ et $11$. Et $N + 2 = 1157 = 13 \times 89$ est un multiple de $13$. On obtient

$$a = 2^{385}, \quad b = 2^{231}, \quad c = 2^{165}, \quad d = 2^{105}, \quad e = 2^{89}.$$

Vérifions : $a^3 = 2^{3 \times 385} = 2^{1155}$, $b^5 = 2^{5 \times 231} = 2^{1155}$, $c^7 = 2^{7 \times 165} = 2^{1155}$ et $d^{11} = 2^{11 \times 105} = 2^{1155}$. La somme vaut donc

$$4 \times 2^{1155} = 2^{1157} = 2^{13 \times 89} = \left(2^{89}\right)^{13} = e^{13}.$$

**Une infinité de solutions.** Prenons maintenant $N = 1155 \times (1 + 13k)$, où $k$ est un entier naturel quelconque.

- $N$ est toujours un multiple de $1155$, donc de $3$, $5$, $7$ et $11$.
- $N + 2 = 1155 + 2 + 1155 \times 13k = 1157 + 13 \times 1155k = 13 \times (89 + 1155k)$ est un multiple de $13$.

Pour chaque entier $k \geqslant 0$, on obtient donc la solution

$$a = 2^{385(1+13k)}, \quad b = 2^{231(1+13k)}, \quad c = 2^{165(1+13k)}, \quad d = 2^{105(1+13k)}, \quad e = 2^{89 + 1155k}.$$

Ces solutions sont toutes différentes, puisque $e$ change avec $k$.

**Conclusion : l'équation a une infinité de solutions en entiers strictement positifs.**

### Une autre façon d'en fabriquer une infinité

Une fois qu'on a **une** solution $(a, b, c, d, e)$, on en fabrique autant qu'on veut. Posons $M = 3 \times 5 \times 7 \times 11 \times 13 = 15015$, et prenons un entier $t \geqslant 1$. Les nombres

$$a\,t^{M/3}, \quad b\,t^{M/5}, \quad c\,t^{M/7}, \quad d\,t^{M/11}, \quad e\,t^{M/13}$$

sont des entiers, et chacun des cinq termes de l'équation est multiplié par $t^M$. Par exemple $\left(a\,t^{M/3}\right)^3 = a^3\,t^M$. L'égalité reste donc vraie, et on obtient une nouvelle solution pour chaque valeur de $t$.
