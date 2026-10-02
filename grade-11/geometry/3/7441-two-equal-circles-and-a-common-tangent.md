---
id: "7441"
title: "Deux cercles de même rayon et une tangente commune"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle, tangente, repere, produit-scalaire, perpendiculaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : géométrie"
  reference: "stage_ete_2011.pdf, « Troisième période », incontournable géométrie, second TD, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Deux cercles $\Gamma$ et $\Gamma'$ ont **le même rayon** et se coupent en deux points $A$ et $B$.

Une droite est tangente aux deux cercles à la fois : elle touche $\Gamma$ en $C$ et $\Gamma'$ en
$D$, les deux cercles étant du même côté de cette droite.

Montrer que les droites $(AC)$ et $(BD)$ sont perpendiculaires.

## Hints

1. Quel repère choisir ? La tangente commune est la seule droite privilégiée de la figure : prends-la
   comme axe des abscisses.
2. Le rayon d'un cercle au point de contact est perpendiculaire à la tangente. Que vaut alors
   l'ordonnée de chacun des deux centres ?
3. Écris les équations des deux cercles, puis soustrais-les. Que t'apprend le résultat sur les
   abscisses de $A$ et de $B$ ?
4. Pour conclure, calcule le produit scalaire $\vec{CA} \cdot \vec{DB}$.

## Solution

Notons $r$ le rayon commun aux deux cercles.

### Le choix du repère

Prenons la tangente commune comme axe des abscisses, et le point $C$ comme origine.

Le rayon d'un cercle aboutissant au point de contact est perpendiculaire à la tangente. Le centre
$O$ de $\Gamma$ est donc sur la perpendiculaire à l'axe des abscisses passant par $C$, à la
distance $r$. En choisissant l'axe des ordonnées vers le côté où sont les cercles :
$$C = (0 ; 0), \qquad O = (0 ; r).$$

De même, en notant $D = (d ; 0)$ avec $d \neq 0$, le centre $O'$ de $\Gamma'$ est
$$O' = (d ; r).$$

Les deux centres sont à la **même hauteur** $r$ : c'est exactement là que sert l'hypothèse « même
rayon ».

### Les équations des deux cercles

$$\Gamma : \quad x^2 + (y - r)^2 = r^2, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 - 2ry = 0,$$
$$\Gamma' : \quad (x - d)^2 + (y - r)^2 = r^2, \qquad \text{c'est-à-dire} \qquad x^2 - 2dx + d^2 + y^2 - 2ry = 0.$$

### Où sont $A$ et $B$ ?

Les points $A$ et $B$ sont sur les deux cercles : leurs coordonnées vérifient les deux équations.
Soustrayons la première de la seconde. Les termes $x^2$, $y^2$ et $-2ry$ disparaissent, et il
reste
$$-2dx + d^2 = 0, \qquad \text{donc} \qquad x = \frac{d}{2}.$$

Les deux points d'intersection ont donc la même abscisse $\dfrac{d}{2}$ : c'est l'abscisse du
milieu de $[CD]$.

Reportons $x = \dfrac{d}{2}$ dans l'équation de $\Gamma$ :
$$\frac{d^2}{4} + y^2 - 2ry = 0, \qquad \text{c'est-à-dire} \qquad y^2 - 2ry + \frac{d^2}{4} = 0.$$

Cette équation du second degré en $y$ a deux solutions, qui sont les ordonnées de $A$ et de $B$ :
$$y = r \pm h, \qquad \text{où} \qquad h = \sqrt{r^2 - \frac{d^2}{4}}.$$

(La quantité sous la racine est positive : c'est précisément la condition pour que les deux
cercles se coupent en deux points.)

Posons donc
$$A = \left(\frac{d}{2} \, ; \, r - h\right), \qquad B = \left(\frac{d}{2} \, ; \, r + h\right).$$

### Le calcul final

$$\vec{CA} = \left(\frac{d}{2} \, ; \, r - h\right), \qquad
\vec{DB} = \left(\frac{d}{2} - d \, ; \, r + h\right) = \left(-\frac{d}{2} \, ; \, r + h\right).$$

Leur produit scalaire vaut
$$\vec{CA} \cdot \vec{DB} = \frac{d}{2} \times \left(-\frac{d}{2}\right) + (r - h)(r + h)
= -\frac{d^2}{4} + r^2 - h^2.$$

Or $h^2 = r^2 - \dfrac{d^2}{4}$, donc
$$\vec{CA} \cdot \vec{DB} = -\frac{d^2}{4} + r^2 - \left(r^2 - \frac{d^2}{4}\right) = 0.$$

Le produit scalaire est nul : **les droites $(AC)$ et $(BD)$ sont perpendiculaires.**

### Une remarque

L'énoncé ne dit pas lequel des deux points d'intersection s'appelle $A$ et lequel s'appelle $B$.
Ce n'est pas un oubli : le même calcul avec les rôles échangés donne
$$\vec{CB} \cdot \vec{DA} = \frac{d}{2} \times \left(-\frac{d}{2}\right) + (r + h)(r - h) = 0$$
aussi. Les deux façons de nommer les points donnent donc toutes les deux un angle droit.

## Going further

Que devient la figure quand les deux cercles sont tangents entre eux, c'est-à-dire quand
$d = 2r$ ? Et pour quelles valeurs de $d$ les deux cercles se coupent-ils vraiment en deux
points ?
