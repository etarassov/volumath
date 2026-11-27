---
id: "40969"
title: "Un fromage coupé par deux cordes perpendiculaires"
grade: 10
theme: geometry
difficulty: 4
duration_min: 45
tags: [aire, disque, corde, perpendiculaire, symetrie-axiale, coordonnees, inegalite, optimisation, partage]
adapted_from: null
see_also: ["40968"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 3 « Fromage alléchant », question 6 (reprise de la question 2 avec des coupes perpendiculaires). Le résultat de la question 2 sur le partage (le corbeau obtient A + D) est rappelé dans l'énoncé."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Un corbeau et un renard veulent se partager un fromage qui a la forme d'un disque d'aire $1$.
Chacun veut manger le plus de fromage possible. Le corbeau coupe le fromage en quatre parts avec
deux coups de fil : chaque coup de fil coupe selon une corde du disque, et les deux cordes doivent
se croiser en un point intérieur au disque. Ensuite, le corbeau choisit une part, le renard en
choisit deux parmi les trois qui restent, et le corbeau prend la dernière.

On admet le résultat suivant : si les quatre parts ont pour aires
$A \geqslant B \geqslant C \geqslant D$, le corbeau peut s'assurer exactement $A + D$, quoi que
fasse le renard, et pas davantage. (Il prend la plus grande part, et le renard lui laisse la plus
petite.)

Pour des raisons esthétiques, on impose désormais que **les deux cordes soient
perpendiculaires**. Pour un réel $g \in [0\,;\,1]$, on dit que le corbeau dispose d'une
*stratégie $g$-gourmande* s'il peut couper de façon à être sûr d'obtenir au moins $g$.

Pour quels réels $g$ le corbeau dispose-t-il d'une stratégie $g$-gourmande ?

## Hints

1. Placer un repère dont l'origine est le centre du disque et dont les axes sont parallèles aux
   deux cordes. Les cordes sont alors portées par les droites $x = s$ et $y = t$. Quelle condition
   doivent vérifier $s$ et $t$ ? Par symétrie, on peut supposer $s \geqslant 0$ et
   $t \geqslant 0$.
2. Quelle part est la plus grande, quelle part est la plus petite ? Comparer deux parts voisines
   avec une symétrie par rapport à l'une des deux cordes.
3. Pour calculer les aires, découper le disque en quatre quarts par les deux axes, puis faire
   intervenir les bandes $0 < x < s$ et $0 < y < t$, et le rectangle de sommets $(0, 0)$ et
   $(s, t)$.
4. On doit trouver que $A + D = \frac{1}{2} + 2st$. Il reste à rendre $st$ aussi grand que
   possible : comparer $2st$ et $s^2 + t^2$.

## Solution

*Mise en place.* Soit $\rho$ le rayon du disque : $\pi \rho^2 = 1$. On place l'origine au centre
$O$ et on choisit les axes parallèles aux deux cordes, qui sont alors portées par les droites
$x = s$ et $y = t$. Elles se croisent au point $(s, t)$, qui doit être intérieur au disque :
$s^2 + t^2 < \rho^2$. Les symétries par rapport aux axes ne changent pas les aires des parts ; on
peut donc supposer $s \geqslant 0$ et $t \geqslant 0$.

On numérote les quatre parts comme les quadrants, autour du point $(s, t)$ :

- $Q_1$ : les points du disque avec $x > s$ et $y > t$ ;
- $Q_2$ : $x < s$ et $y > t$ ;
- $Q_3$ : $x < s$ et $y < t$ ;
- $Q_4$ : $x > s$ et $y < t$.

*Étape 1 : la plus grande part est $Q_3$, la plus petite est $Q_1$.* Considérons la
symétrie par rapport à la droite $x = s$, qui envoie $(x, y)$ sur $(2s - x, y)$. Si $(x, y)$ est un
point du disque avec $x > s$, son image a pour abscisse $x' = 2s - x$, avec $x' < s < x$ et
$x' = 2s - x \geqslant -x$ car $s \geqslant 0$. Donc $x'^2 \leqslant x^2$, et l'image est encore
dans le disque, du côté $x < s$. Cette symétrie envoie donc $Q_4$ dans $Q_3$ et $Q_1$ dans
$Q_2$, sans changer les aires :

$$\text{aire}(Q_4) \leqslant \text{aire}(Q_3), \qquad \text{aire}(Q_1) \leqslant \text{aire}(Q_2).$$

De même, la symétrie par rapport à la droite $y = t$ donne
$\text{aire}(Q_2) \leqslant \text{aire}(Q_3)$ et
$\text{aire}(Q_1) \leqslant \text{aire}(Q_4)$. Donc $A = \text{aire}(Q_3)$ et
$D = \text{aire}(Q_1)$.

*Étape 2 : calcul de $A + D$.* Les deux axes découpent le disque en quatre quarts d'aire
$\frac{1}{4}$. Notons :

- $v$ l'aire de la partie du disque où $0 < x < s$ et $y > 0$ ; par symétrie par rapport à l'axe
  des abscisses, c'est aussi l'aire de la partie où $0 < x < s$ et $y < 0$ ;
- $h$ l'aire de la partie où $0 < y < t$ et $x > 0$, qui est aussi celle de la partie où
  $0 < y < t$ et $x < 0$ ;
- le rectangle $0 < x < s$, $0 < y < t$, d'aire $st$. Il est entièrement dans le disque, car
  chacun de ses points vérifie $x^2 + y^2 \leqslant s^2 + t^2 < \rho^2$.

La part $Q_1$ est le quart $x > 0$, $y > 0$, privé de la bande verticale ($0 < x < s$, aire $v$)
et de la bande horizontale ($0 < y < t$, aire $h$) ; ces deux bandes se recouvrent exactement sur
le rectangle, qu'on a retiré deux fois. Donc

$$\text{aire}(Q_1) = \frac{1}{4} - v - h + st.$$

La part $Q_2$ est formée du quart $x < 0$, $y > 0$ privé de sa bande $0 < y < t$ (aire
$\frac{1}{4} - h$), et de la bande $0 < x < s$, $y > t$ (aire $v - st$). De même pour $Q_4$ :

$$\text{aire}(Q_2) = \frac{1}{4} - h + v - st, \qquad \text{aire}(Q_4) = \frac{1}{4} - v + h - st.$$

Enfin, l'aire totale vaut $1$ :

$$\text{aire}(Q_3) = 1 - \left(\frac{3}{4} - v - h - st\right) = \frac{1}{4} + v + h + st.$$

En ajoutant, les inconnues $v$ et $h$ disparaissent :

$$A + D = \text{aire}(Q_3) + \text{aire}(Q_1) = \frac{1}{2} + 2st.$$

*Étape 3 : jusqu'où peut-on aller ?* Comme $(s - t)^2 \geqslant 0$, on a
$2st \leqslant s^2 + t^2 < \rho^2 = \frac{1}{\pi}$. Donc, pour toute découpe,

$$A + D < \frac{1}{2} + \frac{1}{\pi}.$$

Inversement, pour $0 \leqslant \lambda < 1$, prenons $s = t = \frac{\lambda \rho}{\sqrt{2}}$ : alors
$s^2 + t^2 = \lambda^2 \rho^2 < \rho^2$, et

$$A + D = \frac{1}{2} + \lambda^2 \rho^2 = \frac{1}{2} + \frac{\lambda^2}{\pi}.$$

Si $g < \frac{1}{2} + \frac{1}{\pi}$, on peut choisir $\lambda < 1$ assez proche de $1$ pour que
$\frac{1}{2} + \frac{\lambda^2}{\pi} \geqslant g$ (par exemple
$\lambda^2 = \max\left(0, \pi\left(g - \frac{1}{2}\right)\right)$, qui est strictement inférieur à
$1$).

**Conclusion :** avec des coupes perpendiculaires, le corbeau dispose d'une stratégie
$g$-gourmande si et seulement si $0 \leqslant g < \frac{1}{2} + \frac{1}{\pi}$. La borne
$\frac{1}{2} + \frac{1}{\pi} \approx \text{0,818}$ est approchée en faisant croiser les deux cordes
tout près du bord, sur une diagonale des axes, mais jamais atteinte.

**Bilan.** Quand deux cordes perpendiculaires se croisent au point $(s, t)$, la plus grande et la
plus petite part ont pour aire totale exactement $\frac{1}{2} + 2\lvert st \rvert$. Le corbeau peut
donc s'assurer toute quantité strictement inférieure à $\frac{1}{2} + \frac{1}{\pi}$, et rien de
plus.

## Going further

- Sans la contrainte de perpendicularité, le corbeau qui coupe seul peut s'assurer toute quantité
  strictement inférieure à $1$ : voir l'exercice 40968, où l'on étudie aussi le cas où c'est le
  renard qui coupe.
- La formule de l'étape 2 est un cousin du « théorème de la pizza » : si l'on coupe un disque par
  quatre droites passant par un même point, à $45^\circ$ les unes des autres, et qu'on colorie
  une part sur deux, les deux couleurs ont la même aire. Ici, avec deux droites seulement, l'écart
  entre les deux couleurs vaut $4st$.
