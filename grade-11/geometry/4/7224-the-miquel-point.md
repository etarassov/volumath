---
id: "7224"
title: "Trois cercles qui se rencontrent en un même point"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cocyclicite, chasse-aux-angles, quadrilatere-inscriptible, miquel]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », mardi 24 après-midi (Héloïse Gachet), exercice 3 (théorème de Miquel) ; repris en 2021 dans Polycopie-mini.pdf, groupe A, chasse aux angles, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABC$ est un triangle. On choisit un point $D$ sur le côté $[BC]$, un point $E$ sur le côté
$[CA]$ et un point $F$ sur le côté $[AB]$.

Montrer que les cercles circonscrits aux triangles $AEF$, $BFD$ et $CDE$ ont un point commun.

## Hints

1. Ne cherche pas à traiter les trois cercles d'un coup. Deux d'entre eux se coupent déjà quelque
   part : donne un nom à ce point et montre qu'il est sur le troisième.
2. Soit $X$ le second point d'intersection des cercles circonscrits à $BFD$ et $CDE$ (le premier
   étant $D$). Il s'agit de montrer que $A$, $E$, $X$, $F$ sont cocycliques.
3. Un quadrilatère est inscriptible si et seulement si deux de ses angles opposés sont
   supplémentaires. Cherche donc à montrer que $\widehat{FXE} + \widehat{EAF} = 180^\circ$.
4. Calcule $\widehat{FXD}$ et $\widehat{DXE}$ à l'aide des deux cercles connus, puis fais le tour
   du point $X$ : les trois angles $\widehat{FXD}$, $\widehat{DXE}$ et $\widehat{EXF}$ font
   $360^\circ$.

## Solution

Notons $\beta = \widehat{ABC}$ et $\gamma = \widehat{BCA}$ les angles du triangle en $B$ et en
$C$. La somme des angles donne
$$\widehat{BAC} = 180^\circ - \beta - \gamma .$$

**Le point $X$.**

Les cercles circonscrits à $BFD$ et à $CDE$ passent tous les deux par $D$. Notons $X$ leur second
point d'intersection. (Si les deux cercles sont tangents en $D$, on pose $X = D$ ; ce cas se
traite de la même manière, en remplaçant les angles inscrits par des angles tangentiels.)

Plaçons-nous dans la configuration générale, où $X$ est à l'intérieur du triangle $ABC$.

**Premier cercle : $B$, $F$, $D$, $X$.**

Ces quatre points sont cocycliques, donc les angles opposés du quadrilatère $BFXD$ sont
supplémentaires :
$$\widehat{FXD} = 180^\circ - \widehat{FBD} = 180^\circ - \beta .$$

**Deuxième cercle : $C$, $D$, $E$, $X$.**

De même, dans le quadrilatère $CDXE$ :
$$\widehat{DXE} = 180^\circ - \widehat{DCE} = 180^\circ - \gamma .$$

**Le tour du point $X$.**

Les trois angles $\widehat{FXD}$, $\widehat{DXE}$ et $\widehat{EXF}$ se succèdent autour de $X$ et
totalisent un tour complet :
$$\widehat{EXF} = 360^\circ - \widehat{FXD} - \widehat{DXE}
= 360^\circ - (180^\circ - \beta) - (180^\circ - \gamma) = \beta + \gamma .$$

**Conclusion.**

Il vient
$$\widehat{EXF} + \widehat{EAF} = (\beta + \gamma) + (180^\circ - \beta - \gamma) = 180^\circ .$$

Les angles opposés du quadrilatère $AFXE$ sont donc supplémentaires : les points $A$, $F$, $X$,
$E$ sont cocycliques. Autrement dit, $X$ est sur le cercle circonscrit à $AEF$.

**Le point $X$ appartient aux trois cercles : les cercles circonscrits à $AEF$, $BFD$ et $CDE$
ont bien un point commun.**

## Going further

Ce résultat s'appelle le **théorème de Miquel**, et le point commun le **point de Miquel** du
triplet $(D, E, F)$.

Il reste vrai si $D$, $E$, $F$ sont pris sur les **droites** $(BC)$, $(CA)$, $(AB)$ plutôt que sur
les segments, à condition d'utiliser les angles orientés de droites, qui évitent d'avoir à
distinguer les cas de figure. C'est exactement pour éviter cette discussion de cas que les angles
orientés ont été inventés.
