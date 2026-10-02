---
id: "10843"
title: "n³ − 3n² + n + 2 est une puissance de 5"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [factorisation, puissances, divisibilite, diviseurs, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 1 (arithmétique)"
  reference: "2017-10_pofm-2017-2018-envoi1-1.pdf, Exercices communs, exercice 5 ; corrigé 2017-11_pofm-2017-2018-envoi1-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/pofm-2017-2018-envoi1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_pofm-2017-2018-envoi1-1.pdf"
---

## Statement

Trouver tous les entiers $m \geqslant 0$ et $n \geqslant 0$ tels que

$$n^3 - 3n^2 + n + 2 = 5^m .$$

## Hints

1. Calcule le membre de gauche pour $n = 0, 1, 2, 3, 4$. Pour quelle valeur de $n$ s'annule-t-il ?
2. Puisque $n = 2$ annule l'expression, on peut la factoriser par $n - 2$. Trouve l'autre facteur.
3. Pour $n \geqslant 3$, les deux facteurs sont positifs et leur produit est une puissance de $5$. Que peut-on dire de chacun d'eux ? Lequel est le plus petit ?
4. Vérifie que $n^2 - n - 1 = (n - 2)(n + 1) + 1$.

## Solution

**Réponse : $(n, m) = (1, 0)$ et $(n, m) = (3, 1)$.**

### Étape 1 : on factorise

Pour $n = 2$, on trouve $8 - 12 + 2 + 2 = 0$. Cela suggère de mettre $n - 2$ en facteur. On vérifie en développant :
$$(n - 2)\left(n^2 - n - 1\right) = n^3 - n^2 - n - 2n^2 + 2n + 2 = n^3 - 3n^2 + n + 2 .$$
L'équation s'écrit donc
$$(n - 2)\left(n^2 - n - 1\right) = 5^m .$$

### Étape 2 : les petites valeurs de $n$

- Pour $n = 0$, le membre de gauche vaut $(-2) \times (-1) = 2$, qui n'est pas une puissance de $5$.
- Pour $n = 1$, il vaut $(-1) \times (-1) = 1 = 5^0$. **C'est une solution, avec $m = 0$.**
- Pour $n = 2$, il vaut $0$, qui n'est pas une puissance de $5$.

### Étape 3 : le cas $n \geqslant 3$

Soit $n \geqslant 3$. Alors $n - 2 \geqslant 1$ et $n^2 - n - 1 = n(n - 1) - 1 \geqslant 3 \times 2 - 1 = 5$ : les deux facteurs sont des entiers strictement positifs.

*Chaque facteur est une puissance de $5$.* Les deux facteurs divisent $5^m$. Or un diviseur positif de $5^m$ n'a pas d'autre facteur premier que $5$ dans sa décomposition, donc c'est une puissance de $5$. On peut donc écrire
$$n - 2 = 5^a \qquad \text{et} \qquad n^2 - n - 1 = 5^b, \qquad \text{avec } a + b = m .$$

*Le plus petit divise le plus grand.* On a
$$\left(n^2 - n - 1\right) - (n - 2) = n^2 - 2n + 1 = (n - 1)^2 > 0,$$
donc $5^a < 5^b$, puis $a < b$. Ainsi $5^b = 5^a \times 5^{b-a}$ est un multiple de $5^a$ : **$n - 2$ divise $n^2 - n - 1$.**

*Conclusion de l'étape.* En développant, $(n - 2)(n + 1) = n^2 - n - 2$, donc
$$n^2 - n - 1 = (n - 2)(n + 1) + 1 .$$
Le nombre $n - 2$ divise $n^2 - n - 1$ et $(n - 2)(n + 1)$, donc il divise leur différence, qui vaut $1$. Comme $n - 2 \geqslant 1$, on obtient $n - 2 = 1$, c'est-à-dire $n = 3$.

Réciproquement, pour $n = 3$ : $27 - 27 + 3 + 2 = 5 = 5^1$. **C'est une solution, avec $m = 1$.**

### Conclusion

**Les solutions sont $(n, m) = (1, 0)$ et $(n, m) = (3, 1)$.**

## Going further

1. Remplace $5$ par un nombre premier $p$ quelconque. Montre que l'équation $n^3 - 3n^2 + n + 2 = p^m$ n'a une solution avec $m \geqslant 1$ que pour $p = 5$.
2. Où a-t-on utilisé que les deux facteurs sont **strictement** positifs ? Que se passerait-il si l'on cherchait aussi les $n$ négatifs ?
