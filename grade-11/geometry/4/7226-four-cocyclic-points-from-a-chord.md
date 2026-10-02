---
id: "7226"
title: "Deux cordes issues du milieu d'un arc"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cocyclicite, angle-inscrit, triangle-isocele, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$\Gamma$ est un cercle et $[BC]$ une corde de ce cercle. Soit $A$ le milieu de l'un des deux arcs
$BC$.

On trace deux cordes $[AD]$ et $[AE]$ de $\Gamma$ issues de $A$, qui coupent la corde $[BC]$
respectivement en $F$ et en $G$.

Montrer que les quatre points $D$, $E$, $F$ et $G$ sont cocycliques.

## Hints

1. Comme $A$ est le milieu de l'arc, le triangle $ABC$ est isocèle. En quel sommet ?
2. Pour montrer que $D$, $E$, $F$, $G$ sont cocycliques, il suffit de montrer que
   $\widehat{DFG} + \widehat{DEG} = 180^\circ$, ou encore que $\widehat{DFG}$ et $\widehat{DEG}$
   sont supplémentaires.
3. Pose $x = \widehat{DEA}$ et $y = \widehat{CEA}$, et exprime tout le reste en fonction de $x$ et
   $y$ grâce au théorème de l'angle inscrit.
4. Calcule $\widehat{AFC}$ dans le triangle $AFC$, dont tu connaîtras les deux autres angles.

## Solution

Plaçons-nous dans la configuration suivante, les autres se traitant de la même façon : en tournant
autour du cercle on rencontre successivement $A$, $B$, $D$, $E$, $C$. Le point $F$ est alors entre
$B$ et $G$, et $G$ entre $F$ et $C$.

**Le triangle $ABC$ est isocèle.**

$A$ est le milieu de l'arc $BC$, donc les arcs $AB$ et $AC$ ont la même longueur, donc les cordes
aussi :
$$AB = AC .$$
Le triangle $ABC$ est isocèle en $A$, donc $\widehat{ABC} = \widehat{ACB}$.

**Les notations.**

Posons
$$x = \widehat{DEA} \qquad \text{et} \qquad y = \widehat{CEA} .$$

**Trois égalités d'angles inscrits.**

1. Les angles $\widehat{AEC}$ et $\widehat{ABC}$ interceptent le même arc $AC$, et $E$ et $B$ sont
   du même côté de la corde $[AC]$. Donc
   $$\widehat{ABC} = \widehat{AEC} = y ,$$
   et comme le triangle $ABC$ est isocèle, $\widehat{ACB} = y$ également.
2. Les angles $\widehat{ADC}$ et $\widehat{AEC}$ interceptent aussi le même arc $AC$, donc
   $$\widehat{ADC} = y .$$
3. Les angles $\widehat{DCA}$ et $\widehat{DEA}$ interceptent le même arc $DA$, donc
   $$\widehat{DCA} = x .$$

**L'angle du triangle $DAC$ en $A$.**

Dans le triangle $DAC$, les angles en $D$ et en $C$ valent respectivement $y$ et $x$, donc
$$\widehat{DAC} = 180^\circ - x - y .$$

**L'angle en $F$.**

Le point $F$ appartient au segment $[AD]$, donc la demi-droite $[AF)$ est la demi-droite $[AD)$ et
$$\widehat{FAC} = \widehat{DAC} = 180^\circ - x - y .$$
Le point $F$ appartient au segment $[BC]$, donc la demi-droite $[CF)$ est la demi-droite $[CB)$ et
$$\widehat{ACF} = \widehat{ACB} = y .$$
Dans le triangle $AFC$, la somme des angles donne alors
$$\widehat{AFC} = 180^\circ - (180^\circ - x - y) - y = x .$$

**Conclusion.**

Le point $F$ est entre $A$ et $D$ sur la corde $[AD]$, donc les demi-droites $[FA)$ et $[FD)$ sont
opposées. Le point $G$ est du côté de $C$ par rapport à $F$, donc les demi-droites $[FG)$ et
$[FC)$ sont confondues. Les angles $\widehat{AFC}$ et $\widehat{DFG}$ sont donc supplémentaires :
$$\widehat{DFG} = 180^\circ - \widehat{AFC} = 180^\circ - x .$$

Par ailleurs, $G$ appartient au segment $[AE]$, donc la demi-droite $[EG)$ est la demi-droite
$[EA)$ et
$$\widehat{DEG} = \widehat{DEA} = x .$$

Finalement
$$\widehat{DFG} + \widehat{DEG} = (180^\circ - x) + x = 180^\circ .$$

Les angles opposés en $F$ et en $E$ du quadrilatère $DFGE$ sont supplémentaires.

**Les points $D$, $E$, $F$, $G$ sont donc cocycliques.**

## Going further

L'hypothèse « $A$ est le milieu de l'arc » est essentielle : c'est elle qui rend le triangle $ABC$
isocèle et qui fait que $\widehat{ABC} = \widehat{ACB}$. Sans elle, le résultat est faux en
général.

On peut aussi démontrer l'énoncé par la **puissance d'un point** : il suffit de vérifier que pour
le point $A$, on a $AF \times AD = AG \times AE$, ce qui découle de $AF \times AD = AB^2$ et
$AG \times AE = AC^2$, deux égalités qui viennent des triangles semblables $ABF$ et $ADB$, puis
$ACG$ et $AEC$. Comme $AB = AC$, les deux produits sont égaux et $D$, $E$, $F$, $G$ sont
cocycliques.
