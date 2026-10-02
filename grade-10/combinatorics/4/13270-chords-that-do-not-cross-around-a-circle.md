---
id: "13270"
title: "Des cordes qui ne se croisent pas autour d'un cercle"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [cercle, cordes, construction, sommes, algorithme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices lycéens, exercice 16 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

On place $2020$ points sur un cercle et on les numérote au hasard de $1$ à $2020$, chaque numéro étant utilisé une fois. À une corde qui relie le point numéro $a$ au point numéro $b$, avec $a > b$, on associe la valeur $a - b$.

Montrer qu'on peut relier les points par $1010$ cordes de sorte que :

- deux cordes ne se coupent jamais ;
- de chaque point part exactement une corde ;
- la somme des valeurs des cordes est égale à $1010^2$.

## Hints

1. Appelle « petits » les numéros de $1$ à $1010$ et « grands » ceux de $1011$ à $2020$. Si chaque corde relie un petit et un grand, que vaut la somme des valeurs ?
2. Pour construire les cordes, cherche deux points voisins sur le cercle, l'un petit et l'autre grand.
3. Relie-les, puis oublie-les. Pourquoi la corde tracée ne pourra-t-elle pas couper les suivantes ?

## Solution

Appelons **petits** les points de numéro $1$ à $1010$ et **grands** ceux de numéro $1011$ à $2020$. Il y en a $1010$ de chaque sorte.

**Si chaque corde relie un petit et un grand, la somme est la bonne.** La valeur d'une telle corde est le numéro du grand moins celui du petit. Chaque point est au bout d'une seule corde, donc la somme des valeurs est

$$(1011 + 1012 + \cdots + 2020) - (1 + 2 + \cdots + 1010).$$

En regroupant les termes deux par deux, cela vaut

$$(1011 - 1) + (1012 - 2) + \cdots + (2020 - 1010) = \underbrace{1010 + 1010 + \cdots + 1010}_{1010 \text{ termes}} = 1010^2.$$

**Construction des cordes.** On répète $1010$ fois l'étape suivante, en ne regardant à chaque fois que les points qui n'ont pas encore de corde.

*On choisit deux points voisins, un petit et un grand.* Parmi les points restants, il reste autant de petits que de grands, et au moins un de chaque. En faisant le tour du cercle à partir d'un petit, on finit par rencontrer un grand : juste avant lui se trouve un petit. Il existe donc deux points restants, consécutifs sur le cercle (aucun point restant entre eux), l'un petit et l'autre grand.

*On les relie par une corde, et on les retire.* Il reste encore autant de petits que de grands.

**Les cordes ne se coupent pas.** Quand on trace une corde entre deux points restants consécutifs $P$ et $Q$, l'un des deux arcs de cercle qui vont de $P$ à $Q$ ne contient aucun point restant. Toutes les cordes tracées ensuite relient deux points qui sont sur l'autre arc. Or une corde ne peut couper la corde $[PQ]$ que si elle a une extrémité sur chacun des deux arcs. Donc la corde $[PQ]$ ne coupe aucune des cordes suivantes. Comme cela vaut pour chaque corde, deux cordes ne se coupent jamais.

**Conclusion.** Après $1010$ étapes, chaque point a exactement une corde, les cordes ne se coupent pas, et chacune relie un petit et un grand, donc la somme des valeurs vaut $1010^2$.

## Going further

Il ne suffit pas de relier $2020$ à $1$, $2019$ à $2$, et ainsi de suite : selon la numérotation, ces cordes peuvent se couper. Trouve une numérotation de $4$ points pour laquelle cela arrive.
