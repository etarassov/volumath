---
id: "7424"
title: "x + y + z + xy + yz + zx + xyz = 2009"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [factorisation, entiers, decomposition-en-facteurs-premiers, equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, test de sélection au stage de Grésillon 2010"
  reference: "stage_ete_2010.pdf, « Annexe : test de sélection au stage de Grésillon 2010 », exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

Trouver tous les triplets d'entiers $(x \,;\, y \,;\, z)$ tels que
$$1 < x < y < z$$
et
$$x + y + z + xy + yz + zx + xyz = 2009.$$

## Hints

1. Une équation à trois inconnues entières se traite rarement en essayant des valeurs. Cherche
   plutôt à **factoriser** le membre de gauche.
2. Développe $(1+x)(1+y)(1+z)$ et compare au membre de gauche de l'équation.
3. Une fois l'équation devenue un produit de trois facteurs égal à un nombre fixé, décompose ce
   nombre en facteurs premiers. N'oublie pas que $1 < x < y < z$ impose des conditions fortes sur
   les trois facteurs.

## Solution

**La factorisation.**

Développons $(1+x)(1+y)(1+z)$ :
$$(1+x)(1+y) = 1 + x + y + xy,$$
puis
$$(1 + x + y + xy)(1+z) = 1 + x + y + xy + z + xz + yz + xyz.$$

Autrement dit
$$(1+x)(1+y)(1+z) = 1 + \bigl(x + y + z + xy + yz + zx + xyz\bigr).$$

L'équation de l'énoncé s'écrit donc
$$(1+x)(1+y)(1+z) - 1 = 2009,$$
c'est-à-dire
$$(1+x)(1+y)(1+z) = 2010.$$

**On décompose 2010.**

$$2010 = 2 \times 1005 = 2 \times 3 \times 335 = 2 \times 3 \times 5 \times 67.$$

Ces quatre facteurs premiers sont distincts.

**Les contraintes sur les trois facteurs.**

Posons $X = 1+x$, $Y = 1+y$, $Z = 1+z$. La condition $1 < x < y < z$ devient
$$2 < X < Y < Z,$$
c'est-à-dire : $X$, $Y$, $Z$ sont trois entiers **strictement croissants**, tous supérieurs ou
égaux à $3$, et leur produit vaut $2010$.

Comme $2010 = 2 \times 3 \times 5 \times 67$ n'a que des facteurs premiers simples, chacun des
trois nombres $X$, $Y$, $Z$ est un produit de certains de ces quatre premiers, et chaque premier
sert exactement une fois. Il faut donc répartir les quatre premiers $2$, $3$, $5$, $67$ en trois
paquets non vides : un paquet aura deux premiers, les deux autres un seul.

De plus, **aucun des trois nombres ne peut valoir $2$**, puisqu'on exige $X \geq 3$. Le facteur
premier $2$ doit donc être regroupé avec un autre premier.

Il y a trois façons de le faire.

- $2$ avec $3$ : les trois nombres sont $6$, $5$, $67$. Rangés dans l'ordre croissant :
  $X = 5$, $Y = 6$, $Z = 67$.
- $2$ avec $5$ : les trois nombres sont $10$, $3$, $67$, soit $X = 3$, $Y = 10$, $Z = 67$.
- $2$ avec $67$ : les trois nombres sont $134$, $3$, $5$, soit $X = 3$, $Y = 5$, $Z = 134$.

Dans les trois cas, les trois nombres sont bien distincts et tous $\geq 3$.

**On revient à $x$, $y$, $z$.**

En retranchant $1$ à chacun :

| $X$, $Y$, $Z$ | $x$, $y$, $z$ |
|---|---|
| $5$, $6$, $67$ | $4$, $5$, $66$ |
| $3$, $10$, $67$ | $2$, $9$, $66$ |
| $3$, $5$, $134$ | $2$, $4$, $133$ |

**Vérification** pour le premier triplet : $(1+4)(1+5)(1+66) = 5 \times 6 \times 67 = 2010$, donc
la somme de l'énoncé vaut $2010 - 1 = 2009$. Les deux autres se vérifient de la même façon.

**Conclusion.** Les solutions sont
$$(2 \,;\, 4 \,;\, 133), \qquad (2 \,;\, 9 \,;\, 66), \qquad (4 \,;\, 5 \,;\, 66).$$

## Going further

On remplace la condition $1 < x < y < z$ par la condition plus souple $1 < x \leq y \leq z$.
Apparaît-il de nouvelles solutions ? (Regarde ce qu'il faudrait pour avoir $x = y$, et souviens-toi
que $2010$ n'a aucun facteur premier répété.)
