---
id: "7141"
title: "La bissectrice, le cercle circonscrit et deux projetés"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [bissectrice, cercle-circonscrit, triangle-rectangle, symetrie, pole-sud]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Débutants : géométrie », mardi et mercredi matin, exercice 2 (la solution imprimée écrit « MB = MB » pour « MB = MC »)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

La bissectrice intérieure issue de $A$ d'un triangle $ABC$ recoupe le cercle circonscrit au
triangle en un point $M$, différent de $A$.

Soient $D$ et $E$ les projetés orthogonaux de $M$ sur les droites $(AB)$ et $(AC)$.

Montrer que

$$BD = CE \qquad \text{et} \qquad AD = AE = \frac{AB + AC}{2} .$$

## Hints

1. Fais une grande figure, avec $AB$ nettement plus court que $AC$. Où tombe $D$ par rapport
   au segment $[AB]$ ? Et $E$ par rapport à $[AC]$ ?
2. Le point $M$ est sur la bissectrice de $\widehat{BAC}$. Que peux-tu dire de $MD$ et $ME$ ?
3. Le point $M$ est le milieu de l'arc $BC$ qui ne contient pas $A$. Que peux-tu dire de $MB$
   et $MC$ ? Justifie-le avec le théorème de l'angle inscrit.
4. Tu as alors deux triangles rectangles avec la même hypoténuse et un même côté. Conclus, et
   additionne enfin $AD$ et $AE$.

## Solution

Supposons, pour fixer les idées, que $AB < AC$. Alors $D$ est à l'extérieur du segment
$[AB]$, au-delà de $B$, tandis que $E$ est à l'intérieur de $[AC]$. (Si $AB = AC$ la figure
est symétrique et le résultat est immédiat ; si $AB > AC$, il suffit d'échanger les noms.)

**Les distances depuis $M$.**

*Aux deux côtés.* Le point $M$ est sur la bissectrice de l'angle $\widehat{BAC}$, donc il est
à égale distance des deux droites $(AB)$ et $(AC)$ :

$$MD = ME .$$

*Aux deux sommets.* La bissectrice issue de $A$ partage l'angle $\widehat{BAC}$ en deux
angles égaux, donc les angles inscrits $\widehat{BAM}$ et $\widehat{MAC}$ sont égaux. Ils
interceptent respectivement les arcs $BM$ et $MC$, qui sont donc égaux, et par suite les
cordes qui les sous-tendent aussi :

$$MB = MC .$$

**Première égalité.** Les triangles $BDM$ et $CEM$ sont rectangles, en $D$ et en $E$
respectivement. Ils ont

- même hypoténuse en longueur : $MB = MC$,
- un côté de l'angle droit égal : $MD = ME$.

D'après le théorème de Pythagore, le troisième côté est le même dans les deux :

$$BD = \sqrt{MB^2 - MD^2} = \sqrt{MC^2 - ME^2} = CE .$$

**Deuxième égalité.** Les triangles $ADM$ et $AEM$ sont rectangles en $D$ et en $E$, ont la
même hypoténuse $[AM]$ et vérifient $MD = ME$. Le même calcul donne

$$AD = AE .$$

**On additionne.** Puisque $B$ est entre $A$ et $D$, et que $E$ est entre $A$ et $C$ :

$$AD + AE = (AB + BD) + AE = AB + CE + AE = AB + AC ,$$

en utilisant $BD = CE$ dans la deuxième égalité et $CE + AE = AC$ dans la troisième.

Comme $AD = AE$, on obtient $2\,AD = AB + AC$, c'est-à-dire

$$AD = AE = \frac{AB + AC}{2} .$$

## Going further

Le point $M$ s'appelle le **pôle sud** du triangle relatif au sommet $A$ : c'est le milieu de
l'arc $BC$ ne contenant pas $A$. Il a beaucoup de propriétés remarquables, et l'on vient
d'en démontrer la plus simple, $MB = MC$. Une autre, plus surprenante, est que $M$ est aussi
à égale distance du centre du cercle inscrit : $MB = MC = MI$, où $I$ est le centre du cercle
inscrit de $ABC$.

L'exercice donne une construction de la longueur $\frac{AB+AC}{2}$ à la règle et au compas
sans jamais additionner deux segments : on trace la bissectrice, on la prolonge jusqu'au
cercle circonscrit, et on projette.
