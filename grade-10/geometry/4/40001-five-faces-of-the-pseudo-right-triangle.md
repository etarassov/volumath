---
id: "40001"
title: "Le triangle pseudo-rectangle : cinq façons de le reconnaître"
grade: 10
theme: geometry
difficulty: 4
duration_min: 60
tags: [triangle, orthocentre, cercle-circonscrit, tangente, pythagore, reciproque-de-pythagore, coordonnees, symetrie-axiale, chasse-aux-angles, hauteur, disjonction-de-cas]
adapted_from: null
see_also: ["40002", "40003", "40004", "40005", "40006", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), première partie, questions 1 à 5. Les angles sont donnés ici en degrés."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Soit $ABC$ un triangle (les points $A$, $B$, $C$ ne sont pas alignés). On note $\widehat{A}$,
$\widehat{B}$, $\widehat{C}$ ses angles, mesurés en degrés. On note $P$ le projeté orthogonal du
point $A$ sur la droite $(BC)$, et $D$ le symétrique du point $C$ par rapport à la droite $(AP)$.

On dit que le triangle $ABC$ est **pseudo-rectangle en $A$** si
$$\lvert \widehat{B} - \widehat{C} \rvert = 90^\circ .$$

1. Montrer que le triangle $ABC$ est pseudo-rectangle en $A$ si et seulement si le triangle $ABD$
   est rectangle en $A$.
2. Montrer que $PA^2 = PB \times PC$ si et seulement si le triangle $ABC$ est rectangle en $A$ ou
   pseudo-rectangle en $A$.
3. Montrer que le triangle $ABC$ est pseudo-rectangle en $A$ si et seulement si son orthocentre est
   le symétrique du point $A$ par rapport à la droite $(BC)$.
4. Soit $R$ le rayon du cercle circonscrit au triangle $ABC$. Montrer que $PB + PC = 2R$ si et
   seulement si le triangle $ABC$ est rectangle en $A$ ou pseudo-rectangle en $A$.
5. Montrer que le triangle $ABC$ est pseudo-rectangle en $A$ si et seulement si la droite $(AP)$ est
   tangente au cercle circonscrit au triangle $ABC$.

## Hints

1. **Question 1.** Faire deux figures : une où $P$ est sur le segment $[BC]$, une où il est en
   dehors. Comparer l'angle $\widehat{BAD}$ avec les angles $\widehat{PAB}$ et $\widehat{PAC}$.
2. **Question 1.** Si l'angle $\widehat{B}$ est obtus, que vaut l'angle $\widehat{PAB}$ dans le
   triangle $APB$, rectangle en $P$ ?
3. **Question 2.** Écrire le théorème de Pythagore dans les triangles $APB$ et $APC$, puis comparer
   $AB^2 + AC^2$ avec $BC^2$.
4. **Question 2.** Quand $P$ est en dehors du segment $[BC]$, faire le même calcul dans le triangle
   $ABD$, en remarquant que $PD = PC$.
5. **Question 3.** Appeler $A'$ le symétrique de $A$ par rapport à $(BC)$. Le quadrilatère $ACA'D$ a
   pour diagonales $[AA']$ et $[CD]$ : quelle est sa nature ?
6. **Question 3.** Le point $A'$ est déjà sur la hauteur issue de $A$. À quelle condition est-il
   aussi sur la hauteur issue de $C$ ?
7. **Question 4.** Prendre un repère orthonormé d'origine $P$ dont l'axe des abscisses est $(BC)$ :
   $A(0\,;h)$, $B(m\,;0)$, $C(n\,;0)$ avec $h > 0$. Calculer les coordonnées du centre $O$ du cercle
   circonscrit.
8. **Question 4.** Selon le signe de $mn$, $PB + PC$ vaut $\lvert m - n \rvert$ ou
   $\lvert m + n \rvert$. Dans le second cas, on doit tomber sur $(h^2 - mn)^2 = 0$.
9. **Question 5.** La tangente en $A$ au cercle est perpendiculaire au rayon $[OA]$. Utiliser les
   coordonnées de $O$ trouvées à la question 4.

## Solution

Notons $\beta = \widehat{PAB}$ et $\gamma = \widehat{PAC}$ (quand $P = B$, on pose $\beta = 0$, et
de même pour $C$). Ce sont des angles de triangles rectangles en $P$, donc ils sont compris entre
$0^\circ$ et $90^\circ$, $90^\circ$ exclu. Par la symétrie d'axe $(AP)$, on a
$\widehat{PAD} = \widehat{PAC} = \gamma$, $AD = AC$ et $PD = PC$ ; de plus $D$ est sur la droite
$(BC)$, de l'autre côté de $P$ par rapport à $C$.

**1.** *Premier cas : $P$ est sur le segment $[BC]$.* Alors $B$ et $C$ sont de part et d'autre de
$P$ (ou l'un d'eux est en $P$), donc $B$ et $D$ sont du même côté de $P$, et
$\widehat{BAD} = \lvert \beta - \gamma \rvert < 90^\circ$ : le triangle $ABD$ n'est pas rectangle en
$A$. D'autre part, les angles $\widehat{B}$ et $\widehat{C}$ sont alors tous deux aigus ou droits
(ce sont les angles aigus des triangles $APB$ et $APC$, ou bien un angle droit quand $P = B$ ou
$P = C$), et ils sont strictement positifs, donc $\lvert \widehat{B} - \widehat{C} \rvert < 90^\circ$ :
le triangle n'est pas pseudo-rectangle en $A$. Les deux propriétés sont fausses, l'équivalence est
vraie.

*Second cas : $P$ est en dehors du segment $[BC]$, par exemple du côté de $B$*, c'est-à-dire que
$B$ est entre $P$ et $C$. Alors $B$ et $C$ sont du même côté de $P$, et $D$ est de l'autre côté,
donc
$$\widehat{BAD} = \widehat{BAP} + \widehat{PAD} = \beta + \gamma .$$
Dans le triangle $APB$ rectangle en $P$, l'angle en $B$ vaut $180^\circ - \widehat{B}$, donc
$\beta = 90^\circ - (180^\circ - \widehat{B}) = \widehat{B} - 90^\circ$ (l'angle $\widehat{B}$ est
obtus). Dans le triangle $APC$, l'angle en $C$ est $\widehat{C}$, donc $\gamma = 90^\circ - \widehat{C}$.
Ainsi
$$\widehat{BAD} = \widehat{B} - \widehat{C},$$
et comme $\widehat{B} > 90^\circ > \widehat{C}$, c'est aussi $\lvert \widehat{B} - \widehat{C} \rvert$.
Donc $ABD$ est rectangle en $A$ si et seulement si $\lvert \widehat{B} - \widehat{C} \rvert = 90^\circ$.
Si $P$ est du côté de $C$, le même calcul donne $\widehat{BAD} = \widehat{C} - \widehat{B}$, avec la
même conclusion.

**Conclusion :** $ABC$ est pseudo-rectangle en $A$ si et seulement si $ABD$ est rectangle en $A$.
On retient au passage qu'un triangle pseudo-rectangle en $A$ a un angle obtus, en $B$ ou en $C$, et
que $P$ est alors en dehors du segment $[BC]$.

**2.** Commençons par un petit résultat. *Soient $U$ et $V$ deux points de la droite $(BC)$,
distincts de $P$ et situés de part et d'autre de $P$. Alors le triangle $AUV$ est rectangle en $A$
si et seulement si $PA^2 = PU \times PV$.* En effet, par le théorème de Pythagore dans les triangles
$APU$ et $APV$, rectangles en $P$,
$$AU^2 + AV^2 = 2PA^2 + PU^2 + PV^2,$$
et comme $P$ est entre $U$ et $V$, $UV^2 = (PU + PV)^2 = PU^2 + PV^2 + 2\,PU \times PV$. Par le
théorème de Pythagore et sa réciproque, $AUV$ est rectangle en $A$ si et seulement si
$AU^2 + AV^2 = UV^2$, c'est-à-dire si et seulement si $PA^2 = PU \times PV$.

Si $U$ et $V$ sont du même côté de $P$, l'angle $\widehat{UAV}$ est la différence de deux angles
aigus, donc il n'est jamais droit.

*Premier cas : $P$ est strictement entre $B$ et $C$.* Le petit résultat avec $U = B$, $V = C$ dit que
$PA^2 = PB \times PC$ équivaut à « $ABC$ rectangle en $A$ ». Et $ABC$ n'est pas pseudo-rectangle
(question 1). L'équivalence est vraie.

*Deuxième cas : $P = B$ ou $P = C$.* Alors $PB \times PC = 0 < PA^2$, et le triangle a un angle droit
en $B$ ou en $C$ : il n'est ni rectangle en $A$, ni pseudo-rectangle (question 1). L'équivalence
est vraie.

*Troisième cas : $P$ est en dehors du segment $[BC]$.* Le triangle n'est pas rectangle en $A$, car
$B$ et $C$ sont du même côté de $P$. Mais $P$ est entre $B$ et $D$, et $PD = PC$ ; le petit résultat
avec $U = B$, $V = D$ donne : $PA^2 = PB \times PC = PB \times PD$ si et seulement si $ABD$ est
rectangle en $A$, c'est-à-dire, par la question 1, si et seulement si $ABC$ est pseudo-rectangle
en $A$.

**Conclusion :** $PA^2 = PB \times PC$ si et seulement si $ABC$ est rectangle en $A$ (cas où $P$ est
entre $B$ et $C$) ou pseudo-rectangle en $A$ (cas où $P$ est en dehors de $[BC]$).

**3.** Notons $A'$ le symétrique de $A$ par rapport à $(BC)$ et $H$ l'orthocentre de $ABC$. Les
points $H$ et $A'$ sont tous deux sur la hauteur $(AP)$.

Si $P = C$ (angle droit en $C$), l'orthocentre est $C$, qui n'est pas $A'$, et le triangle n'est pas
pseudo-rectangle : l'équivalence est vraie. On suppose désormais $P \neq C$, donc $D \neq C$.

Le point $P$ est le milieu de $[AA']$ et aussi le milieu de $[CD]$. Le quadrilatère $ACA'D$ a donc
des diagonales qui se coupent en leur milieu : c'est un parallélogramme, et la droite $(CA')$ est
parallèle à $(AD)$.

Deux hauteurs d'un triangle se coupent en un seul point, l'orthocentre. Comme $A'$ est sur la hauteur
issue de $A$, on a $H = A'$ si et seulement si $A'$ est sur la hauteur issue de $C$, c'est-à-dire
(puisque $A' \neq C$) si et seulement si $(CA') \perp (AB)$. Comme $(CA')$ est parallèle à $(AD)$,
cela équivaut à $(AD) \perp (AB)$, c'est-à-dire à « $ABD$ rectangle en $A$ ». Par la question 1,
c'est équivalent à « $ABC$ pseudo-rectangle en $A$ ».

**Conclusion :** l'orthocentre est le symétrique de $A$ par rapport à $(BC)$ si et seulement si le
triangle est pseudo-rectangle en $A$.

**4.** On prend un repère orthonormé d'origine $P$, dont l'axe des abscisses est la droite $(BC)$ :
$$A(0\,;h), \quad B(m\,;0), \quad C(n\,;0), \qquad h > 0,\ m \neq n .$$
Alors $PA = h$, $PB = \lvert m \rvert$, $PC = \lvert n \rvert$.

*Le centre $O(x_0\,;y_0)$ du cercle circonscrit.* Il est sur la médiatrice de $[BC]$, donc
$x_0 = \frac{m+n}{2}$. L'égalité $OA^2 = OB^2$ s'écrit
$x_0^2 + (y_0 - h)^2 = (x_0 - m)^2 + y_0^2$, soit $-2hy_0 + h^2 = -2mx_0 + m^2 = -mn$. D'où
$$y_0 = \frac{h^2 + mn}{2h}, \qquad 4R^2 = 4\,OB^2 = (m - n)^2 + \frac{(h^2 + mn)^2}{h^2}.$$

*Si $mn < 0$* ($P$ strictement entre $B$ et $C$) : $PB + PC = \lvert m - n \rvert$, et
$(PB + PC)^2 = 4R^2$ équivaut à $(h^2 + mn)^2 = 0$, soit $PA^2 = PB \times PC$, soit (question 2,
premier cas) « $ABC$ rectangle en $A$ ».

*Si $mn > 0$* ($P$ en dehors de $[BC]$) : $PB + PC = \lvert m + n \rvert$ et
$(m + n)^2 = (m - n)^2 + 4mn$. L'égalité $(PB + PC)^2 = 4R^2$ équivaut donc à
$$4mnh^2 = (h^2 + mn)^2, \quad \text{soit} \quad (h^2 - mn)^2 = 0, \quad \text{soit} \quad h^2 = mn,$$
c'est-à-dire $PA^2 = PB \times PC$, soit (question 2, troisième cas) « $ABC$ pseudo-rectangle en $A$ ».

*Si $mn = 0$*, par exemple $m = 0$ ($P = B$) : $PB + PC = \lvert n \rvert$ et
$4R^2 = n^2 + h^2 > n^2$, donc $PB + PC < 2R$ ; le triangle, rectangle en $B$, n'est ni rectangle ni
pseudo-rectangle en $A$.

**Conclusion :** $PB + PC = 2R$ si et seulement si $ABC$ est rectangle ou pseudo-rectangle en $A$.

**5.** Une droite passant par le point $A$ du cercle est tangente au cercle si et seulement si elle
est perpendiculaire au rayon $[OA]$. Comme $(AP)$ est perpendiculaire à $(BC)$, la droite $(AP)$
est tangente si et seulement si $(OA)$ est parallèle à $(BC)$, c'est-à-dire, dans le repère de la
question 4, si et seulement si $y_0 = h$ :
$$\frac{h^2 + mn}{2h} = h \iff mn = h^2 .$$
Si $mn = h^2$, alors $mn > 0$ : $P$ est en dehors de $[BC]$ et $PA^2 = PB \times PC$, donc le
triangle est pseudo-rectangle en $A$ (question 2). Réciproquement, si le triangle est
pseudo-rectangle en $A$, alors $P$ est en dehors de $[BC]$, donc $mn > 0$, et la question 2 donne
$h^2 = \lvert m \rvert \lvert n \rvert = mn$.

**Conclusion :** $ABC$ est pseudo-rectangle en $A$ si et seulement si $(AP)$ est tangente au cercle
circonscrit.

**Bilan.** Un triangle pseudo-rectangle en $A$ ressemble beaucoup à un triangle rectangle en $A$ :
la relation $PA^2 = PB \times PC$ et l'égalité $PB + PC = 2R$ caractérisent les deux à la fois, le
triangle rectangle quand le pied $P$ de la hauteur est entre $B$ et $C$, le pseudo-rectangle quand
il est dehors. Ce dernier se reconnaît aussi à son orthocentre, symétrique de $A$ par rapport à
$(BC)$, et à la hauteur $(AP)$ tangente au cercle circonscrit.

## Going further

- La question 1 donne une façon simple de construire un triangle pseudo-rectangle : partir d'un
  triangle $ABD$ rectangle en $A$ et prendre pour $C$ le symétrique de $D$ par rapport à la hauteur
  issue de $A$. Le faire avec un logiciel de géométrie et vérifier les propriétés des questions 3 à 5.
- La suite du sujet traduit la condition avec les nombres complexes (exercice 40002), cherche les
  triangles pseudo-rectangles dont les côtés sont entiers (exercices 40003 à 40005), et montre que
  les sommets $A$ possibles, quand $B$ et $C$ sont fixés, forment une hyperbole.
