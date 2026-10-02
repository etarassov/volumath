---
id: "8148"
title: "Trois couleurs pour tout le plan"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [coloriage, raisonnement-par-l-absurde, triangle-equilateral, distance]
adapted_from: null
see_also: []
same_as: ["7319"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 34 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Chaque point du plan est colorié en rouge, en orange ou en violet. On ne sait rien de la façon dont le coloriage a été fait : il peut être aussi compliqué que l'on veut.

Peut-on toujours trouver deux points de la même couleur situés exactement à $1$ centimètre l'un de l'autre ?

## Hints

1. Raisonne par l'absurde : suppose que deux points quelconques distants de $1$ cm sont toujours de couleurs différentes.
2. Regarde alors un triangle équilatéral de côté $1$ cm. Que peux-tu dire de la couleur de ses trois sommets ?
3. Prends maintenant deux triangles équilatéraux de côté $1$ cm qui partagent un côté, comme un losange. Que peux-tu dire des deux sommets opposés du losange ?
4. Tu viens de montrer que deux points situés à une certaine distance fixe ont forcément la même couleur. Quelle est cette distance ?
5. Termine avec un cercle bien choisi.

## Solution

**Oui, c'est toujours possible.**

Raisonnons par l'absurde et supposons le contraire :

> $(\star)$ deux points distants de $1$ cm sont toujours de couleurs différentes.

Dans toute la suite, les longueurs sont en centimètres.

**Étape 1 : un triangle équilatéral porte les trois couleurs.**

Soit $ABC$ un triangle équilatéral de côté $1$. Ses trois sommets sont deux à deux distants de $1$, donc d'après $(\star)$ ils ont trois couleurs deux à deux différentes. Comme il n'y a que trois couleurs en tout, **les trois couleurs sont présentes**, une par sommet.

**Étape 2 : deux points distants de $\sqrt{3}$ ont la même couleur.**

Prenons un segment $[AB]$ de longueur $1$, et construisons les deux triangles équilatéraux $ABC$ et $ABD$ de côté $1$ appuyés sur ce segment, situés de part et d'autre de la droite $(AB)$. Autrement dit, $ACBD$ est un losange formé de deux triangles équilatéraux.

D'après l'étape 1 appliquée à $ABC$, la couleur de $C$ est la troisième couleur, celle qui n'est ni celle de $A$ ni celle de $B$.

D'après l'étape 1 appliquée à $ABD$, la couleur de $D$ est elle aussi la couleur qui n'est ni celle de $A$ ni celle de $B$.

Donc $C$ et $D$ ont la même couleur.

Calculons $CD$. Soit $M$ le milieu de $[AB]$. Le triangle $ABC$ étant équilatéral de côté $1$, sa hauteur vaut $CM = \dfrac{\sqrt{3}}{2}$, et de même $DM = \dfrac{\sqrt{3}}{2}$. Les points $C$, $M$, $D$ sont alignés, $M$ étant entre $C$ et $D$, donc

$$CD = \sqrt{3}.$$

Comme $A$ et $B$ pouvaient être choisis n'importe où, on a montré :

> $(\star\star)$ deux points distants de $\sqrt{3}$ sont toujours de la même couleur.

**Étape 3 : la contradiction.**

Choisissons un point $O$ et traçons le cercle $\mathcal{C}$ de centre $O$ et de rayon $\sqrt{3}$.

D'après $(\star\star)$, tout point de $\mathcal{C}$ a la même couleur que $O$. Donc tous les points de $\mathcal{C}$ ont la même couleur.

Or ce cercle a pour diamètre $2\sqrt{3} \approx 3{,}46$, bien plus que $1$. On peut donc y trouver deux points distants d'exactement $1$ : il suffit de partir d'un point $P$ de $\mathcal{C}$ et de faire tourner un second point $Q$ sur le cercle ; la distance $PQ$ varie continûment de $0$ (quand $Q = P$) jusqu'à $2\sqrt{3}$ (quand $Q$ est diamétralement opposé), donc elle prend la valeur $1$ en chemin.

Ces deux points $P$ et $Q$ sont sur $\mathcal{C}$, donc de la même couleur, et distants de $1$. Cela contredit $(\star)$.

**Conclusion.**

L'hypothèse $(\star)$ est absurde : quel que soit le coloriage du plan en trois couleurs, **il existe toujours deux points de même couleur distants d'exactement $1$ centimètre**.

## Going further

La même question avec **deux** couleurs est beaucoup plus facile : le triangle équilatéral de côté $1$ suffit, car ses trois sommets ne peuvent pas porter trois couleurs différentes.

Avec **sept** couleurs, en revanche, la réponse devient non : il existe un coloriage du plan en sept couleurs où deux points de même couleur ne sont jamais à distance $1$ (on pave le plan par des hexagones réguliers bien dimensionnés, coloriés selon un motif qui se répète). Savoir à partir de combien de couleurs cela devient possible — entre $5$ et $7$ — est un problème encore ouvert, connu sous le nom de problème de Hadwiger-Nelson.
