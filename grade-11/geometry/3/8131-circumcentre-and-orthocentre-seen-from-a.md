---
id: "8131"
title: "Le centre du cercle circonscrit et l'orthocentre, vus du sommet A"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [orthocentre, cercle-circonscrit, angle-au-centre, triangle-isocele]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Géométrie – Points remarquables », exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $ABC$ un triangle acutangle (ses trois angles sont aigus). On note :

- $O$ le centre de son cercle circonscrit ;
- $H$ son orthocentre, c'est-à-dire le point de concours de ses trois hauteurs.

Montrer que

$$\widehat{OAB} = \widehat{HAC}.$$

Autrement dit, vues du sommet $A$, les deux droites $(AO)$ et $(AH)$ sont symétriques par rapport à la bissectrice de l'angle $\widehat{BAC}$.

## Hints

1. Fais une figure soignée : trace le cercle circonscrit, son centre, et les trois hauteurs.
2. Pose $\alpha = \widehat{OAB}$ et cherche à exprimer les autres angles en fonction de $\alpha$. Commence par le triangle $OAB$ : pourquoi est-il isocèle ?
3. Le théorème de l'angle au centre relie $\widehat{AOB}$ à $\widehat{ACB}$.
4. Pour l'angle $\widehat{HAC}$, note $A'$ le pied de la hauteur issue de $A$ et travaille dans le triangle rectangle $AA'C$.

## Solution

Posons $\alpha = \widehat{OAB}$.

**Étape 1 : l'angle $\widehat{ACB}$ en fonction de $\alpha$.**

Le point $O$ est le centre du cercle circonscrit, donc $OA = OB$ : le triangle $OAB$ est isocèle en $O$. Ses angles à la base sont donc égaux :

$$\widehat{OBA} = \widehat{OAB} = \alpha.$$

La somme des angles du triangle $OAB$ donne

$$\widehat{AOB} = 180^\circ - 2\alpha.$$

Le théorème de l'angle au centre dit que l'angle au centre $\widehat{AOB}$ vaut le double de l'angle inscrit $\widehat{ACB}$ qui intercepte le même arc $AB$ (le triangle étant acutangle, $O$ est à l'intérieur du triangle et cette écriture est valable) :

$$\widehat{AOB} = 2\,\widehat{ACB}, \qquad \text{donc} \qquad \widehat{ACB} = 90^\circ - \alpha.$$

**Étape 2 : l'angle $\widehat{HAC}$ en fonction de $\alpha$.**

Notons $A'$ le pied de la hauteur issue de $A$ : le point $A'$ est sur $[BC]$ et $(AA') \perp (BC)$. L'orthocentre $H$ appartient à cette hauteur, donc

$$\widehat{HAC} = \widehat{A'AC}.$$

Le triangle $AA'C$ est rectangle en $A'$. Son angle en $C$ est $\widehat{A'CA} = \widehat{BCA} = 90^\circ - \alpha$. La somme des angles donne

$$\widehat{A'AC} = 180^\circ - 90^\circ - (90^\circ - \alpha) = \alpha.$$

**Conclusion.**

$$\widehat{HAC} = \alpha = \widehat{OAB}.$$

## Going further

Cette égalité est une propriété très utile en olympiades : on dit que les droites $(AO)$ et $(AH)$ sont **isogonales** par rapport à l'angle $\widehat{A}$. Elle vaut aussi aux sommets $B$ et $C$, avec la même démonstration.

Une conséquence classique : si l'on note $\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les angles du triangle, alors $\widehat{OAB} = \widehat{HAC} = 90^\circ - \widehat{C}$, ce qui donne au passage $\widehat{OAH} = |\widehat{B} - \widehat{C}|$. En particulier, $(AO)$ et $(AH)$ sont confondues exactement quand le triangle est isocèle en $A$.
