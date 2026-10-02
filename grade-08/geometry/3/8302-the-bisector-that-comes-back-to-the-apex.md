---
id: "8302"
title: "La bissectrice qui revient au sommet"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [triangle-isocele, bissectrice, somme-des-angles, angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 3 (collège) et exercice 10 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $A$, c'est-à-dire que $AB = AC$.

La bissectrice de l'angle $\widehat{ABC}$ coupe le côté $[AC]$ en un point $D$.

On sait de plus que $BD = DA$.

Déterminer les trois angles du triangle $ABC$.

## Hints

1. Commence par faire une grande figure. Place $A$ en haut, $B$ et $C$ en bas, puis trace la bissectrice issue de $B$ et appelle $D$ son point d'intersection avec $[AC]$.
2. Une seule lettre suffit pour tout écrire. Pose $\alpha = \widehat{ABD}$, l'un des deux demi-angles en $B$. Combien vaut alors $\widehat{ABC}$ ?
3. Le triangle $ABD$ est isocèle, puisque $BD = DA$. En quel sommet ? Quels sont alors les deux angles égaux ?
4. Le triangle $ABC$ est isocèle en $A$ : cela donne $\widehat{ACB}$ en fonction de $\alpha$.
5. Il ne reste plus qu'à écrire que les trois angles de $ABC$ font $180°$ : tu obtiens une équation avec la seule inconnue $\alpha$.

## Solution

**On nomme un seul angle.**

La droite $(BD)$ est la bissectrice de l'angle $\widehat{ABC}$ : elle coupe donc cet angle en deux
angles égaux. Posons

$$\alpha = \widehat{ABD} = \widehat{DBC} .$$

L'angle complet en $B$ vaut alors

$$\widehat{ABC} = 2\alpha .$$

**Le premier triangle isocèle : $ABD$.**

On nous dit que $BD = DA$. Le triangle $ABD$ a donc deux côtés égaux issus du sommet $D$ : il
est isocèle en $D$. Ses angles à la base sont donc égaux, et la base est $[AB]$ :

$$\widehat{DAB} = \widehat{ABD} = \alpha .$$

Or le point $D$ est sur le segment $[AC]$, donc l'angle $\widehat{DAB}$ est exactement l'angle
$\widehat{CAB}$ du triangle. Ainsi

$$\widehat{BAC} = \alpha .$$

**Le second triangle isocèle : $ABC$.**

Le triangle $ABC$ est isocèle en $A$, donc ses deux angles à la base sont égaux :

$$\widehat{ACB} = \widehat{ABC} = 2\alpha .$$

**On écrit la somme des angles.**

Dans le triangle $ABC$, la somme des trois angles vaut $180°$ :

$$\widehat{BAC} + \widehat{ABC} + \widehat{ACB} = 180° ,$$

c'est-à-dire

$$\alpha + 2\alpha + 2\alpha = 180° , \qquad \text{donc} \qquad 5\alpha = 180° .$$

On en tire

$$\alpha = \frac{180°}{5} = 36° .$$

**Conclusion.**

$$\widehat{BAC} = 36° , \qquad \widehat{ABC} = \widehat{ACB} = 72° .$$

On vérifie : $36 + 72 + 72 = 180$. Et le triangle $ABD$ a bien pour angles $36°$ en $A$, $36°$ en
$B$ et donc $108°$ en $D$, il est bien isocèle en $D$.

## Going further

Ce triangle, dont les angles valent $36°$, $72°$ et $72°$, s'appelle le **triangle d'or**. Il apparaît
dans le pentagone régulier : chaque triangle formé par un côté du pentagone et deux diagonales
est de ce type. Le rapport $\dfrac{AB}{BC}$ y vaut le nombre d'or.
