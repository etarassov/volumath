---
id: "10828"
title: "Le plus petit entier qui n'est pas un quotient de différences de puissances de 2"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [puissances-de-deux, parite, fractions, recherche-exhaustive]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Trouver le plus petit entier strictement positif qui **ne** s'écrit **pas** sous la forme

$$\frac{2^a - 2^b}{2^c - 2^d},$$

où $a$, $b$, $c$, $d$ sont des entiers naturels ($0, 1, 2, \ldots$).

## Hints

1. Essaie d'écrire $1, 2, 3, \ldots$ sous cette forme. Pour $5$, pense à $15 / 3$.
2. Tu dois bloquer sur $11$. Pour montrer que $11$ ne marche pas, explique pourquoi on peut supposer $a > b$ et $c > d$, puis mets $2^b$ en facteur en haut et $2^d$ en bas.
3. Compare les puissances de $2$ des deux côtés de $2^b\left(2^{a-b} - 1\right) = 11 \times 2^d\left(2^{c-d} - 1\right)$ : tu dois trouver $b = d$.
4. Il reste $2^A - 1 = 11\left(2^C - 1\right)$. Regarde ce qui se passe pour $C = 1$, puis pour $C \geqslant 2$.

## Solution

**Réponse : $11$.**

### Étape 1 : les nombres de $1$ à $10$ s'écrivent sous cette forme

$$1 = \frac{2 - 1}{2 - 1}, \qquad 2 = \frac{4 - 2}{2 - 1}, \qquad 3 = \frac{4 - 1}{2 - 1}, \qquad 4 = \frac{8 - 4}{2 - 1}, \qquad 5 = \frac{16 - 1}{4 - 1},$$
$$6 = \frac{8 - 2}{2 - 1}, \qquad 7 = \frac{8 - 1}{2 - 1}, \qquad 8 = \frac{16 - 8}{2 - 1}, \qquad 9 = \frac{64 - 1}{8 - 1}, \qquad 10 = \frac{32 - 2}{4 - 1} .$$
Ici $1 = 2^0$, $2 = 2^1$, $4 = 2^2$, et ainsi de suite.

### Étape 2 : $11$ ne s'écrit pas sous cette forme

Supposons par l'absurde que
$$11 = \frac{2^a - 2^b}{2^c - 2^d} .$$

*On peut supposer $a > b$ et $c > d$.* Le dénominateur n'est pas nul, et le numérateur non plus puisque le quotient vaut $11$. Ils ont le même signe, puisque le quotient est positif. S'ils sont tous les deux négatifs, on échange $a$ avec $b$ et $c$ avec $d$ : cela change le signe du numérateur et du dénominateur, et le quotient ne change pas. On peut donc supposer $2^a > 2^b$ et $2^c > 2^d$, c'est-à-dire $a > b$ et $c > d$.

Posons $A = a - b \geqslant 1$ et $C = c - d \geqslant 1$. En mettant $2^b$ et $2^d$ en facteur, on a $2^a - 2^b = 2^b\left(2^A - 1\right)$ et $2^c - 2^d = 2^d\left(2^C - 1\right)$, donc
$$2^b\left(2^A - 1\right) = 11 \times 2^d \left(2^C - 1\right) .$$
Les nombres $2^A - 1$, $2^C - 1$ et $11$ sont impairs.

*On a $b = d$.* Si $b > d$, on divise par $2^d$ : $2^{b-d}\left(2^A - 1\right) = 11\left(2^C - 1\right)$. Le membre de gauche est pair, celui de droite est impair : c'est impossible. De même, $b < d$ est impossible. Donc $b = d$, et en simplifiant :
$$2^A - 1 = 11\left(2^C - 1\right), \qquad \text{c'est-à-dire} \qquad 2^A = 11 \times 2^C - 10 .$$

*Le cas $C = 1$.* On obtient $2^A = 22 - 10 = 12$, qui n'est pas une puissance de $2$.

*Le cas $C \geqslant 2$.* On écrit $2^A = 2 \times \left(11 \times 2^{C-1} - 5\right)$. Comme $C - 1 \geqslant 1$, le nombre $11 \times 2^{C-1}$ est pair, donc $11 \times 2^{C-1} - 5$ est **impair**. Or le seul diviseur impair d'une puissance de $2$ est $1$. Donc $11 \times 2^{C-1} - 5 = 1$, soit $11 \times 2^{C-1} = 6$, ce qui est impossible car $6$ n'est pas un multiple de $11$.

Dans tous les cas, on aboutit à une contradiction. **Donc $11$ ne s'écrit pas sous cette forme.**

### Conclusion

Les entiers de $1$ à $10$ s'écrivent sous la forme demandée, mais pas $11$. **Le plus petit entier cherché est $11$.**

## Going further

1. Montre que $13$ ne s'écrit pas non plus sous cette forme.
2. Montre que tout nombre impair qui s'écrit sous cette forme est un quotient $\left(2^A - 1\right) / \left(2^C - 1\right)$. Écris en base deux les nombres $\left(2^6 - 1\right) / \left(2^2 - 1\right)$ et $\left(2^6 - 1\right) / \left(2^3 - 1\right)$. Que remarques-tu ?
