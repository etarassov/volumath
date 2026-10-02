---
id: "10066"
title: "Quatre points cocycliques dans un polygone régulier à 18 côtés"
grade: 9
theme: geometry
difficulty: 4
duration_min: 45
tags: [polygone-regulier, triangle-isocele, symetrie-axiale, mediatrice, cocyclicite, angle-inscrit, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 2 (géométrie)"
  reference: "2017-11_pofm-2017-2018-envoi2.pdf, Exercices communs, exercice 6 ; corrigé 2018-01_pofm-2017-2018-envoi2-corrige.pdf (le corrigé montre des alignements avec d'autres sommets et conclut avec la corde [BC] ; ici on garde ses deux symétries et sa médiatrice, on calcule les angles avec des triangles isocèles de sommet O, et on conclut avec la corde [A2A3], ce qui rend évident que B et C sont du même côté)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/11/pofm-2017-2018-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-11_pofm-2017-2018-envoi2.pdf"
---

## Statement

Soit $A_1 A_2 \ldots A_{18}$ un polygone régulier à 18 côtés, de centre $O$. Soit $B$ le point du segment $[OA_1]$ tel que $\widehat{BA_2O} = 20°$, et $C$ le point du segment $[OA_2]$ tel que $\widehat{CA_1O} = 10°$.

![Le polygone régulier à 18 côtés de centre O, les rayons [OA1] et [OA2], et les segments [A2B] et [A1C] qui font des angles de 20° et de 10° avec ces rayons](10066-figure-1.svg)

Montrer que les points $B$, $C$, $A_2$ et $A_3$ sont sur un même cercle.

## Hints

1. Les sommets sont sur un cercle de centre $O$. Que vaut l'angle $\widehat{A_k O A_{k+1}}$ ? Pour deux sommets quelconques $A_i$ et $A_j$, le triangle $OA_iA_j$ est isocèle en $O$ : calcule ses angles.
2. La symétrie d'axe $(OA_2)$ échange $A_1$ et $A_3$. Déduis-en l'angle $\widehat{OA_3C}$, puis l'angle $\widehat{A_2CA_3}$.
3. Montre que $BO = BA_2$. Montre ensuite que $A_5$ et $A_{17}$ sont sur la médiatrice de $[OA_2]$.
4. La symétrie d'axe $(OA_1)$ échange $A_3$ et $A_{17}$. Calcule l'angle $\widehat{OA_3B}$, puis l'angle $\widehat{A_2BA_3}$, et compare-le à $\widehat{A_2CA_3}$.

## Solution

**Rappel.**

- *Angle inscrit.* Si $X$, $Y$, $Z$, $T$ sont sur un même cercle, avec $Z$ et $T$ du même côté de la droite $(XY)$, alors $\widehat{XZY} = \widehat{XTY}$.
- *Réciproque.* Si $Z$ et $T$ sont du même côté de la droite $(XY)$ et si $\widehat{XZY} = \widehat{XTY}$, alors $X$, $Y$, $Z$, $T$ sont sur un même cercle.

### Étape 1 : les angles du polygone

Les 18 sommets sont sur un cercle $\Gamma$ de centre $O$ et de rayon $R$, et ils le partagent en 18 arcs égaux. Deux sommets voisins sont donc vus depuis $O$ sous un angle de $360° / 18 = 20°$. Si l'on passe de $A_i$ à $A_j$ en $k$ pas, par le chemin le plus court, l'angle $\widehat{A_i O A_j}$ vaut $k \times 20°$.

Le triangle $OA_iA_j$ est isocèle en $O$, car $OA_i = OA_j = R$. Ses deux angles à la base sont égaux, et valent la moitié de $180° - \widehat{A_iOA_j}$. Par exemple, $\widehat{A_2OA_3} = 20°$, donc
$$\widehat{OA_2A_3} = \widehat{OA_3A_2} = 80° .$$

Deux remarques sur la place des points :

- La droite $(OA_1)$ est la droite $(A_1A_{10})$, un diamètre de $\Gamma$. Les sommets $A_2, \ldots, A_9$ sont d'un côté de cette droite, et $A_{11}, \ldots, A_{18}$ de l'autre. De même pour $(OA_2) = (A_2A_{11})$ et pour $(OA_3) = (A_3A_{12})$.
- Le point $B$ n'est ni $O$ ni $A_1$ (en $A_1$, l'angle $\widehat{A_1A_2O}$ vaut $80°$, pas $20°$). De même, $C$ n'est ni $O$ ni $A_2$. Les points $B$ et $C$ sont donc à l'intérieur du disque limité par $\Gamma$.

### Étape 2 : l'angle $\widehat{A_2CA_3}$

La symétrie d'axe $(OA_2)$ envoie le polygone sur lui-même, et elle échange $A_1$ et $A_3$, qui sont de part et d'autre de $A_2$, à un pas. Elle laisse fixes $O$ et $C$, qui sont sur l'axe. Une symétrie conserve les angles, donc
$$\widehat{OA_3C} = \widehat{OA_1C} = 10° .$$

Dans le triangle $OCA_3$, l'angle en $O$ est $\widehat{A_2OA_3} = 20°$, puisque $C$ est sur $[OA_2]$. La somme des angles donne
$$\widehat{OCA_3} = 180° - 20° - 10° = 150° .$$
Le point $C$ est entre $O$ et $A_2$, donc les angles $\widehat{OCA_3}$ et $\widehat{A_3CA_2}$ sont supplémentaires :
$$\widehat{A_2CA_3} = 180° - 150° = 30° .$$

### Étape 3 : le point $B$ est sur la droite $(A_5A_{17})$

Dans le triangle $OBA_2$, l'angle en $O$ est $\widehat{A_1OA_2} = 20°$ et l'angle en $A_2$ est $\widehat{BA_2O} = 20°$. Ce triangle a deux angles égaux, il est isocèle en $B$ : $BO = BA_2$. Le point $B$ est donc sur la médiatrice de $[OA_2]$.

Le triangle $OA_2A_5$ est isocèle en $O$ avec $\widehat{A_2OA_5} = 3 \times 20° = 60°$, donc il est équilatéral, et $A_5O = A_5A_2$. De même, on passe de $A_{17}$ à $A_2$ en trois pas ($A_{17}$, $A_{18}$, $A_1$, $A_2$), donc le triangle $OA_2A_{17}$ est équilatéral et $A_{17}O = A_{17}A_2$.

Les points $A_5$ et $A_{17}$ sont distincts et tous les deux sur la médiatrice de $[OA_2]$ : **cette médiatrice est la droite $(A_5A_{17})$, et $B$ est sur cette droite.**

Enfin, les points de la droite $(A_5A_{17})$ qui sont dans le disque forment la corde $[A_5A_{17}]$. Le point $B$ est dans le disque, donc $B$ est sur le segment $[A_{17}A_5]$, et $B \neq A_{17}$.

### Étape 4 : l'angle $\widehat{OA_3B}$

La symétrie d'axe $(OA_1)$ envoie le polygone sur lui-même. Elle échange $A_3$ et $A_{17}$, qui sont à deux pas de $A_1$, de part et d'autre. Elle laisse fixes $O$ et $B$, qui sont sur l'axe. Donc
$$\widehat{OA_3B} = \widehat{OA_{17}B} .$$
Comme $B$ est sur le segment $[A_{17}A_5]$, l'angle $\widehat{OA_{17}B}$ est l'angle $\widehat{OA_{17}A_5}$. On passe de $A_{17}$ à $A_5$ en six pas, donc $\widehat{A_{17}OA_5} = 120°$, et le triangle isocèle $OA_{17}A_5$ a pour angles à la base $(180° - 120°)/2 = 30°$. Ainsi
$$\widehat{OA_3B} = 30° .$$

### Étape 5 : l'angle $\widehat{A_2BA_3}$

On regarde le triangle $BA_2A_3$.

- **L'angle en $A_2$.** Le point $B$ est sur $[OA_1]$, donc du côté de $A_1$ par rapport au diamètre $(A_2A_{11})$, et $A_3$ est de l'autre côté. La demi-droite $[A_2O)$ est donc entre $[A_2B)$ et $[A_2A_3)$, et
$$\widehat{BA_2A_3} = \widehat{BA_2O} + \widehat{OA_2A_3} = 20° + 80° = 100° .$$
- **L'angle en $A_3$.** Par rapport au diamètre $(A_3A_{12})$, les points $A_1$ et $A_2$ sont du même côté, donc $B$, qui est sur $[OA_1]$, est du même côté que $A_2$. Comme $\widehat{OA_3B} = 30°$ est plus petit que $\widehat{OA_3A_2} = 80°$, la demi-droite $[A_3B)$ est entre $[A_3O)$ et $[A_3A_2)$, et
$$\widehat{BA_3A_2} = \widehat{OA_3A_2} - \widehat{OA_3B} = 80° - 30° = 50° .$$

La somme des angles du triangle donne
$$\widehat{A_2BA_3} = 180° - 100° - 50° = 30° .$$

### Étape 6 : conclusion

On a $\widehat{A_2BA_3} = \widehat{A_2CA_3} = 30°$. De plus, $B$ et $C$ sont du même côté de la droite $(A_2A_3)$ : cette droite porte un côté du polygone, et le polygone tout entier, avec $B$ et $C$ à l'intérieur, est d'un seul côté de cette droite.

D'après la réciproque du théorème de l'angle inscrit, **les points $B$, $C$, $A_2$ et $A_3$ sont sur un même cercle.**

## Going further

- Soit $Q$ le centre de ce cercle. Avec le théorème de l'angle au centre, montre que le triangle $QA_2A_3$ est équilatéral : le rayon du cercle est égal au côté du polygone.
- Le corrigé officiel montre que $A_1$, $C$, $A_9$ sont alignés et que $A_2$, $B$, $A_{13}$ sont alignés. Démontre-le avec les triangles isocèles de l'étape 1. Montre ensuite que $C$ est sur la droite $(A_3A_{13})$ et que $B$ est sur la droite $(A_3A_{15})$.
- Déduis-en que $OC$ est égal au côté $A_2A_3$ du polygone : calcule les angles du triangle $QCA_2$, puis ceux du triangle $OCQ$.
