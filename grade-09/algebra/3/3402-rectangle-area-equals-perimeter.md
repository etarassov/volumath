---
id: "3402"
title: "Le rectangle dont l'aire égale le périmètre"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [rectangle, aire, perimetre, factorisation, entiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 4 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Il existe un seul rectangle dont les deux côtés sont des nombres entiers, qui n'est pas un carré, et dont l'aire et le périmètre ont la même valeur numérique.

Trouve ce rectangle, et calcule la longueur de sa diagonale.

## Hints

1. Appelle $a$ et $b$ les deux côtés. Écris l'aire, écris le périmètre, et écris l'égalité demandée.
2. Tu obtiens $ab = 2a + 2b$. Une équation, deux inconnues : impossible de conclure directement. Mais $a$ et $b$ sont des entiers, et c'est cela qui va tout décider.
3. Mets tout d'un même côté : $ab - 2a - 2b = 0$. Cherche un nombre à ajouter aux deux membres pour que la gauche se factorise en un produit de deux facteurs.
4. $ab - 2a - 2b + 4 = (a-2)(b-2)$. L'équation devient $(a-2)(b-2) = 4$, et il ne reste que quelques cas.
5. Une fois les côtés trouvés, le théorème de Pythagore donne la diagonale.

## Solution

**L'idée : transformer l'équation en un produit égal à un petit nombre, puis lister les façons de fabriquer ce nombre.**

**Étape 1. Mise en équation.**

Notons $a$ et $b$ les longueurs des côtés, deux entiers strictement positifs. L'aire vaut $ab$ et le périmètre vaut $2a + 2b$. La condition de l'énoncé s'écrit

$$ab = 2a + 2b.$$

**Étape 2. On factorise.**

$$ab - 2a - 2b = 0.$$

Le membre de gauche ressemble au développement de $(a-2)(b-2) = ab - 2a - 2b + 4$. Il manque juste $4$ : ajoutons $4$ aux deux membres.

$$ab - 2a - 2b + 4 = 4, \qquad \text{c'est-à-dire} \qquad (a-2)(b-2) = 4.$$

**Étape 3. On liste les cas.**

D'abord, $a$ et $b$ sont au moins égaux à $3$. En effet, si $a = 1$ l'équation $b = 2 + 2b$ donne $b = -2$, impossible ; et si $a = 2$ elle donne $2b = 4 + 2b$, impossible aussi. Donc $a - 2$ et $b - 2$ sont des entiers strictement positifs.

Les façons d'écrire $4$ comme produit de deux entiers strictement positifs sont $1 \times 4$, $2 \times 2$ et $4 \times 1$. Cela donne, à l'ordre près :

- $a - 2 = 1$ et $b - 2 = 4$, donc $a = 3$ et $b = 6$ ;
- $a - 2 = 2$ et $b - 2 = 2$, donc $a = 4$ et $b = 4$.

Le second cas est un carré, que l'énoncé écarte. Il reste le rectangle $3 \times 6$ : son aire vaut $18$ et son périmètre vaut $3 + 6 + 3 + 6 = 18$. C'est bien le seul.

**Étape 4. La diagonale.**

La diagonale est l'hypoténuse d'un triangle rectangle de côtés $3$ et $6$ :

$$d = \sqrt{3^2 + 6^2} = \sqrt{9 + 36} = \sqrt{45} = 3\sqrt{5}.$$

**Conclusion : le rectangle mesure $3$ sur $6$, et sa diagonale vaut $3\sqrt{5} \approx \text{6,7}$.**

## Going further

La même astuce règle beaucoup d'équations en nombres entiers. Par exemple, pour trouver tous les couples d'entiers strictement positifs $(a, b)$ tels que $\dfrac1a + \dfrac1b = \dfrac16$, on multiplie tout par $6ab$, on obtient $ab - 6a - 6b = 0$, on ajoute $36$ et on factorise : $(a-6)(b-6) = 36$. Les cinq couples solutions sont alors $(7, 42)$, $(8, 24)$, $(9, 18)$, $(10, 15)$ et $(12, 12)$.
