---
id: "7819"
title: "Le dé et ses huit sommets"
grade: 9
theme: algebra
difficulty: 4
duration_min: 35
tags: [developpement, factorisation, decomposition, geometrie dans l espace]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », évaluation initiale, exercice bonus 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

On écrit un entier strictement positif sur chacune des six faces d'un dé.

À chacun des huit sommets du dé, on attribue ensuite le produit des trois nombres écrits sur les
trois faces qui entourent ce sommet.

La somme des huit valeurs ainsi obtenues vaut $105$.

Quelle est la somme des six nombres écrits sur les faces ?

## Hints

1. Prends un cube dans ta main (ou dessine-le). Les six faces forment trois paires de faces
   **opposées**. Appelle $a$ et $a'$ les nombres d'une paire, $b$ et $b'$ ceux d'une autre,
   $c$ et $c'$ ceux de la dernière.
2. Un sommet du cube touche trois faces. Peut-il toucher deux faces opposées ? Que choisit-on
   donc exactement quand on choisit un sommet ?
3. Il y a $2 \times 2 \times 2 = 8$ façons de choisir une face dans chaque paire, et il y a $8$
   sommets. Ce n'est pas une coïncidence.
4. Développe maintenant $(a + a')(b + b')(c + c')$ et compare avec la somme des huit produits.
5. Enfin : $105 = 3 \times 5 \times 7$. Chacun des trois facteurs $a + a'$, $b + b'$,
   $c + c'$ vaut au moins combien ?

## Solution

**Étape 1 : on nomme les faces par paires.**

Les six faces d'un dé se regroupent en trois paires de faces opposées. Notons les nombres écrits
$$a \text{ et } a', \qquad b \text{ et } b', \qquad c \text{ et } c',$$
les deux nombres d'une même ligne étant sur deux faces opposées.

**Étape 2 : ce qu'est un sommet.**

Un sommet du cube est entouré de trois faces deux à deux perpendiculaires. Deux faces opposées
ne se touchent jamais, donc ces trois faces proviennent de trois paires différentes : une de
chaque.

Réciproquement, choisir une face dans chaque paire détermine exactement un sommet, celui où ces
trois faces se rencontrent. Il y a $2 \times 2 \times 2 = 8$ tels choix, et il y a bien $8$
sommets : la correspondance est parfaite.

**Étape 3 : la somme des huit produits est un produit.**

La somme des valeurs des huit sommets est donc
$$abc + abc' + ab'c + ab'c' + a'bc + a'bc' + a'b'c + a'b'c' .$$

Or, en développant,
$$(a + a')(b + b')(c + c')$$
donne exactement ces huit termes : on choisit $a$ ou $a'$, puis $b$ ou $b'$, puis $c$ ou $c'$,
de toutes les façons possibles.

Donc
$$(a + a')(b + b')(c + c') = 105 .$$

**Étape 4 : on décompose $105$.**

Les nombres écrits sont des entiers strictement positifs, donc chacune des trois sommes
$a + a'$, $b + b'$, $c + c'$ vaut au moins $1 + 1 = 2$.

On cherche donc à écrire $105$ comme produit de trois entiers tous supérieurs ou égaux à $2$.
Comme
$$105 = 3 \times 5 \times 7$$
et que $105$ n'a que ces trois facteurs premiers, chacun apparaissant une seule fois, la seule
façon de le couper en trois morceaux tous $\geq 2$ est de donner un facteur premier à chaque
morceau :
$$\{a + a',\ b + b',\ c + c'\} = \{3,\ 5,\ 7\}$$
(dans un ordre quelconque).

*Pourquoi il n'y a pas d'autre découpage :* si un morceau valait $1$, il serait exclu ; si un
morceau valait $15$, $21$ ou $35$, il resterait deux morceaux dont le produit serait $7$, $5$ ou
$3$, donc l'un des deux vaudrait $1$. Exclu aussi.

**Étape 5 : on conclut.**

La somme des six nombres des faces est
$$a + a' + b + b' + c + c' = 3 + 5 + 7 = \boxed{15}.$$

*Un exemple concret.* Avec $a = 1, a' = 2$ (somme $3$), $b = 2, b' = 3$ (somme $5$),
$c = 3, c' = 4$ (somme $7$), on obtient bien $3 \times 5 \times 7 = 105$ et une somme de faces
égale à $15$.
