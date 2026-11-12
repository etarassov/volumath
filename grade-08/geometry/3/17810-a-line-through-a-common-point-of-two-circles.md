---
id: "17810"
title: "Une droite par un point commun à deux cercles"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [angle-inscrit, angle-au-centre, chasse-aux-angles, cercles-secants, mediatrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 5, p.39 ; solution p.39. L'exercice 6 de la même page (non traité en cours) est résumé dans « Going further »."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Deux cercles $\Gamma$ et $\Gamma'$, de centres $O$ et $O'$, se coupent en deux points $A$ et $B$.

Une droite passant par $A$ recoupe le cercle $\Gamma$ en $C$ et le cercle $\Gamma'$ en $D$, de sorte que $A$ soit entre $C$ et $D$.

Exprimer l'angle $\widehat{CBD}$ en fonction de l'angle $\widehat{OAO'}$.

## Hints

1. Faites une figure soignée et mesurez : $\widehat{CBD}$ semble-t-il dépendre de la droite choisie ?
2. La droite $(OO')$ est un axe de symétrie de la figure formée par $O$, $O'$, $A$ et $B$. Que fait-elle à l'angle $\widehat{AOB}$ ?
3. L'angle $\widehat{BCA}$ est un angle inscrit dans $\Gamma$. À quel angle au centre est-il lié ?
4. Dans le triangle $BCD$, il reste à utiliser la somme des angles, puis à comparer avec le triangle $OAO'$.

## Solution

**Un outil : le théorème de l'angle inscrit.** Dans un cercle, un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc.

**Étape 1 : la symétrie.** On a $OA = OB$ (rayons de $\Gamma$) et $O'A = O'B$ (rayons de $\Gamma'$). Les points $O$ et $O'$ sont donc sur la médiatrice de $[AB]$ : la droite $(OO')$ est cette médiatrice, et la symétrie par rapport à $(OO')$ échange $A$ et $B$. Elle coupe l'angle $\widehat{AOB}$ en deux angles égaux :

$$\widehat{AOB} = 2\,\widehat{AOO'}, \qquad \text{et de même} \qquad \widehat{AO'B} = 2\,\widehat{AO'O} .$$

**Étape 2 : l'angle en $C$.** Comme $A$ est entre $C$ et $D$, le point $C$ est sur l'arc de $\Gamma$ situé hors du cercle $\Gamma'$. L'angle inscrit $\widehat{BCA}$ intercepte donc l'arc $AB$ de $\Gamma$ tourné vers $O'$, dont l'angle au centre est $\widehat{AOB} = 2\,\widehat{AOO'}$. Par le théorème de l'angle inscrit,

$$\widehat{BCD} = \widehat{BCA} = \frac{1}{2}\,\widehat{AOB} = \widehat{AOO'} .$$

**Étape 3 : l'angle en $D$.** De la même façon, dans le cercle $\Gamma'$,

$$\widehat{BDC} = \widehat{BDA} = \frac{1}{2}\,\widehat{AO'B} = \widehat{AO'O} .$$

**Étape 4 : l'angle en $B$.** La somme des angles du triangle $BCD$ vaut $180^\circ$, donc

$$\widehat{CBD} = 180^\circ - \widehat{AOO'} - \widehat{AO'O} .$$

Or la somme des angles du triangle $OAO'$ vaut aussi $180^\circ$, donc $180^\circ - \widehat{AOO'} - \widehat{AO'O} = \widehat{OAO'}$.

**Conclusion : $\widehat{CBD} = \widehat{OAO'}$**, quelle que soit la droite choisie.

## Going further

Les triangles $BCD$ et $BOO'$ ont les mêmes angles : ils sont semblables, pour toutes les droites passant par $A$. Le résultat reste d'ailleurs vrai quand $A$ n'est pas entre $C$ et $D$.

Le cours proposait une suite, non traitée en séance. Deux droites passant par $A$ recoupent $\Gamma$ en $C$ et $D$, et $\Gamma'$ en $C'$ et $D'$. Les droites $(CD)$ et $(C'D')$ se coupent en $P$. Alors les droites $(CD)$ et $(C'D')$ font entre elles le même angle que les tangentes aux deux cercles en $A$, appelé l'angle des deux cercles. Quand les deux droites se rapprochent jusqu'à se confondre, $(CD)$ et $(C'D')$ deviennent les tangentes en $C$ à $\Gamma$ et en $C'$ à $\Gamma'$ : ces deux tangentes font toujours le même angle, quelle que soit la droite passant par $A$.
