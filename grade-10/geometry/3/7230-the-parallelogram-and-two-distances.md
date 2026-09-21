---
id: "7230"
title: "Un point sur la diagonale d'un parallélogramme"
grade: 10
theme: geometry
difficulty: 3
duration_min: 25
tags: [parallelogramme, aire, projete orthogonal, rapport de longueurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Dernier jour : test final », Débutants, exercice 4 ; le même exercice revient en 2024 dans Poly_StCheron_2024.pdf, groupe A, triangles semblables (Vincent), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$ABCD$ est un parallélogramme. On choisit un point $M$ sur la diagonale $[AC]$.

On note $E$ le projeté orthogonal de $M$ sur la droite $(AB)$, et $F$ le projeté orthogonal de $M$
sur la droite $(AD)$.

Montrer que
$$\frac{ME}{MF} = \frac{AD}{AB} .$$

## Hints

1. $ME$ est la distance de $M$ à la droite $(AB)$ : c'est une hauteur. Dans quel triangle ?
2. Calcule l'aire du triangle $ABM$ de deux façons, puis celle du triangle $ADM$.
3. La diagonale $[AC]$ partage le parallélogramme en deux triangles de même aire. Que dire alors
   des triangles $ABM$ et $ADM$ ?
4. Aide-toi de la symétrie de centre le milieu de $[AC]$, qui échange $B$ et $D$.

## Solution

**Deux aires.**

Le segment $[ME]$ est perpendiculaire à $(AB)$, donc $ME$ est la hauteur issue de $M$ dans le
triangle $ABM$, relative à la base $[AB]$. Son aire vaut donc
$$\text{aire}(ABM) = \frac{AB \times ME}{2} .$$

De même, $MF$ est la hauteur issue de $M$ dans le triangle $ADM$, relative à la base $[AD]$ :
$$\text{aire}(ADM) = \frac{AD \times MF}{2} .$$

**Les deux triangles ont la même aire.**

Calculons ces deux mêmes aires autrement, en prenant cette fois $[AM]$ comme base commune. Notons
$h_B$ la distance de $B$ à la droite $(AC)$ et $h_D$ la distance de $D$ à $(AC)$. Comme $M$
appartient à $(AC)$, on obtient
$$\text{aire}(ABM) = \frac{AM \times h_B}{2}, \qquad \text{aire}(ADM) = \frac{AM \times h_D}{2} .$$

Dans un parallélogramme, les diagonales se coupent en leur milieu : le milieu $O$ de $[AC]$ est
donc aussi le milieu de $[BD]$. Les points $B$ et $D$ sont ainsi symétriques par rapport à $O$,
qui appartient à la droite $(AC)$. La symétrie de centre $O$ laisse la droite $(AC)$ globalement
inchangée, donc elle conserve les distances à cette droite. Ainsi $h_B = h_D$, et
$$\text{aire}(ABM) = \text{aire}(ADM) .$$

**Conclusion.**

En égalant les deux expressions des aires :
$$\frac{AB \times ME}{2} = \frac{AD \times MF}{2}, \qquad \text{donc} \qquad
AB \times ME = AD \times MF .$$

Comme $MF \neq 0$ (le point $M$ n'est pas sur $(AD)$, sauf si $M = A$, cas exclu car alors $ME$ et
$MF$ sont nuls tous les deux), on peut diviser :
$$\frac{ME}{MF} = \frac{AD}{AB} .$$

**C'est exactement ce qu'il fallait démontrer.**

## Going further

Le résultat ne dépend pas de la position de $M$ sur la diagonale : le rapport $ME/MF$ est le même
pour tous les points de $[AC]$. C'est visible sur la figure, où les deux longueurs grandissent
ensemble.

Une autre démonstration passe par les triangles semblables : les points $A$, $E$, $M$, $F$ sont
cocycliques (sur le cercle de diamètre $[AM]$, puisque les angles en $E$ et en $F$ sont droits),
et une chasse aux angles montre que les triangles $MEF$ et $DAC$ sont semblables.
