---
id: "0834"
title: "Quatre points sur un cercle et deux cordes"
grade: 9
theme: geometry
difficulty: 3
duration_min: 20
tags: [cercle, angle-inscrit, similitude]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 4"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

Quatre points $A$, $B$, $C$, $D$ sont placés dans cet ordre sur un cercle $\mathcal{C}$, de sorte que les cordes $[AC]$ et $[BD]$ se coupent en un point $M$ intérieur au cercle.

![Le cercle avec les quatre points A, B, C, D et les deux cordes [AC] et [BD] qui se coupent en M](0834-figure-1.svg)

Trouver sur cette figure des triangles semblables, et démontrer qu'ils le sont.

## Hints

1. Les deux cordes se croisent en $M$. Quels angles égaux cela donne-t-il, sans rien faire de plus ?
2. Trace les segments $[AB]$ et $[CD]$. Tu vois apparaître deux triangles qui se font face, avec le sommet commun $M$.
3. Rappel : deux angles inscrits dans un cercle qui interceptent le même arc sont égaux. Compare $\widehat{BAC}$ et $\widehat{BDC}$ : quel arc interceptent-ils tous les deux ?

## Solution

Traçons les segments $[AB]$ et $[CD]$. Nous allons montrer que les triangles $MAB$ et $MDC$ sont semblables.

**Premier couple d'angles égaux.** Les angles $\widehat{AMB}$ et $\widehat{DMC}$ sont opposés par le sommet, donc

$$\widehat{AMB} = \widehat{DMC}.$$

**Deuxième couple d'angles égaux.** Les angles $\widehat{BAC}$ et $\widehat{BDC}$ sont deux angles inscrits dans le cercle $\mathcal{C}$ qui interceptent le même arc, l'arc $BC$ qui ne contient ni $A$ ni $D$. Ils sont donc égaux. Or

- $M$ est sur le segment $[AC]$, donc $\widehat{BAC} = \widehat{BAM}$ ;
- $M$ est sur le segment $[BD]$, donc $\widehat{BDC} = \widehat{MDC}$.

D'où

$$\widehat{BAM} = \widehat{MDC}.$$

**Conclusion.** Les triangles $MAB$ et $MDC$ ont deux angles égaux deux à deux, donc ils sont semblables :

$$MAB \sim MDC,$$

avec la correspondance $M \leftrightarrow M$, $A \leftrightarrow D$, $B \leftrightarrow C$.

**Une deuxième paire.** En traçant cette fois $[AD]$ et $[BC]$, le même raisonnement fonctionne :

- $\widehat{AMD} = \widehat{BMC}$ (angles opposés par le sommet) ;
- $\widehat{DAC} = \widehat{DBC}$ (angles inscrits interceptant l'arc $CD$), c'est-à-dire $\widehat{DAM} = \widehat{MBC}$.

Donc $MAD \sim MBC$.

## Going further

Écrire l'égalité des rapports dans la similitude $MAB \sim MDC$ :

$$\frac{MA}{MD} = \frac{MB}{MC} = \frac{AB}{DC},$$

puis en déduire que

$$MA \times MC = MB \times MD.$$

Autrement dit : quand deux cordes d'un cercle se coupent, le produit des deux morceaux de la première est égal au produit des deux morceaux de la seconde. C'est un résultat très utile, connu sous le nom de *puissance d'un point*.
