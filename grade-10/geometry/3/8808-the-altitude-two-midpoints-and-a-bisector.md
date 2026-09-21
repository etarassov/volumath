---
id: "8808"
title: "Une hauteur, deux milieux et une bissectrice"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle isocele, triangle rectangle, mediane, bissectrice, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, Coupe Animath de printemps 2025 (dans le polycopié du stage olympique de Valbonne 2025)"
  reference: "Poly-2025-compresse.pdf, chapitre II « Coupe Animath de printemps 2025 », exercice 11 (lycéens), p. 31"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

$ABC$ est un triangle isocèle en $A$. On note :

- $M$ le milieu du segment $[BC]$ ;
- $N$ le milieu du segment $[AC]$ ;
- $P$ le pied de la hauteur issue de $C$, c'est-à-dire le point de la droite $(AB)$ tel que $(CP)$ soit perpendiculaire à $(AB)$.

![Le triangle isocèle ABC, le pied P de la hauteur issue de C, et les milieux M de [BC] et N de [AC]](8808-figure-1.svg)

Montrer que la demi-droite $[PM)$ est la bissectrice de l'angle $\widehat{NPB}$.

## Hints

1. Le triangle $BPC$ est rectangle en $P$, et $M$ est le milieu de son hypoténuse. Rappelle-toi ce que vaut la médiane issue de l'angle droit dans un triangle rectangle.
2. Tu obtiens $MP = MB = MC$. Deux triangles isocèles apparaissent, donc deux paires d'angles égaux. Fais de même avec le triangle $APC$, rectangle en $P$, dont $N$ est le milieu de l'hypoténuse.
3. Pour montrer qu'une demi-droite est bissectrice, il suffit de montrer que les deux angles qu'elle découpe sont égaux : ici $\widehat{MPN}$ et $\widehat{MPB}$.
4. Découpe $\widehat{MPN}$ en $\widehat{MPC} + \widehat{CPN}$, remplace chacun par un angle « vu de $C$ », et recolle. Tu vas tomber sur $\widehat{BCA}$ ; c'est là que l'hypothèse « isocèle en $A$ » sert enfin.

## Solution

**Le point de départ.** Dans un triangle rectangle, la médiane issue de l'angle droit mesure la moitié de l'hypoténuse : le milieu de l'hypoténuse est donc à égale distance des trois sommets. On va s'en servir deux fois.

### Étape 1 : autour de $M$

Le triangle $BPC$ est rectangle en $P$, et $M$ est le milieu de son hypoténuse $[BC]$. Donc
$$MB = MP = MC .$$

Le triangle $MBP$ est donc isocèle en $M$, d'où
$$\widehat{MBP} = \widehat{MPB} ,$$
et le triangle $MPC$ est isocèle en $M$, d'où
$$\widehat{MCP} = \widehat{MPC} .$$

### Étape 2 : autour de $N$

Le triangle $APC$ est rectangle en $P$, et $N$ est le milieu de son hypoténuse $[AC]$. Donc
$$NP = NC \; (= NA) ,$$
et le triangle $NPC$ est isocèle en $N$, d'où
$$\widehat{NPC} = \widehat{NCP} .$$

### Étape 3 : le calcul d'angles

Calculons l'angle $\widehat{MPN}$ en le coupant en deux par la demi-droite $[PC)$ :
$$\widehat{MPN} = \widehat{MPC} + \widehat{CPN} .$$

D'après les étapes 1 et 2, on remplace chacun des deux morceaux par un angle de sommet $C$ :
$$\widehat{MPN} = \widehat{MCP} + \widehat{PCN} .$$

Ces deux angles de sommet $C$ se recollent, car $P$ est entre les demi-droites $[CM)$ et $[CN)$ :
$$\widehat{MCP} + \widehat{PCN} = \widehat{MCN} .$$

Or $M$ est sur le segment $[BC]$ et $N$ est sur le segment $[AC]$, donc les demi-droites $[CM)$ et $[CB)$ sont les mêmes, et de même pour $[CN)$ et $[CA)$ :
$$\widehat{MCN} = \widehat{BCA} .$$

**C'est ici que l'hypothèse « isocèle en $A$ » entre en jeu.** Dans un triangle isocèle, les deux angles à la base sont égaux :
$$\widehat{BCA} = \widehat{CBA} .$$

Enfin, $\widehat{CBA}$ est l'angle du triangle en $B$ ; comme $M$ est sur $[BC]$ et $P$ sur $[BA]$, c'est exactement $\widehat{MBP}$. Avec l'étape 1 :
$$\widehat{CBA} = \widehat{MBP} = \widehat{MPB} .$$

En mettant bout à bout toute la chaîne :
$$\widehat{MPN} = \widehat{MPB} .$$

**Conclusion.** La demi-droite $[PM)$ découpe l'angle $\widehat{NPB}$ en deux angles égaux : c'est bien sa bissectrice.

### Une mise en garde

Dans un triangle isocèle en $A$, ce sont la hauteur, la médiane et la bissectrice **issues de $A$** qui sont confondues. Celles issues de $B$ ou de $C$ ne le sont pas du tout, et c'est justement ce qui rend cet exercice intéressant : la hauteur issue de $C$ tombe en $P$, qui n'a aucune raison d'être le milieu de $[AB]$.

## Going further

Reprendre la figure avec un triangle $ABC$ **quelconque** (plus forcément isocèle). Montrer
que l'on a toujours
$$\widehat{MPN} = \widehat{ACB} \qquad \text{et} \qquad \widehat{MPB} = \widehat{ABC},$$
et en déduire que $[PM)$ est la bissectrice de $\widehat{NPB}$ exactement lorsque $AB = AC$.
