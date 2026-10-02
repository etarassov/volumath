---
id: "10829"
title: "Trois nombres premiers et (p + 1)(q + 2)(r + 3) = 4pqr"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, equation-diophantienne, parite, disjonction-de-cas, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf (la dernière ligne du corrigé donne (7, 6, 2) au lieu de (7, 5, 2) ; le cas où p, q, r sont impairs est réécrit ici plus simplement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Trouver tous les triplets $(p, q, r)$ de nombres premiers tels que

$$(p + 1)(q + 2)(r + 3) = 4\,p\,q\,r .$$

Les nombres $p$, $q$, $r$ ne sont pas forcément différents.

## Hints

1. Commence par le cas $p = 2$ : le nombre premier $3$ divise alors $8qr$.
2. Traite de même le cas $r = 2$, puis le cas $q = 2$ (pense à la parité).
3. Si $p$, $q$, $r$ sont tous impairs, simplifie par $4$. Tu obtiens un produit de trois entiers, chacun au moins égal à $2$, qui vaut $pqr$. Que peux-tu dire de ces trois entiers ?
4. Compare la somme de ces trois entiers avec $p + q + r$.

## Solution

**Réponse : il y a trois triplets, $(2, 3, 5)$, $(5, 3, 3)$ et $(7, 5, 2)$.**

On vérifie : $3 \times 5 \times 8 = 120 = 4 \times 30$, puis $6 \times 5 \times 6 = 180 = 4 \times 45$, et $8 \times 7 \times 5 = 280 = 4 \times 70$.

On utilise plusieurs fois le fait suivant : *si un nombre premier divise un produit, il divise l'un des facteurs*. C'est une conséquence de l'unicité de la décomposition en facteurs premiers.

### Cas 1 : $p = 2$

L'équation devient $3(q + 2)(r + 3) = 8qr$. Le nombre premier $3$ divise $8qr$ mais pas $8$, donc il divise $q$ ou $r$. Comme $q$ et $r$ sont premiers, $q = 3$ ou $r = 3$.

- Si $q = 3$ : $15(r + 3) = 24r$, soit $15r + 45 = 24r$, donc $r = 5$. On trouve **$(2, 3, 5)$**.
- Si $r = 3$ : $18(q + 2) = 24q$, soit $18q + 36 = 24q$, donc $q = 6$, qui n'est pas premier.

### Cas 2 : $r = 2$ et $p \neq 2$

L'équation devient $5(p + 1)(q + 2) = 8pq$. Le nombre premier $5$ divise $8pq$, donc $p = 5$ ou $q = 5$.

- Si $p = 5$ : $30(q + 2) = 40q$, soit $30q + 60 = 40q$, donc $q = 6$, qui n'est pas premier.
- Si $q = 5$ : $35(p + 1) = 40p$, soit $35p + 35 = 40p$, donc $p = 7$. On trouve **$(7, 5, 2)$**.

### Cas 3 : $q = 2$, avec $p \neq 2$ et $r \neq 2$

L'équation devient $4(p + 1)(r + 3) = 8pr$, soit $(p + 1)(r + 3) = 2pr$. Les nombres premiers $p$ et $r$ sont différents de $2$, donc impairs. Alors $p + 1$ et $r + 3$ sont pairs, et leur produit est un multiple de $4$. Mais $2pr$ est le double d'un nombre impair, ce n'est pas un multiple de $4$. **Pas de solution dans ce cas.**

### Cas 4 : $p$, $q$, $r$ tous impairs

Alors $p + 1$ et $r + 3$ sont pairs. Posons
$$A = \frac{p + 1}{2}, \qquad B = q + 2, \qquad C = \frac{r + 3}{2} .$$
Ce sont des entiers, et en divisant l'équation par $4$, on obtient
$$A \times B \times C = p \times q \times r .$$

*Les nombres $A$, $B$, $C$ sont les nombres $p$, $q$, $r$, dans un certain ordre.* On a $A \geqslant 2$ (car $p \geqslant 3$), $B \geqslant 5$ et $C \geqslant 3$. D'après l'unicité de la décomposition en facteurs premiers, chacun des trois entiers $A$, $B$, $C$ est le produit de certains des nombres premiers $p$, $q$, $r$, chacun de ces trois nombres premiers étant utilisé une seule fois en tout. Comme chacun des trois entiers est au moins égal à $2$, il reçoit au moins un nombre premier. Il y a trois entiers et trois nombres premiers : chacun en reçoit exactement un.

*On compare les sommes.* Puisque ce sont les mêmes nombres, $A + B + C = p + q + r$, c'est-à-dire
$$\frac{p + 1}{2} + q + 2 + \frac{r + 3}{2} = p + q + r .$$
En multipliant par $2$ : $p + 1 + 2q + 4 + r + 3 = 2p + 2q + 2r$, donc **$p + r = 8$**.

Les nombres $p$ et $r$ sont des nombres premiers impairs de somme $8$, donc $(p, r) = (3, 5)$ ou $(p, r) = (5, 3)$.

- Si $p = 3$ et $r = 5$ : alors $C = 4$, qui n'est pas premier. Or $C$ est l'un des nombres premiers $p$, $q$, $r$. Impossible.
- Si $p = 5$ et $r = 3$ : alors $A = 3$ et $C = 3$. L'équation $A \times B \times C = pqr$ devient $9(q + 2) = 15q$, soit $9q + 18 = 15q$, donc $q = 3$. On trouve **$(5, 3, 3)$**.

### Conclusion

**Les triplets cherchés sont $(2, 3, 5)$, $(5, 3, 3)$ et $(7, 5, 2)$.**

## Going further

1. Dans le cas 4, pourquoi a-t-on besoin que $A$, $B$ et $C$ soient tous au moins égaux à $2$ ? Donne un exemple de produit de trois entiers égal à $3 \times 5 \times 7$ où les trois entiers ne sont pas $3$, $5$ et $7$.
2. Trouve tous les couples $(p, q)$ de nombres premiers tels que $(p + 1)(q + 1) = 2\,p\,q$. *Indication : la méthode du cas 3 sert encore.*
