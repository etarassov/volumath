---
id: "12407"
title: "L'aire d'un quadrilatère et les produits de ses côtés"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [aire, quadrilatere, inegalite, symetrie, mediatrice]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 10 janvier 2018"
  reference: "2018-01_pofm-2017-2018-test-janvier.pdf, exercice commun, exercice 4 ; corrigé 2018-01_pofm-2017-2018-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-01_pofm-2017-2018-test-janvier.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe d'aire $S$. On note $a = AB$, $b = BC$, $c = CD$ et
$d = DA$.

Montrer que, quelle que soit la façon de ranger les quatre longueurs $a$, $b$, $c$, $d$ dans un
ordre $x$, $y$, $z$, $t$, on a
$$S \leqslant \frac{1}{2}(xy + zt).$$

## Hints

1. La valeur de $xy + zt$ ne dépend que de la façon de couper $\{a, b, c, d\}$ en deux paires. Il
   n'y a que trois façons : $ab + cd$, $ad + bc$ et $ac + bd$.
2. Dans un triangle, l'aire vaut la moitié d'un côté fois la hauteur correspondante. Compare la
   hauteur à un autre côté : tu obtiens que l'aire d'un triangle est au plus la moitié du produit
   de deux de ses côtés.
3. Pour $ab + cd$ et pour $ad + bc$, coupe le quadrilatère par une diagonale.
4. Pour $ac + bd$, le problème est que $a$ et $c$ ne sont pas côte à côte. Remplace $A$ par son
   symétrique $A'$ par rapport à la médiatrice de $[BD]$ : le triangle $A'BD$ a la même aire que
   $ABD$, mais ses côtés $A'B$ et $A'D$ sont échangés.

## Solution

### Un outil : l'aire d'un triangle

Dans un triangle $XYZ$, la hauteur issue de $Z$ est plus courte que le côté $XZ$ (le plus court
chemin de $Z$ à la droite $(XY)$ est la perpendiculaire). Donc
$$\text{aire}(XYZ) = \frac{1}{2} \, XY \times \text{hauteur} \leqslant \frac{1}{2} \, XY \cdot XZ.$$
**L'aire d'un triangle est au plus la moitié du produit de deux de ses côtés.**

### Étape 1 : trois cas seulement

Quand $x, y, z, t$ parcourent les rangements de $a, b, c, d$, la somme $xy + zt$ ne dépend que de
la façon de grouper les quatre longueurs en deux paires. Il y a trois groupements, donc il suffit
de montrer
$$S \leqslant \tfrac{1}{2}(ab + cd), \qquad S \leqslant \tfrac{1}{2}(ad + bc), \qquad S \leqslant \tfrac{1}{2}(ac + bd).$$

### Étape 2 : les deux premiers cas

La diagonale $[AC]$ coupe le quadrilatère convexe en deux triangles, donc, avec l'outil,
$$S = \text{aire}(ABC) + \text{aire}(CDA) \leqslant \tfrac{1}{2} AB \cdot BC + \tfrac{1}{2} CD \cdot DA = \tfrac{1}{2}(ab + cd).$$
De même, avec la diagonale $[BD]$,
$$S = \text{aire}(DAB) + \text{aire}(BCD) \leqslant \tfrac{1}{2}(da + bc).$$

### Étape 3 : le troisième cas, $ac + bd$

Soit $A'$ le symétrique de $A$ par rapport à la médiatrice de $[BD]$. Cette symétrie échange $B$
et $D$, donc
$$A'B = AD = d, \qquad A'D = AB = a,$$
et le triangle $A'BD$ est l'image du triangle $ADB$ : il a la même aire. De plus, la symétrie
garde la droite $(BD)$ et chacun des deux côtés de cette droite. Donc $A'$ est, comme $A$, de
l'autre côté de $(BD)$ par rapport à $C$, et
$$S = \text{aire}(ABD) + \text{aire}(CBD) = \text{aire}(A'BD) + \text{aire}(CBD).$$

Notons $h$ et $h'$ les distances de $A'$ et de $C$ à la droite $(BD)$. Alors
$$S = \tfrac{1}{2} \, BD \, (h + h').$$
Comme $A'$ et $C$ sont de part et d'autre de $(BD)$, le segment $[A'C]$ coupe la droite $(BD)$ en
un point $P$. Le point $P$ coupe le triangle $A'BC$ en deux triangles $A'BP$ et $CBP$ de base
$BP$ sur la droite $(BD)$, donc $\text{aire}(A'BC) = \tfrac{1}{2} BP\,(h + h')$. De même
$\text{aire}(A'DC) = \tfrac{1}{2} DP\,(h + h')$. Par l'inégalité triangulaire, $BP + PD \geqslant BD$,
donc
$$S = \tfrac{1}{2} BD\,(h + h') \leqslant \tfrac{1}{2}(BP + PD)(h + h') = \text{aire}(A'BC) + \text{aire}(A'DC).$$
(Si $P$ est sur le segment $[BD]$, c'est une égalité : le quadrilatère $A'BCD$ est alors convexe.)

On applique enfin l'outil aux triangles $A'BC$ et $A'DC$ :
$$S \leqslant \tfrac{1}{2} A'B \cdot BC + \tfrac{1}{2} A'D \cdot DC = \tfrac{1}{2}(d \, b + a \, c).$$

### Conclusion

Dans les trois groupements, $S \leqslant \frac{1}{2}(xy + zt)$. **L'inégalité est vraie pour tout
rangement $x, y, z, t$ de $a, b, c, d$.**

## Going further

Quand y a-t-il égalité dans $S \leqslant \frac{1}{2}(ab + cd)$ ? Et dans
$S \leqslant \frac{1}{2}(ac + bd)$ ?
