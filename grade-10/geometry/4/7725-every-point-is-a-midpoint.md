---
id: "7725"
title: "Chaque point est le milieu de deux autres"
grade: 10
theme: geometry
difficulty: 4
duration_min: 35
tags: [principe de l extremum, milieu, distance maximale, raisonnement par l absurde]
adapted_from: null
see_also: ["8834"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On se donne un ensemble de points du plan qui a la propriété suivante : **chaque point de l'ensemble est le milieu de deux autres points de l'ensemble.**

Montrer qu'un tel ensemble contient forcément une infinité de points.

## Hints

1. Raisonne par l'absurde : suppose qu'il n'y a qu'un nombre fini de points.
2. S'il n'y a qu'un nombre fini de points, il n'y a qu'un nombre fini de distances entre eux. L'une d'elles est donc la plus grande.
3. Prends deux points $A$ et $B$ tels que la distance $AB$ soit maximale. Applique l'hypothèse au point $B$.
4. Le point $B$ est le milieu de deux points $C$ et $D$. Dessine la figure : où sont $C$ et $D$ par rapport à $B$ ?
5. Compare $AC$ et $AD$ à $AB$. L'un des deux angles $\widehat{ABC}$ et $\widehat{ABD}$ est forcément grand : lequel, et quelle conséquence sur les côtés ?

## Solution

**L'idée : si l'ensemble était fini, il y aurait deux points « les plus éloignés », et on montrerait qu'on peut faire mieux.**

**On raisonne par l'absurde.** Supposons que l'ensemble ne contienne qu'un nombre fini de points. Il n'y a alors qu'un nombre fini de distances entre deux de ces points, donc l'une d'elles est la plus grande. Choisissons deux points $A$ et $B$ de l'ensemble tels que

$$AB \text{ soit la plus grande des distances entre deux points de l'ensemble.}$$

**On applique l'hypothèse à $B$.** Par hypothèse, $B$ est le milieu de deux points $C$ et $D$ de l'ensemble. Autrement dit, $C$, $B$, $D$ sont alignés, $B$ est entre $C$ et $D$, et

$$BC = BD > 0 .$$

Montrons qu'alors $AC > AB$ ou $AD > AB$, ce qui contredira le choix de $A$ et $B$.

**Premier cas : $A$ est sur la droite $(CD)$.** Les quatre points sont alors alignés. Comme $B$ est entre $C$ et $D$, les points $C$ et $D$ sont de part et d'autre de $B$, et $A$ se trouve d'un côté ou de l'autre de $B$ (ou confondu avec lui, mais alors $AB = 0$ et tout est à distance nulle, ce qui est impossible puisque $BC > 0$). Celui de $C$ et $D$ qui est du côté opposé à $A$ vérifie alors

$$\text{distance} = AB + BC > AB .$$

**Second cas : $A$ n'est pas sur la droite $(CD)$.** Les angles $\widehat{ABC}$ et $\widehat{ABD}$ sont alors deux angles supplémentaires, puisque $C$, $B$, $D$ sont alignés dans cet ordre :

$$\widehat{ABC} + \widehat{ABD} = 180^\circ .$$

Leur somme valant $180^\circ$, l'un des deux est supérieur ou égal à $90^\circ$. Disons, quitte à échanger les noms de $C$ et $D$, que

$$\widehat{ABC} \geqslant 90^\circ .$$

Dans le triangle $ABC$, la somme des trois angles vaut $180^\circ$, donc les deux autres angles ont une somme inférieure ou égale à $90^\circ$ : chacun d'eux est strictement plus petit que $\widehat{ABC}$. L'angle $\widehat{ABC}$ est donc le plus grand angle du triangle $ABC$.

Or, dans un triangle, au plus grand angle est opposé le plus grand côté. Le côté opposé à $\widehat{ABC}$ est $[AC]$, donc

$$AC > AB .$$

**La contradiction.** Dans les deux cas, on a trouvé un point de l'ensemble ($C$ ou $D$) dont la distance à $A$ dépasse strictement $AB$. Cela contredit le fait que $AB$ était la plus grande distance.

**Conclusion : l'hypothèse « il n'y a qu'un nombre fini de points » est fausse. Un tel ensemble contient donc une infinité de points.**

## Going further

De tels ensembles existent vraiment. Le plus simple est l'ensemble de **tous** les points à coordonnées entières du plan : le point $(a, b)$ est bien le milieu de $(a-1, b)$ et de $(a+1, b)$. Le résultat qu'on vient de démontrer dit qu'on ne peut pas faire plus petit qu'infini.

Remarque sur la méthode : on n'a utilisé qu'une seule fois la propriété de l'énoncé, et sur un seul point, celui du couple le plus éloigné. C'est le principe de l'extremum : appliquer l'hypothèse à un objet bien choisi, celui pour lequel une certaine quantité est la plus grande ou la plus petite possible.
