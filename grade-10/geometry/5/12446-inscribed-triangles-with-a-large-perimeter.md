---
id: "12446"
title: "Des triangles inscrits de grand périmètre"
grade: 10
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle, triangle, perimetre, aire, inegalite-triangulaire, recurrence, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 mars 2019"
  reference: "2019-04_Test-20-03-web.pdf, exercice 4 (commun aux groupes Junior et Senior) ; corrigé 2019-04_Test-20-03-Corrige-web.pdf (le corrigé minore l'aire avec la formule de Héron ; solution réécrite avec une hauteur)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/04/Test-20-03-web.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-04_Test-20-03-web.pdf"
---

## Statement

Soit $\mathcal{C}$ un cercle de rayon $1$, et soit $T$ un nombre réel. On dit qu'un ensemble de
triangles est **$T$-méraire** s'il vérifie les trois conditions suivantes :

- les sommets de chaque triangle sont sur le cercle $\mathcal{C}$ ;
- les intérieurs des triangles sont deux à deux disjoints (deux triangles peuvent cependant avoir
  un côté ou un sommet en commun) ;
- chaque triangle a un périmètre strictement plus grand que $T$.

Trouver tous les réels $T$ tels que, pour tout entier $n \geqslant 1$, il existe un ensemble
$T$-méraire formé d'exactement $n$ triangles.

## Hints

1. Regarde les triangles dont un côté est un diamètre du cercle. Que peux-tu dire de leur
   périmètre ?
2. Tu dois trouver que tout $T \leqslant 4$ convient. Pour placer autant de triangles que l'on veut,
   fixe un diamètre $[AB]$ et découpe en éventail à partir de $A$, en ajoutant des points de plus en
   plus près de $B$.
3. Si $T > 4$, montre qu'un triangle inscrit dans $\mathcal{C}$ et de périmètre plus grand que $T$
   ne peut pas être trop aplati : son aire dépasse un nombre fixe, qui ne dépend que de $T$. Compare
   ensuite avec l'aire du disque.
4. Dans un tel triangle, appelle $c$ le plus grand côté et $h$ la hauteur correspondante. Montre que
   le périmètre est au plus $2h + 2c$, en utilisant $\sqrt{h^2 + x^2} \leqslant h + x$.

## Solution

Nous allons montrer que **les réels cherchés sont exactement les réels $T \leqslant 4$**.

### Une remarque sur les diamètres

Soit $[AB]$ un diamètre de $\mathcal{C}$, donc $AB = 2$, et $P$ un point du cercle autre que $A$ et
$B$. Comme $P$ n'est pas sur le segment $[AB]$, l'inégalité triangulaire est stricte :
$PA + PB > AB$. Le périmètre du triangle $ABP$ vérifie donc
$$AB + PA + PB > 2\,AB = 4.$$

### Première partie : tout $T \leqslant 4$ convient

Fixons $T \leqslant 4$ et un diamètre $[AB]$. On travaille sur l'un des deux demi-cercles d'extrémités
$A$ et $B$.

Montrons par récurrence sur $n \geqslant 1$ la propriété suivante : on peut placer $n$ points
$P_1, P_2, \ldots, P_n$ sur ce demi-cercle, dans cet ordre en allant de $A$ vers $B$, de sorte que
les $n$ triangles
$$AP_1P_2, \quad AP_2P_3, \quad \ldots, \quad AP_{n-1}P_n, \quad AP_nB$$
aient tous un périmètre strictement plus grand que $T$.

Ces triangles ont des intérieurs disjoints : ils s'obtiennent en découpant le polygone convexe
$AP_1P_2 \ldots P_nB$ par les segments $[AP_2]$, $[AP_3]$, ..., $[AP_n]$, comme on découpe un
éventail. La propriété donne donc un ensemble $T$-méraire de $n$ triangles.

**Pour $n = 1$**, on place $P_1$ n'importe où sur le demi-cercle, sauf en $A$ et en $B$. D'après la
remarque, le triangle $AP_1B$ a un périmètre plus grand que $4$, donc que $T$.

**Passage de $n$ à $n + 1$.** Supposons les points $P_1, \ldots, P_n$ placés. Posons
$$\varepsilon = (AP_n + P_nB + AB) - T,$$
qui est strictement positif puisque le triangle $AP_nB$ a un périmètre plus grand que $T$.
Plaçons $P_{n+1}$ sur l'arc entre $P_n$ et $B$, assez près de $B$ pour que
$BP_{n+1} < \dfrac{\varepsilon}{2}$. On remplace le triangle $AP_nB$ par les deux triangles
$AP_nP_{n+1}$ et $AP_{n+1}B$. Les autres triangles ne changent pas, et il faut vérifier les deux
nouveaux.

- Le triangle $AP_{n+1}B$ a un périmètre plus grand que $4$ d'après la remarque, donc plus grand
  que $T$.
- Pour le triangle $AP_nP_{n+1}$, l'inégalité triangulaire donne
  $P_nP_{n+1} \geqslant P_nB - BP_{n+1}$ et $AP_{n+1} \geqslant AB - BP_{n+1}$. Donc
  $$AP_n + P_nP_{n+1} + P_{n+1}A \geqslant AP_n + P_nB + AB - 2\,BP_{n+1} = T + \varepsilon - 2\,BP_{n+1} > T,$$
  puisque $2\,BP_{n+1} < \varepsilon$.

La propriété est vraie pour $n + 1$. Par récurrence, elle est vraie pour tout $n \geqslant 1$, et
tout $T \leqslant 4$ convient.

### Deuxième partie : aucun $T > 4$ ne convient

Fixons $T > 4$ et posons $\varepsilon = \dfrac{T - 4}{2} > 0$, de sorte que $T = 4 + 2\varepsilon$.

**Un triangle de grand périmètre n'est pas aplati.** Soit $XYZ$ un triangle dont les sommets sont
sur $\mathcal{C}$ et dont le périmètre $p$ est plus grand que $T$. Nommons-le de sorte que $[XY]$
soit son plus grand côté, et notons $c = XY$. Soit $H$ le pied de la hauteur issue de $Z$, et
$h = ZH$.

- **$H$ est sur le segment $[XY]$.** Sinon, par exemple, $Y$ serait entre $X$ et $H$. Dans le
  triangle $ZHX$ rectangle en $H$, l'hypoténuse est plus longue que le côté de l'angle droit, donc
  $ZX > XH > XY$. Cela contredit le fait que $[XY]$ est le plus grand côté.
- **Le périmètre est au plus $2h + 2c$.** Par le théorème de Pythagore,
  $ZX = \sqrt{h^2 + XH^2} \leqslant h + XH$, car en élevant au carré on obtient
  $h^2 + XH^2 \leqslant h^2 + 2h \cdot XH + XH^2$, ce qui est vrai. De même $ZY \leqslant h + HY$. En
  additionnant, et comme $XH + HY = c$ :
  $$p = c + ZX + ZY \leqslant 2h + 2c.$$
- **La hauteur est plus grande que $\varepsilon$.** Une corde du cercle est au plus égale à un
  diamètre, donc $c \leqslant 2$, et $4 + 2\varepsilon < p \leqslant 2h + 4$. Donc $h > \varepsilon$.
- **Le plus grand côté est plus grand que $\frac{4}{3}$.** Le plus grand des trois côtés est au moins
  égal à leur moyenne, donc $c \geqslant \dfrac{p}{3} > \dfrac{4}{3}$.

L'aire du triangle vérifie donc
$$\text{aire}(XYZ) = \frac{c \times h}{2} > \frac{1}{2} \times \frac{4}{3} \times \varepsilon = \frac{2\varepsilon}{3}.$$

**On ne peut pas en mettre trop.** Les triangles d'un ensemble $T$-méraire sont tous à l'intérieur du
disque de rayon $1$, puisque leurs sommets sont sur le cercle. Leurs intérieurs étant disjoints, la
somme de leurs aires est au plus l'aire du disque, qui vaut $\pi$. S'il y a $n$ triangles, chacun
d'aire plus grande que $\frac{2\varepsilon}{3}$, on obtient
$$n \times \frac{2\varepsilon}{3} < \pi, \quad \text{donc} \quad n < \frac{3\pi}{2\varepsilon}.$$
Pour un entier $n$ plus grand que $\dfrac{3\pi}{2\varepsilon}$, il n'existe donc aucun ensemble
$T$-méraire de $n$ triangles : $T$ ne convient pas.

### Conclusion

**Les réels $T$ qui conviennent sont exactement les réels $T \leqslant 4$.**

## Going further

1. Pour $T = 5$, donner un entier $n$ explicite tel qu'il n'existe aucun ensemble $5$-méraire de $n$
   triangles.
2. Existe-t-il un ensemble $5$-méraire de $2$ triangles ? (On pourra se demander si le centre du
   cercle est à l'intérieur de chacun des deux triangles.)
