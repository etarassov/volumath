---
id: "8523"
title: "Deux cent un points et un petit triangle"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [principe-des-tiroirs, aire, triangle, decoupage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Principe des tiroirs » (Vincent) du Groupe A, exercice 9"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Élodie place $201$ points dans un rectangle d'aire $200\ \text{cm}^2$.

Démontrer qu'il existe trois de ces points qui sont les sommets d'un triangle d'aire au plus
$1\ \text{cm}^2$.

*Un triangle aplati, dont les trois sommets sont alignés, a une aire nulle : il convient donc
aussi.*

## Hints

1. Découpe le rectangle en petits rectangles, et compte-les de façon à pouvoir appliquer le principe des tiroirs à trois points.
2. Si tu découpes en $100$ morceaux, combien de points au minimum se retrouvent dans un même morceau ?
3. Il reste alors à démontrer un fait général : trois points situés dans un rectangle d'aire $\mathcal{A}$ forment un triangle d'aire au plus $\mathcal{A}/2$.
4. Pour ce fait général, trace la droite horizontale passant par celui des trois points dont la hauteur est « au milieu ». Elle coupe le triangle en deux.

## Solution

### Étape 1 : trois points dans un petit rectangle

Découpons le rectangle en $100$ petits rectangles identiques, en le tranchant dans le sens de
la longueur. Chacun a une aire de

$$\frac{200}{100} = 2\ \text{cm}^2 .$$

Rangeons chacun des $201$ points dans un des $100$ petits rectangles (pour un point situé sur
une frontière, on choisit une fois pour toutes l'un des rectangles qui le touchent).

Si chaque petit rectangle contenait au plus $2$ points, il y aurait au plus
$100 \times 2 = 200$ points en tout. Comme il y en a $201$, **un des petits rectangles
contient au moins $3$ points.**

### Étape 2 : un triangle dans un rectangle

Démontrons le fait général suivant.

> Si trois points $P$, $Q$, $R$ sont dans un rectangle d'aire $\mathcal{A}$, alors le triangle
> $PQR$ a une aire au plus $\mathcal{A}/2$.

Plaçons le rectangle avec ses côtés horizontaux et verticaux ; notons $L$ sa largeur
(horizontale) et $h$ sa hauteur, de sorte que $\mathcal{A} = L \times h$.

Parmi les trois points, appelons $M$ celui dont la hauteur est intermédiaire, et $B$, $H$ les
deux autres (celui du bas et celui du haut). Traçons la droite horizontale $\Delta$ passant
par $M$ : comme la hauteur de $M$ est entre celles de $B$ et de $H$, cette droite coupe le
segment $[BH]$ en un point $N$.

Le segment $[MN]$ coupe le triangle en deux triangles, $BMN$ et $HMN$, qui ont tous les deux
$[MN]$ pour base.

- La hauteur de $BMN$ relative à cette base est la distance verticale entre $B$ et $\Delta$ ;
  appelons-la $h_1$.
- La hauteur de $HMN$ relative à cette base est la distance verticale entre $H$ et $\Delta$ ;
  appelons-la $h_2$.

L'aire du triangle $PQR$ vaut donc

$$\frac{MN \times h_1}{2} + \frac{MN \times h_2}{2} = \frac{MN \times (h_1 + h_2)}{2} .$$

Or $M$ et $N$ sont tous les deux dans le rectangle, sur une même horizontale, donc
$MN \leqslant L$. Et $h_1 + h_2$ est la distance verticale entre $B$ et $H$, donc
$h_1 + h_2 \leqslant h$.

L'aire du triangle vaut donc au plus $\dfrac{L \times h}{2} = \dfrac{\mathcal{A}}{2}$.

### Conclusion

Les trois points trouvés à l'étape 1 sont dans un rectangle d'aire $2\ \text{cm}^2$. D'après
l'étape 2, ils forment un triangle d'aire au plus $1\ \text{cm}^2$.
