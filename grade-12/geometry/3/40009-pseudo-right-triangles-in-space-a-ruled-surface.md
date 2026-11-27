---
id: "40009"
title: "Triangles pseudo-rectangles dans l'espace : une surface faite de droites"
grade: 12
theme: geometry
difficulty: 3
duration_min: 45
tags: [espace, geometrie-dans-l-espace, cercle, tangente, hyperbole, coordonnees, lieu-geometrique, pythagore, triangle]
adapted_from: null
see_also: ["40001", "40002", "40003", "40004", "40005", "40006", "40007", "40008", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), quatrième partie, questions 1 (a et b) et 2 (a à c)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Un triangle $ABC$ est dit **pseudo-rectangle en $A$** si la différence de ses angles en $B$ et en $C$
vaut $90^\circ$ en valeur absolue. On admet le résultat suivant : *le triangle $ABC$ est
pseudo-rectangle en $A$ si et seulement si le pied $P$ de la hauteur issue de $A$ est en dehors du
segment $[BC]$ et $PA^2 = PB \times PC$.*

L'espace est rapporté à un repère orthonormé $(O\,; \vec{u}, \vec{v}, \vec{w})$, de coordonnées
$(x, y, z)$. Dans le plan d'équation $z = 0$, soit $(\mathcal{C})$ le cercle de centre $O$ et de
rayon $1$, et soient $T$ et $P$ deux points distincts tels que la droite $(TP)$ soit tangente au
cercle $(\mathcal{C})$ en $T$. Soient $B$ et $C$ les points d'intersection de la droite $(OP)$ avec le
cercle $(\mathcal{C})$, et $(D)$ la droite perpendiculaire au plan d'équation $z = 0$ passant par $P$.

1. a) Montrer qu'il existe exactement deux points $A$ et $A'$ de la droite $(D)$ tels que les
   triangles $ABC$ et $A'BC$ soient pseudo-rectangles en $A$ et en $A'$ respectivement. Donner une
   construction simple de ces deux points.
   b) Montrer que les coordonnées de ces deux points vérifient $x^2 + y^2 = z^2 + 1$.
2. Soit $(H)$ l'ensemble des points $A$ et $A'$ obtenus quand $T$ et $P$ varient.
   a) Quelle est l'intersection de $(H)$ avec un plan orthogonal à $\vec{w}$ ?
   b) Quelle est l'intersection de $(H)$ avec un plan contenant la droite $(O\,; \vec{w})$ ?
   c) Montrer que $(H)$ est inclus dans une réunion de droites que l'on précisera.

## Hints

1. **Question 1.a.** Pour un point $A$ de $(D)$, quel est le pied de la hauteur issue de $A$ dans le
   triangle $ABC$ ?
2. **Question 1.a.** Calculer $PB \times PC$ à l'aide de $OP$, puis comparer avec $PT^2$ grâce au
   triangle $OTP$.
3. **Question 2.** Quels points $P$ du plan $z = 0$ peuvent être obtenus ? Montrer que $(H)$ est
   exactement l'ensemble des points vérifiant $x^2 + y^2 = z^2 + 1$ et $z \neq 0$.
4. **Question 2.c.** D'après la construction de la question 1.a, le point $A$ est sur une droite qui
   passe par $T$, dans le plan vertical qui contient $(TP)$. Laquelle ?
5. **Question 2.c.** Pour $T(\cos t, \sin t, 0)$, le vecteur $\vec{\tau} = (-\sin t, \cos t, 0)$
   dirige la tangente en $T$. Calculer $x^2 + y^2$ et $z^2$ pour le point $T + \lambda(\vec{\tau} + \vec{w})$.

## Solution

**1.a)** Soit $A$ un point de $(D)$, distinct de $P$ (si $A = P$, les points $A$, $B$, $C$ sont
alignés). La droite $(AP)$ est perpendiculaire au plan $z = 0$, donc à la droite $(BC)$, et $P$ est
sur $(BC)$ : $P$ est le pied de la hauteur issue de $A$ dans le triangle $ABC$.

Le triangle $OTP$ est rectangle en $T$ (la tangente est perpendiculaire au rayon), donc
$OP^2 = OT^2 + PT^2 = 1 + PT^2 > 1$. Le point $P$ est à l'extérieur du cercle, donc en dehors du
segment $[BC]$, qui est un diamètre. Sur la droite $(OP)$, les points $B$ et $C$ sont à distance $1$
de $O$, de part et d'autre, donc
$$PB \times PC = (OP - 1)(OP + 1) = OP^2 - 1 = PT^2 .$$
Par le résultat admis, $ABC$ est pseudo-rectangle en $A$ si et seulement si $PA^2 = PT^2$,
c'est-à-dire $PA = PT$. Sur la droite $(D)$, il y a exactement deux points à la distance $PT > 0$ de
$P$, symétriques par rapport au plan $z = 0$.

*Construction.* Dans le plan vertical qui contient la droite $(TP)$, on fait tourner le segment
$[PT]$ d'un quart de tour autour de $P$, dans un sens puis dans l'autre : on obtient $A$ et $A'$.
Autrement dit, $A$ et $A'$ sont les points où les deux droites passant par $T$, dans ce plan
vertical, inclinées à $45^\circ$ sur le plan horizontal, coupent $(D)$ : les triangles $TPA$ et
$TPA'$ sont rectangles isocèles en $P$.

**1.b)** Si $P$ a pour coordonnées $(x, y, 0)$, les points $A$ et $A'$ ont pour coordonnées
$(x, y, z)$ avec $z^2 = PA^2 = PT^2 = OP^2 - 1 = x^2 + y^2 - 1$. Donc $x^2 + y^2 = z^2 + 1$.

**2.** *Description de $(H)$.* Tout point $P$ du plan $z = 0$ tel que $OP > 1$ peut être obtenu : d'un
point extérieur au cercle partent deux tangentes. Par 1.b, les points de $(H)$ vérifient
$x^2 + y^2 = z^2 + 1$, et $z \neq 0$ puisque $PA = PT > 0$. Réciproquement, si
$x^2 + y^2 = z^2 + 1$ et $z \neq 0$, le point $P(x, y, 0)$ vérifie $OP^2 = 1 + z^2 > 1$ ; on choisit
une tangente $(TP)$, et alors $PT^2 = OP^2 - 1 = z^2$, donc $(x, y, z)$ est l'un des points $A$, $A'$.
Ainsi
$$(H) = \left\{ (x, y, z) : x^2 + y^2 = z^2 + 1,\ z \neq 0 \right\}.$$
C'est l'ensemble des points vérifiant $x^2 + y^2 = z^2 + 1$, privé du cercle $(\mathcal{C})$.

**2.a)** Un plan orthogonal à $\vec{w}$ a une équation $z = h$. Si $h = 0$, l'intersection est vide.
Sinon, ce sont les points $(x, y, h)$ avec $x^2 + y^2 = h^2 + 1$ : le cercle de centre $(0, 0, h)$ et
de rayon $\sqrt{h^2 + 1}$, situé dans ce plan.

**2.b)** Un plan contenant l'axe $(O\,; \vec{w})$ est dirigé par $\vec{w}$ et par un vecteur
horizontal unitaire $\vec{e} = (\cos\varphi, \sin\varphi, 0)$ ; ses points s'écrivent
$X\vec{e} + Z\vec{w}$, dans le repère orthonormé $(O\,; \vec{e}, \vec{w})$ de ce plan. Un tel point a
$x^2 + y^2 = X^2$ et $z = Z$. L'intersection est donc l'ensemble des points du plan tels que
$X^2 - Z^2 = 1$ et $Z \neq 0$ : une hyperbole, privée de ses deux sommets $X = \pm 1$, $Z = 0$.

**2.c)** Pour un point $T(\cos t, \sin t, 0)$ du cercle, le vecteur
$\vec{\tau} = (-\sin t, \cos t, 0)$ est unitaire et orthogonal à $\overrightarrow{OT}$ : il dirige la
tangente en $T$. Soient $\Delta_T^+$ et $\Delta_T^-$ les droites passant par $T$ et dirigées par
$\vec{\tau} + \vec{w}$ et $\vec{\tau} - \vec{w}$.

Un point de $\Delta_T^{\pm}$ s'écrit $M = T + \lambda\vec{\tau} \pm \lambda\vec{w}$. Sa projection sur
le plan $z = 0$ est $T + \lambda\vec{\tau}$, et comme $\overrightarrow{OT}$ et $\vec{\tau}$ sont
orthogonaux et unitaires, $x^2 + y^2 = 1 + \lambda^2$, tandis que $z^2 = \lambda^2$. Donc
$x^2 + y^2 = z^2 + 1$.

Réciproquement, soit $A$ un point de $(H)$, obtenu à partir de $T$ et $P$. On a $P = T + \lambda\vec{\tau}$
avec $\lvert \lambda \rvert = PT$, et $A = P \pm PT\,\vec{w}$, donc $A = T + \lambda\vec{\tau} \pm \lambda\vec{w}$
pour un choix convenable du signe : $A$ est sur $\Delta_T^+$ ou sur $\Delta_T^-$.

**Conclusion :** $(H)$ est inclus dans la réunion des droites $\Delta_T^+$ et $\Delta_T^-$, pour $T$
parcourant le cercle $(\mathcal{C})$ : ce sont les droites qui passent par un point $T$ du cercle,
dans le plan vertical contenant la tangente en $T$, et qui font un angle de $45^\circ$ avec le plan
horizontal. Plus précisément, $(H)$ est cette réunion privée du cercle $(\mathcal{C})$.

**Bilan.** Quand on pose un triangle $ABC$ pseudo-rectangle au-dessus d'un diamètre $[BC]$ d'un cercle
de rayon $1$, le sommet $A$ décrit la surface d'équation $x^2 + y^2 = z^2 + 1$ (sauf le cercle de
départ). Ses sections horizontales sont des cercles, ses sections par un plan vertical passant par
l'axe sont des hyperboles, et pourtant elle est entièrement formée de droites : par chacun de ses
points en passent deux.

## Going further

- Vérifier que par chaque point de la surface $x^2 + y^2 = z^2 + 1$ passent exactement deux droites
  tracées sur la surface. Cette surface s'appelle un *hyperboloïde à une nappe* ; on peut la
  fabriquer avec des baguettes droites ou des fils tendus entre deux cercles.
- La fin du sujet cherchait les points de cette surface dont les trois coordonnées sont entières :
  voir l'exercice 40010.
