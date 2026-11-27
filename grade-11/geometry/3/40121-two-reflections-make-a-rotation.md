---
id: "40121"
title: "Deux symétries axiales font une rotation"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [symetrie-axiale, rotation, triangle-equilateral, angles-orientes, trigonometrie]
adapted_from: null
see_also: ["40122", "40123"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2005, mathématiques, série S"
  reference: "cg-2005-s-sujet.pdf, exercice 1, partie I « Préliminaires de géométrie élémentaire », questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2005.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2005-s-sujet.pdf"
---

## Statement

On travaille dans un plan orienté. Rappelons que la rotation de centre $I$ et d'angle $\theta$
laisse $I$ fixe et envoie tout point $M \neq I$ sur le point $M'$ tel que $IM' = IM$ et tel qu'on
passe de la demi-droite $[IM)$ à la demi-droite $[IM')$ en tournant de $\theta$ dans le sens
direct.

1. Soit $D$ et $D'$ deux droites sécantes en un point $I$, et $s$ et $s'$ les symétries axiales
   d'axes respectifs $D$ et $D'$. Montrer que la transformation $s' \circ s$ (on applique
   d'abord $s$, puis $s'$) est une rotation, dont on précisera le centre et l'angle.

2. Soit $ABC$ un triangle équilatéral direct et $O$ le centre de son cercle circonscrit. On note
   $s_1$, $s_2$ et $s_3$ les symétries axiales d'axes respectifs $(OA)$, $(OB)$ et $(OC)$, et
   $r$ la rotation de centre $O$ et d'angle $\frac{2\pi}{3}$.

   Soit $M$ un point du plan, et $M_1 = s_1(M)$, $M_2 = s_2(M)$, $M_3 = s_3(M)$.

   a) Montrer que $M_2 = r^2(M_1)$ et $M_3 = r(M_1)$, où $r^2$ désigne $r \circ r$.

   b) Quelle est la nature du triangle $M_1M_2M_3$ ?

## Hints

1. **Question 1.** Repérer chaque point $M \neq I$ par sa distance $IM$ et par une mesure $t$ de
   l'angle entre une demi-droite fixe issue de $I$ et la demi-droite $[IM)$, comme sur le cercle
   trigonométrique.
2. **Question 1.** Si la droite $D$ fait l'angle $\varphi$ avec la demi-droite fixe, que devient
   l'angle $t$ du point $M$ quand on lui applique $s$ ? Penser au cas où $D$ est l'axe des
   abscisses : le point d'angle $t$ va sur le point d'angle $-t$.
3. **Question 2a.** Une symétrie appliquée deux fois ne change rien, donc $M = s_1(M_1)$. Écrire
   alors $M_2 = s_2(s_1(M_1))$ et utiliser la question 1.
4. **Question 2b.** Que fait la rotation $r$ aux trois points $M_1$, $M_3$, $M_2$ ? Ne pas oublier
   le cas où $M = O$.

## Solution

**1.** Choisissons une demi-droite fixe issue de $I$. Pour un point $M \neq I$, notons $t$ une
mesure (en radians, définie à $2\pi$ près) de l'angle orienté qui va de cette demi-droite à
$[IM)$. Le point $M$ est connu dès qu'on connaît $IM$ et $t$, exactement comme un point du cercle
trigonométrique est connu par son angle.

*Effet d'une symétrie.* Soit $\varphi$ une mesure de l'angle qui va de la demi-droite fixe à la
droite $D$ (l'une de ses deux demi-droites issues de $I$). Comme $I$ est sur $D$, la symétrie $s$
fixe $I$ et conserve les longueurs, donc $IM_1 = IM$ en notant $M_1 = s(M)$. Soit $N$ le point tel
que $IN = IM$ et d'angle $2\varphi - t$. Les angles $t$ et $2\varphi - t$ ont pour moyenne
$\varphi$ : la droite $D$ est donc la bissectrice de l'angle $\widehat{MIN}$. Dans le triangle
isocèle $MIN$, la bissectrice issue du sommet $I$ est aussi la médiatrice de $[MN]$, donc $N$
est le symétrique de $M$ par rapport à $D$. Deux cas particuliers : si $M$ est sur $D$, on a
$2\varphi - t = t$ à $2\pi$ près et $N = M$ ; si les angles $t$ et $2\varphi - t$ diffèrent de
$\pi$, le triangle $MIN$ est aplati, $I$ est le milieu de $[MN]$ et $D$, qui fait l'angle
$\frac{\pi}{2}$ avec $[IM)$, est perpendiculaire à $(MN)$ en $I$ : c'est encore la médiatrice de
$[MN]$. Ainsi :

$$s \text{ envoie le point d'angle } t \text{ sur le point de même distance à } I \text{ et d'angle } 2\varphi - t.$$

*Composition.* Notons $\varphi'$ l'angle de la droite $D'$. Le point $M$ d'angle $t$ est envoyé
par $s$ sur le point d'angle $2\varphi - t$, puis par $s'$ sur le point d'angle

$$2\varphi' - (2\varphi - t) = t + 2(\varphi' - \varphi),$$

toujours à la même distance de $I$. Le point $I$ reste fixe. C'est exactement la définition de
la rotation de centre $I$ et d'angle $2(\varphi' - \varphi)$.

**Conclusion :** $s' \circ s$ est la rotation de centre $I$ et d'angle $2(\varphi' - \varphi)$,
le double de l'angle orienté qui va de $D$ à $D'$. Remarquer que l'ordre compte : $s \circ s'$
est la rotation d'angle opposé. Remarquer aussi que changer $\varphi$ en $\varphi + \pi$ (l'autre
demi-droite de $D$) change $2\varphi$ de $2\pi$, ce qui ne change rien.

**2a.** Le triangle $ABC$ est équilatéral direct et $O$ est son centre, donc la rotation $r$
envoie $A$ sur $B$ et $B$ sur $C$. Prenons $[OA)$ comme demi-droite fixe : les demi-droites
$[OA)$, $[OB)$, $[OC)$ font les angles $0$, $\frac{2\pi}{3}$ et $\frac{4\pi}{3}$.

Une symétrie appliquée deux fois redonne le point de départ, donc $s_1(M_1) = M$ et

$$M_2 = s_2(M) = s_2(s_1(M_1)) = (s_2 \circ s_1)(M_1).$$

D'après la question 1, $s_2 \circ s_1$ est la rotation de centre $O$ et d'angle
$2 \times \frac{2\pi}{3} = \frac{4\pi}{3}$. C'est la rotation $r^2$, puisque tourner deux fois de
$\frac{2\pi}{3}$ revient à tourner de $\frac{4\pi}{3}$. Donc $M_2 = r^2(M_1)$.

De même, $M_3 = (s_3 \circ s_1)(M_1)$, et $s_3 \circ s_1$ est la rotation de centre $O$ et
d'angle $2 \times \frac{4\pi}{3} = \frac{8\pi}{3} = 2\pi + \frac{2\pi}{3}$, c'est-à-dire la
rotation $r$. Donc $M_3 = r(M_1)$.

**2b.** Si $M = O$, les trois points $M_1$, $M_2$, $M_3$ sont confondus en $O$.

Sinon, $M_1 \neq O$. La rotation $r$ envoie $M_1$ sur $M_3$, puis $M_3 = r(M_1)$ sur
$r^2(M_1) = M_2$, puis $M_2$ sur $r^3(M_1) = M_1$, car tourner trois fois de
$\frac{2\pi}{3}$ fait un tour complet. Une rotation conserve les distances, donc

$$M_1M_3 = M_3M_2 \quad (\text{image du segment } [M_1M_3]), \qquad M_3M_2 = M_2M_1 \quad (\text{image du segment } [M_3M_2]).$$

De plus $OM_1 = OM_2 = OM_3 = OM$ et les trois points sont distincts (ils font entre eux des
angles de $\frac{2\pi}{3}$ autour de $O$).

**Conclusion :** si $M \neq O$, le triangle $M_1M_2M_3$ est équilatéral, de centre $O$ ; son
cercle circonscrit est le cercle de centre $O$ et de rayon $OM$. Si $M = O$, il est réduit à un
point.

**Bilan.** Composer deux symétries d'axes sécants en $I$ revient à tourner autour de $I$ du
double de l'angle entre les axes. Appliqué aux trois axes de symétrie d'un triangle équilatéral,
cela montre que les trois symétriques d'un point quelconque forment toujours un triangle
équilatéral de même centre.

## Going further

- Que devient $s' \circ s$ quand les droites $D$ et $D'$ sont parallèles ? (On trouve une
  translation, de vecteur égal au double du vecteur qui va de $D$ à $D'$.)
- Réciproquement, toute rotation de centre $I$ s'écrit comme la composée de deux symétries
  d'axes passant par $I$, et l'on peut choisir librement le premier axe.
- Dans la suite du sujet, on ajoutait le symétrique $M_4$ de $M$ par rapport à $(BC)$ et l'on
  comparait les cercles circonscrits à $M_1M_2M_3$ et à $M_2M_3M_4$ : voir l'exercice 40122.
