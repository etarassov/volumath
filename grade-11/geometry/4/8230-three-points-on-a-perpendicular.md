---
id: "8230"
title: "Trois points alignés par deux cercles"
grade: 11
theme: geometry
difficulty: 4
duration_min: 35
tags: [cocyclicite, triangle rectangle, alignement, angle inscrit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, entraînement de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », entraînement de fin de parcours, exercice 2"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

$ABC$ est un triangle rectangle en $A$, et $L$ est un point du segment $[BC]$, distinct de $B$ et de $C$.

- Le cercle circonscrit au triangle $ABL$ recoupe la droite $(AC)$ en un point $M$ (autre que $A$).
- Le cercle circonscrit au triangle $ACL$ recoupe la droite $(AB)$ en un point $N$ (autre que $A$).

Montrer que les points $L$, $M$ et $N$ sont alignés.

## Hints

1. Pour montrer que trois points sont alignés, une bonne méthode consiste à montrer que **deux droites passant par le même point sont confondues**. Ici les trois points partagent $L$ : il suffit de montrer que $(LM)$ et $(LN)$ sont la même droite.
2. Deux droites qui passent par un même point et qui sont toutes deux perpendiculaires à une troisième droite sont forcément confondues. Cherche donc une droite à laquelle $(LM)$ et $(LN)$ seraient toutes deux perpendiculaires.
3. La droite $(BC)$ est un bon candidat, puisque $L$ est dessus.
4. Regarde le quadrilatère $ANLC$ : ses quatre sommets sont sur le cercle circonscrit à $ACL$. Que vaut l'angle en $A$ ? Que dit alors la règle sur les angles opposés d'un quadrilatère inscrit ?
5. Fais la même chose avec le quadrilatère inscrit dans l'autre cercle.

## Solution

**Le plan.** On va montrer que $(LN)$ et $(LM)$ sont toutes deux perpendiculaires à $(BC)$. Comme elles passent toutes deux par $L$, elles seront confondues, et les trois points seront alignés.

**Étape 1 : $(LN) \perp (BC)$.**

Les quatre points $A$, $N$, $L$, $C$ sont sur le cercle circonscrit au triangle $ACL$ : ils forment un quadrilatère inscrit.

Dans un quadrilatère inscrit, deux angles opposés sont supplémentaires (leur somme vaut $180°$). Les angles en $A$ et en $L$ sont opposés, donc

$$\widehat{NAC} + \widehat{NLC} = 180° .$$

Or $N$ est sur la droite $(AB)$, donc l'angle $\widehat{NAC}$ est soit l'angle $\widehat{BAC}$, soit son supplémentaire, selon que $N$ est du côté de $B$ ou de l'autre côté de $A$. Comme $\widehat{BAC} = 90°$, dans les deux cas

$$\widehat{NAC} = 90° .$$

Par conséquent

$$\widehat{NLC} = 180° - 90° = 90° .$$

L'angle $\widehat{NLC}$ est l'angle entre les droites $(LN)$ et $(LC)$. Comme $C$ est sur la droite $(BC)$, cela signifie exactement

$$(LN) \perp (BC) .$$

**Étape 2 : $(LM) \perp (BC)$.**

Le raisonnement est identique avec l'autre cercle. Les quatre points $A$, $M$, $L$, $B$ sont sur le cercle circonscrit au triangle $ABL$, donc

$$\widehat{MAB} + \widehat{MLB} = 180° .$$

Le point $M$ est sur la droite $(AC)$ et $\widehat{BAC} = 90°$, donc $\widehat{MAB} = 90°$, d'où

$$\widehat{MLB} = 90°, \qquad \text{c'est-à-dire} \qquad (LM) \perp (BC) .$$

**Conclusion.**

Les droites $(LN)$ et $(LM)$ passent toutes deux par $L$ et sont toutes deux perpendiculaires à $(BC)$. Par le point $L$, il ne passe **qu'une seule** perpendiculaire à $(BC)$ : ces deux droites sont donc confondues.

$$\boxed{L, \ M \ \text{et} \ N \ \text{sont alignés, sur la perpendiculaire à } (BC) \text{ issue de } L .}$$

**Une remarque qui simplifie.** On a en fait redémontré deux fois la même chose : un angle inscrit qui intercepte un demi-cercle est droit. Comme $\widehat{NAC} = 90°$, le segment $[NC]$ est un **diamètre** du premier cercle ; tout point du cercle voit donc $[NC]$ sous un angle droit, en particulier $L$. De même $[MB]$ est un diamètre du second cercle, et $L$ voit $[MB]$ sous un angle droit. C'est exactement ce qu'on a écrit, en une ligne au lieu de trois.

## Going further

La droite $(LMN)$ coupe $(BC)$ perpendiculairement en $L$. Que devient cette droite quand $L$ se rapproche de $B$ ? Et quand $L$ est le pied de la hauteur issue de $A$ ?
