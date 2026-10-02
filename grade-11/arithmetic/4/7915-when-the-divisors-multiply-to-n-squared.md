---
id: "7915"
title: "Quand le produit des diviseurs vaut n au carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [diviseurs, nombre-de-diviseurs, nombres-premiers, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 7 (énoncé p. 22, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Déterminer le nombre d'entiers $n \ge 1$ vérifiant les deux conditions suivantes :

1. le produit de tous les entiers naturels qui divisent $n$ est égal à $n^2$ ;
2. $n$ n'est divisible par aucun nombre premier supérieur ou égal à $10$.

## Hints

1. Essaie de petites valeurs : $n = 6$, $n = 8$, $n = 12$, $n = 16$. Dans quels cas le produit des diviseurs vaut-il $n^2$ ?
2. Les diviseurs de $n$ vont par paires : à côté du diviseur $d$ se trouve le diviseur $n/d$. Que vaut le produit de ces deux-là ?
3. Si $n$ a exactement $k$ diviseurs, exprime le produit de tous ses diviseurs comme une puissance de $n$.
4. La condition devient donc une condition sur le **nombre** de diviseurs de $n$. Quels entiers ont ce nombre de diviseurs ?

## Solution

**La réponse : il y a $11$ tels entiers.**

**Étape 1 : le produit de tous les diviseurs.**

Soit $n \ge 2$ et soit $k$ son nombre de diviseurs positifs. Apparions chaque diviseur $d$ avec le diviseur $\dfrac{n}{d}$. Le produit de deux diviseurs appariés vaut $n$.

Si l'on note $P$ le produit de tous les diviseurs, alors en multipliant $P$ par lui-même mais en parcourant les diviseurs dans l'ordre inverse, on obtient

$$P^2 = \prod_{d \mid n} d \times \prod_{d \mid n} \frac{n}{d} = \prod_{d \mid n} \left(d \times \frac{n}{d}\right) = n^{k} .$$

La condition $P = n^2$ équivaut donc à $n^4 = n^k$, c'est-à-dire, pour $n \ge 2$, à

$$k = 4 .$$

*Le cas $n = 1$ se traite à part :* son seul diviseur est $1$, le produit vaut $1$, et $n^2 = 1$ aussi. Donc $n = 1$ convient.

**Étape 2 : quels entiers ont exactement $4$ diviseurs ?**

Écrivons la décomposition en facteurs premiers de $n$ sous la forme $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$. Son nombre de diviseurs vaut

$$k = (\alpha_1 + 1)\cdots(\alpha_r + 1) .$$

Pour que ce produit vaille $4$, il n'y a que deux possibilités :

- un seul facteur, avec $\alpha_1 + 1 = 4$, donc $n = p^3$ avec $p$ premier ;
- deux facteurs, avec $\alpha_1 + 1 = \alpha_2 + 1 = 2$, donc $n = pq$ avec $p$ et $q$ premiers distincts.

**Étape 3 : on impose la seconde condition.**

Les nombres premiers strictement inférieurs à $10$ sont

$$2, \quad 3, \quad 5, \quad 7 .$$

- **Cubes de nombres premiers :** $2^3 = 8$, $3^3 = 27$, $5^3 = 125$, $7^3 = 343$. Cela fait $4$ entiers.
- **Produits de deux nombres premiers distincts :** il faut choisir $2$ nombres parmi $4$, soit $\binom{4}{2} = 6$ possibilités : $6$, $10$, $14$, $15$, $21$, $35$.

**Étape 4 : le total.**

$$1 \ (\text{pour } n=1) \ + \ 4 \ + \ 6 \ = \ 11 .$$

**Conclusion.** Il y a exactement $\boxed{11}$ tels entiers : $1$, $6$, $8$, $10$, $14$, $15$, $21$, $27$, $35$, $125$, $343$.
