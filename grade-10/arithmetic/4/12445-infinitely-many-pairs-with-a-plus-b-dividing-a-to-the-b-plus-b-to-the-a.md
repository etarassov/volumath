---
id: "12445"
title: "Une infinité de paires où a + b divise aᵇ + bᵃ"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [divisibilite, puissances, factorisation, premiers-entre-eux, infinite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 mars 2019"
  reference: "2019-04_Test-20-03-web.pdf, exercice 3 ; corrigé 2019-04_Test-20-03-Corrige-web.pdf (le corrigé raisonne avec des congruences ; solution réécrite avec une factorisation)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/04/Test-20-03-web.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-04_Test-20-03-web.pdf"
---

## Statement

On dit qu'une paire d'entiers $(a, b)$ est **chypriote** si $a > b \geqslant 2$, si $a$ et $b$ sont
premiers entre eux, et si $a + b$ divise $a^b + b^a$.

Démontrer qu'il existe une infinité de paires chypriotes.

## Hints

1. Cherche des exemples à la main. Essaie $(3, 2)$, $(4, 3)$, $(5, 3)$, $(5, 4)$, $(7, 5)$.
2. Les exemples qui marchent ont tous la même forme : $a$ est impair et $b = a - 2$. Il reste à
   démontrer que toutes ces paires conviennent.
3. Si $n$ est impair, $x + y$ divise $x^n + y^n$. Pour le voir, développe
   $(x + y)(x^{n-1} - x^{n-2}y + x^{n-3}y^2 - \cdots + y^{n-1})$.
4. Écris $b^a = b^b \times b^2$, puis $a^b + b^a = (a^b + b^b) + b^b(b^2 - 1)$.

## Solution

### On cherche des exemples

Essayons quelques paires :

- $(3, 2)$ : $a + b = 5$ et $3^2 + 2^3 = 17$, qui n'est pas un multiple de $5$ ;
- $(4, 3)$ : $a + b = 7$ et $4^3 + 3^4 = 145$, qui n'est pas un multiple de $7$ ;
- $(5, 3)$ : $a + b = 8$ et $5^3 + 3^5 = 125 + 243 = 368 = 8 \times 46$. **Elle est chypriote** ;
- $(5, 4)$ : $a + b = 9$ et $5^4 + 4^5 = 1649$, qui n'est pas un multiple de $9$ ;
- $(7, 5)$ : $a + b = 12$ et $7^5 + 5^7 = 16\,807 + 78\,125 = 94\,932 = 12 \times 7911$.
  **Elle est chypriote.**

On essaie donc les paires $(2m + 1, 2m - 1)$, où $m \geqslant 2$ est un entier. Nous allons montrer
qu'elles sont toutes chypriotes. Comme elles sont toutes différentes, cela en donne une infinité.

### Un outil : si $n$ est impair, $x + y$ divise $x^n + y^n$

Soit $n$ un entier impair, et $x$, $y$ deux entiers. Considérons
$$(x + y)(x^{n-1} - x^{n-2}y + x^{n-3}y^2 - \cdots - xy^{n-2} + y^{n-1}).$$
Les signes dans la grande parenthèse alternent, et comme elle a $n$ termes, avec $n$ impair, elle
commence et finit par un signe $+$. En développant, chaque terme $x^{n-k}y^{k}$ avec
$1 \leqslant k \leqslant n-1$ apparaît deux fois, une fois avec le signe $+$ et une fois avec le
signe $-$, et disparaît. Il reste seulement $x^n + y^n$. Donc
$$x^n + y^n = (x + y) \times (\text{un entier}),$$
et $x + y$ divise $x^n + y^n$.

### Les paires $(2m + 1, 2m - 1)$ sont chypriotes

Soit $m \geqslant 2$, $a = 2m + 1$ et $b = 2m - 1$. On vérifie les trois conditions.

**Première condition.** On a $a > b$ et $b = 2m - 1 \geqslant 3$, donc $a > b \geqslant 2$.

**Deuxième condition.** Un diviseur commun à $a$ et $b$ divise leur différence $a - b = 2$. Mais $a$
est impair, donc il n'est pas divisible par $2$. Le seul diviseur commun positif est $1$ : $a$ et $b$
sont premiers entre eux.

**Troisième condition.** On a $a + b = 4m$ et $a = b + 2$. Écrivons
$$a^b + b^a = a^b + b^b \times b^2 = (a^b + b^b) + b^b\,(b^2 - 1).$$

- Comme $b$ est impair, l'outil montre que $a + b$ divise $a^b + b^b$.
- D'autre part, $b^2 - 1 = (b - 1)(b + 1) = (2m - 2) \times 2m = 4m(m - 1)$, qui est un multiple de
  $4m = a + b$. Donc $a + b$ divise aussi $b^b(b^2 - 1)$.

Par conséquent, $a + b$ divise la somme $a^b + b^a$.

### Conclusion

Toutes les paires $(5, 3)$, $(7, 5)$, $(9, 7)$, $(11, 9)$, ..., c'est-à-dire les paires
$(2m + 1, 2m - 1)$ avec $m \geqslant 2$, sont chypriotes. **Il existe donc une infinité de paires
chypriotes.**

## Going further

1. Montrer qu'aucune paire $(b + 1, b)$ n'est chypriote.
2. Trouver une paire chypriote $(a, b)$ telle que $a - b = 4$.
