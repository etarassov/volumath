---
id: "8421"
title: "Trois carrés contre trois produits"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, identite-remarquable, carre-positif, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités » (Domitille Saliou), exercice d'application 2 (la solution imprimée passe par l'IAG ; ici, uniquement des carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Montrer que pour tous nombres réels $a$, $b$ et $c$,

$$a^2 + b^2 + c^2 \;\geqslant\; ab + bc + ca.$$

Dans quel cas y a-t-il égalité ?

## Hints

1. Le seul outil nécessaire est qu'un carré est toujours positif ou nul.
2. Commence par le cas de deux nombres seulement : montre que $a^2 + b^2 \geqslant 2ab$. D'où vient cette inégalité ?
3. Tu as donc trois inégalités du même genre, une par paire de lettres. Additionne-les et regarde ce que tu obtiens.
4. Une autre façon de voir : calcule $(a-b)^2 + (b-c)^2 + (c-a)^2$ et développe tout.

## Solution

**Étape 1. Le cas de deux nombres.**

Pour tous réels $a$ et $b$, on a $(a-b)^2 \geqslant 0$, c'est-à-dire

$$a^2 - 2ab + b^2 \geqslant 0, \qquad \text{donc} \qquad a^2 + b^2 \geqslant 2ab.$$

L'égalité a lieu exactement lorsque $a = b$.

**Étape 2. On écrit les trois inégalités.**

Le même argument, appliqué aux trois paires de lettres, donne

$$a^2 + b^2 \geqslant 2ab, \qquad b^2 + c^2 \geqslant 2bc, \qquad c^2 + a^2 \geqslant 2ca.$$

**Étape 3. On additionne.**

À gauche, chaque lettre apparaît deux fois :

$$(a^2 + b^2) + (b^2 + c^2) + (c^2 + a^2) = 2\,(a^2 + b^2 + c^2).$$

À droite :

$$2ab + 2bc + 2ca = 2\,(ab + bc + ca).$$

Donc

$$2\,(a^2 + b^2 + c^2) \geqslant 2\,(ab + bc + ca),$$

et en divisant par $2$ :

$$a^2 + b^2 + c^2 \geqslant ab + bc + ca.$$

**Étape 4. Le cas d'égalité.**

Pour que la somme des trois inégalités soit une égalité, il faut que chacune des trois en soit une, c'est-à-dire

$$a = b, \qquad b = c, \qquad c = a,$$

autrement dit $a = b = c$. Réciproquement, si $a = b = c$, les deux membres valent $3a^2$.

L'égalité a donc lieu exactement lorsque les trois nombres sont égaux.

## Going further

On peut aussi tout faire d'un seul coup. Développons

$$(a-b)^2 + (b-c)^2 + (c-a)^2 = 2a^2 + 2b^2 + 2c^2 - 2ab - 2bc - 2ca = 2\,\big(a^2+b^2+c^2 - ab - bc - ca\big).$$

Cette quantité est une somme de trois carrés, donc positive ou nulle, ce qui redonne l'inégalité. Et elle est nulle exactement quand les trois carrés le sont, c'est-à-dire quand $a = b = c$.

Cette écriture est utile bien au-delà de l'exercice : chaque fois qu'on rencontre l'expression $a^2+b^2+c^2 - ab - bc - ca$, il faut penser qu'elle vaut la moitié d'une somme de trois carrés.
