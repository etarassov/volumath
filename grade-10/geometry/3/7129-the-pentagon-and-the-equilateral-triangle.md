---
id: "7129"
title: "Le pentagone régulier et le triangle équilatéral"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [pentagone regulier, triangle isocele, angles, symetrie]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Mardi : test initial », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Soit $ABCDE$ un pentagone régulier, et soit $O$ son centre, c'est-à-dire le point à égale
distance des cinq sommets.

Soit $M$ un point à l'intérieur du pentagone tel que le triangle $MDE$ soit équilatéral.

1. Déterminer les angles du triangle $ODE$.
2. Déterminer les angles du triangle $MAB$.

## Hints

1. Un angle intérieur d'un pentagone régulier vaut $108^\circ$. Retrouve ce nombre avant de
   commencer.
2. Pour la question 1 : le triangle $ODE$ est isocèle, et l'angle en $O$ se calcule en
   partageant un tour complet.
3. Pour la question 2 : compare $EM$ et $EA$. Les deux valent la longueur d'un côté du
   pentagone. Qu'est-ce que cela donne pour le triangle $AEM$ ?
4. Pour l'angle en $B$, cherche un axe de symétrie de la figure : y a-t-il une droite qui
   échange $D$ et $E$ tout en laissant $M$ et $B$ en place ?

## Solution

Notons $s$ la longueur d'un côté du pentagone.

**Les angles du pentagone régulier.** La somme des angles d'un pentagone vaut
$(5-2) \times 180^\circ = 540^\circ$. Comme les cinq angles sont égaux, chacun vaut

$$\frac{540^\circ}{5} = 108^\circ .$$

**Question 1 : le triangle $ODE$.**

Le point $O$ est à égale distance des cinq sommets, donc $OD = OE$ : le triangle $ODE$ est
isocèle en $O$.

Les cinq angles $\widehat{AOB}$, $\widehat{BOC}$, $\widehat{COD}$, $\widehat{DOE}$,
$\widehat{EOA}$ sont égaux et se partagent un tour complet, donc

$$\widehat{DOE} = \frac{360^\circ}{5} = 72^\circ .$$

Les deux angles à la base valent alors

$$\widehat{ODE} = \widehat{OED} = \frac{180^\circ - 72^\circ}{2} = 54^\circ .$$

**Question 2 : le triangle $MAB$.**

*L'angle en $A$.* Regardons le triangle $AEM$. Le côté $[EA]$ est un côté du pentagone, donc
$EA = s$. Le côté $[EM]$ est un côté du triangle équilatéral $MDE$, donc $EM = DE = s$. Le
triangle $AEM$ est donc **isocèle en $E$**.

Son angle au sommet se calcule : $M$ est à l'intérieur du pentagone, donc la demi-droite
$[EM)$ est à l'intérieur de l'angle $\widehat{DEA}$, et

$$\widehat{AEM} = \widehat{AED} - \widehat{MED} = 108^\circ - 60^\circ = 48^\circ .$$

Les deux angles à la base du triangle isocèle $AEM$ valent donc

$$\widehat{EAM} = \widehat{EMA} = \frac{180^\circ - 48^\circ}{2} = 66^\circ .$$

D'où, en retranchant de l'angle du pentagone en $A$ :

$$\widehat{MAB} = \widehat{EAB} - \widehat{EAM} = 108^\circ - 66^\circ = 42^\circ .$$

*L'angle en $B$.* La figure possède un axe de symétrie : la droite qui joint $B$ au milieu de
$[DE]$. Cette symétrie échange $A$ et $C$, échange $D$ et $E$, et laisse $B$ en place. Elle
transforme donc le triangle équilatéral $MDE$ en lui-même, ce qui montre que $M$ est sur
l'axe.

La demi-droite $[BM)$ est donc la bissectrice de l'angle $\widehat{ABC}$, et

$$\widehat{ABM} = \frac{108^\circ}{2} = 54^\circ .$$

*L'angle en $M$.* Il reste

$$\widehat{AMB} = 180^\circ - 42^\circ - 54^\circ = 84^\circ .$$

**Conclusion.** Le triangle $ODE$ a pour angles $72^\circ$, $54^\circ$, $54^\circ$, et le
triangle $MAB$ a pour angles $42^\circ$ en $A$, $54^\circ$ en $B$ et $84^\circ$ en $M$.

## Going further

Le triangle $MAB$ a trois angles différents : $42^\circ$, $54^\circ$, $84^\circ$. Ils sont
tous multiples de $6$, ce qui n'a rien d'étonnant : toute la figure est construite à partir
de $108^\circ$ et de $60^\circ$, et les seules opérations effectuées sont des soustractions
et des divisions par deux.

Une question pour continuer : le point $M$ est-il le centre $O$ ? Calcule $OB$ et $MB$ pour
t'en convaincre, ou bien regarde simplement l'angle $\widehat{DMB}$.
