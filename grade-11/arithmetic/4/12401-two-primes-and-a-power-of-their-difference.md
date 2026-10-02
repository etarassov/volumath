---
id: "12401"
title: "Deux nombres premiers et une puissance de leur différence"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, congruences, divisibilite, pgcd, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 29 novembre 2017"
  reference: "2017-12_pofm-2017-2018-test-novembre.pdf, exercice 1 ; corrigé 2017-12_pofm-2017-2018-test-novembre-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-12_pofm-2017-2018-test-novembre.pdf"
---

## Statement

Trouver tous les quadruplets $(p, q, r, n)$ d'entiers strictement positifs qui vérifient les
trois conditions suivantes :

- $p$ et $q$ sont des nombres premiers ;
- $p + q$ n'est pas divisible par $3$ ;
- $p + q = r(p - q)^n$.

## Hints

1. Regarde les restes de $p$ et de $q$ dans la division par $3$. Que se passe-t-il si aucun des
   deux n'est égal à $3$ ?
2. Comme $n \geqslant 1$, le nombre $p - q$ divise $p + q$. Il divise donc aussi la somme et la
   différence de $p + q$ et de $p - q$.
3. Tu dois trouver que $p - q$ ne peut valoir que $\pm 1$ ou $\pm 2$. Avec l'indication 1, il ne
   reste que quatre couples $(p, q)$ à examiner un par un. Attention au signe de $p - q$ : $r$
   est positif.

## Solution

### Étape 1 : l'un des deux nombres premiers vaut 3

Supposons que ni $p$ ni $q$ ne soit égal à $3$. Comme ce sont des nombres premiers, aucun des
deux n'est divisible par $3$ : chacun a un reste égal à $1$ ou à $2$ dans la division par $3$.

- Si les deux restes sont différents (l'un vaut $1$, l'autre $2$), la somme des restes vaut $3$,
  donc $p + q$ est divisible par $3$. C'est interdit par l'énoncé.
- Si les deux restes sont égaux, alors $p - q$ est divisible par $3$. Comme $n \geqslant 1$,
  $(p - q)^n$ est aussi divisible par $3$, donc $p + q = r(p-q)^n$ l'est aussi. C'est encore
  interdit.

Les deux cas sont impossibles. Donc $p = 3$ ou $q = 3$.

### Étape 2 : la différence $p - q$ vaut $\pm 1$ ou $\pm 2$

D'abord $p \neq q$, sinon le membre de droite serait nul alors que $p + q > 0$.

Posons $d = p - q$, un entier non nul (il peut être négatif). Comme $n \geqslant 1$, on peut
écrire $p + q = r \, d^{\,n-1} \times d$, donc $d$ divise $p + q$. Comme $d$ divise aussi
$p - q$, il divise leur somme et leur différence :
$$(p + q) + (p - q) = 2p \qquad \text{et} \qquad (p + q) - (p - q) = 2q.$$

Or $p$ et $q$ sont deux nombres premiers différents, donc $\mathrm{PGCD}(p, q) = 1$ et
$\mathrm{PGCD}(2p, 2q) = 2$. Un diviseur commun de $2p$ et $2q$ divise leur PGCD, donc $d$
divise $2$ :
$$d \in \{-2, -1, 1, 2\}.$$

### Étape 3 : les quatre couples possibles

Si $p = 3$, alors $q = 3 - d$ vaut $1$, $2$, $4$ ou $5$, et seuls $2$ et $5$ sont premiers.
Si $q = 3$, alors de même $p$ vaut $2$ ou $5$. Il reste donc quatre couples, et pour chacun
$p + q$ vaut $5$ ou $8$, qui ne sont pas divisibles par $3$ : la deuxième condition est bien
remplie.

- **$(p, q) = (3, 2)$.** L'équation devient $5 = r \times 1^n = r$. Donc $r = 5$, et $n$ peut
  être n'importe quel entier strictement positif.
- **$(p, q) = (2, 3)$.** L'équation devient $5 = r \times (-1)^n$. Comme $r > 0$, il faut
  $(-1)^n = 1$, c'est-à-dire $n$ pair, et alors $r = 5$.
- **$(p, q) = (5, 3)$.** L'équation devient $8 = r \times 2^n$. Donc $2^n$ divise $8$, ce qui
  laisse $n = 1$, $2$ ou $3$, avec respectivement $r = 4$, $2$ ou $1$.
- **$(p, q) = (3, 5)$.** L'équation devient $8 = r \times (-2)^n$. Comme $r > 0$, $n$ est pair,
  et $2^n$ divise $8$, donc $n = 2$ et $r = 2$.

### Conclusion

Les solutions sont exactement :

- $(3, 2, 5, n)$ pour tout entier $n \geqslant 1$ ;
- $(2, 3, 5, n)$ pour tout entier $n \geqslant 2$ pair ;
- $(5, 3, 4, 1)$, $(5, 3, 2, 2)$, $(5, 3, 1, 3)$ ;
- $(3, 5, 2, 2)$.

On vérifie directement que chacun de ces quadruplets convient, par exemple
$3 + 5 = 8 = 2 \times (-2)^2$.
