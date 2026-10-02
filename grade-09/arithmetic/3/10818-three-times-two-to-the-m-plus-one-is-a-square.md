---
id: "10818"
title: "3 × 2ᵐ + 1 = n²"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [equation-diophantienne, carre-parfait, puissances-de-deux, factorisation, parite, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe B, exercice 2 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Trouver tous les entiers strictement positifs $m$ et $n$ tels que

$$3 \times 2^m + 1 = n^2 .$$

## Hints

1. Écris l'équation sous la forme $3 \times 2^m = n^2 - 1$, puis factorise $n^2 - 1$.
2. Pourquoi $n$ est-il impair ? Écris alors $n - 1 = 2k$, de sorte que $n + 1 = 2k + 2$.
3. Tu dois arriver à $k(k + 1) = 3 \times 2^{m-2}$. L'un des deux nombres $k$ et $k + 1$ est impair : quelles valeurs peut-il prendre ?

## Solution

**Réponse : il y a deux solutions, $(m, n) = (3, 5)$ et $(m, n) = (4, 7)$.**

On vérifie : $3 \times 2^3 + 1 = 25 = 5^2$ et $3 \times 2^4 + 1 = 49 = 7^2$. Montrons qu'il n'y en a pas d'autre.

### Étape 1 : on factorise

L'équation s'écrit $3 \times 2^m = n^2 - 1$, c'est-à-dire
$$3 \times 2^m = (n - 1)(n + 1) .$$

### Étape 2 : $n$ est impair

Comme $m \geqslant 1$, le nombre $3 \times 2^m$ est pair, donc $n^2 = 3 \times 2^m + 1$ est impair, et $n$ aussi. De plus $n \neq 1$, car sinon le membre de droite serait nul. Donc $n \geqslant 3$.

Écrivons $n - 1 = 2k$, avec $k \geqslant 1$ entier. Alors $n + 1 = 2k + 2 = 2(k + 1)$, et l'équation devient
$$3 \times 2^m = 2k \times 2(k + 1) = 4\,k(k + 1) .$$

Si $m = 1$, cela donne $6 = 4\,k(k+1)$, impossible car $4$ ne divise pas $6$. Donc $m \geqslant 2$, et en divisant par $4$ :
$$k(k + 1) = 3 \times 2^{m-2} .$$

### Étape 3 : on regarde le facteur impair

Les nombres $k$ et $k + 1$ sont deux entiers consécutifs : l'un est pair, l'autre est impair. Notons $d$ celui qui est impair. C'est un diviseur de $3 \times 2^{m-2}$. Comme $d$ est impair, il n'a pas le facteur premier $2$ dans sa décomposition, donc il divise $3$ : **$d = 1$ ou $d = 3$.**

- **Si $d = 1$.** Comme $k \geqslant 1$, le nombre $k + 1$ vaut au moins $2$, donc ce n'est pas lui qui vaut $1$ : c'est $k = 1$. Mais alors $k(k + 1) = 2$, qui n'est pas un multiple de $3$. C'est impossible.
- **Si $d = 3$.** Le produit $k(k+1)$ vaut $3 \times 2^{m-2}$, et l'un des facteurs vaut $3$, donc l'autre, le facteur pair, vaut exactement $2^{m-2}$. Ce facteur pair est le voisin de $3$, donc il vaut $2$ ou $4$.
  - S'il vaut $2$ : $k = 2$, $k + 1 = 3$, et $2^{m-2} = 2$ donne $m = 3$. Alors $n = 2k + 1 = 5$.
  - S'il vaut $4$ : $k = 3$, $k + 1 = 4$, et $2^{m-2} = 4$ donne $m = 4$. Alors $n = 2k + 1 = 7$.

### Conclusion

Les seules solutions sont **$(m, n) = (3, 5)$ et $(m, n) = (4, 7)$.**

## Going further

1. Trouve de la même façon tous les entiers $m, n \geqslant 1$ tels que $2^m + 1 = n^2$.
2. Même question pour $5 \times 2^m + 1 = n^2$.
