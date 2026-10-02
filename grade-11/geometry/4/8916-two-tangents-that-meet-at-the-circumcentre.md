---
id: "8916"
title: "Deux tangentes qui se rencontrent au centre d'un cercle circonscrit"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle, angle-inscrit, tangente, points-cocycliques, hauteur]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe A"
  reference: "Poly-Valbonne-2026.pdf, chapitre III « Groupe A », entraînement de mi-parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. Soit $\Gamma$ le cercle de diamètre $[BC]$.

Le cercle $\Gamma$ recoupe la droite $(AB)$ en un point $P$ et la droite $(AC)$ en un point $Q$.

On note $O$ le centre du cercle circonscrit au triangle $APQ$.

![Le triangle ABC, le cercle de diamètre [BC] et les points P et Q](8916-figure-1.svg)

Montrer que la tangente à $\Gamma$ en $P$ et la tangente à $\Gamma$ en $Q$ se coupent au point $O$.

## Hints

1. $[BC]$ est un diamètre de $\Gamma$, et $P$ est sur $\Gamma$. Que vaut l'angle $\widehat{BPC}$ ?
2. Vous venez de trouver que $(CP)$ est perpendiculaire à $(AB)$, et de même $(BQ)$ est perpendiculaire à $(AC)$ : $P$ et $Q$ sont les pieds de deux hauteurs du triangle.
3. Les quatre points $B$, $P$, $Q$, $C$ sont sur un même cercle, à savoir $\Gamma$. Qu'est-ce que cela donne pour l'angle $\widehat{AQP}$ ?
4. Pour montrer qu'une droite est tangente à $\Gamma$ en $P$, il suffit de montrer qu'elle est perpendiculaire au rayon $[MP]$, où $M$ est le centre de $\Gamma$. Autrement dit : montrez que $\widehat{OPM} = 90^\circ$.
5. Les points $A$, $P$, $B$ sont alignés dans cet ordre. Les trois angles $\widehat{APO}$, $\widehat{OPM}$ et $\widehat{MPB}$ forment donc un angle plat. Calculez les deux angles des bords en utilisant deux triangles isocèles.

## Solution

Notons $M$ le milieu de $[BC]$ : c'est le centre de $\Gamma$, et son rayon vaut $MB = MC = MP = MQ$. Notons aussi $\widehat{B} = \widehat{ABC}$ et $\widehat{C} = \widehat{ACB}$.

### Étape 1 : $P$ et $Q$ sont les pieds de deux hauteurs

Le point $P$ est sur le cercle de diamètre $[BC]$, donc le triangle $BPC$ est rectangle en $P$ :

$$\widehat{BPC} = 90^\circ.$$

Ainsi $(CP) \perp (AB)$ : la droite $(CP)$ est la hauteur issue de $C$, et $P$ en est le pied. De la même façon $\widehat{BQC} = 90^\circ$, donc $(BQ)$ est la hauteur issue de $B$ et $Q$ en est le pied.

Comme le triangle est acutangle, $P$ est strictement entre $A$ et $B$, et $Q$ est strictement entre $A$ et $C$.

### Étape 2 : l'angle $\widehat{AQP}$ vaut $\widehat{B}$

Les quatre points $B$, $P$, $Q$, $C$ sont sur le cercle $\Gamma$ : $BPQC$ est un quadrilatère inscrit. Ses angles opposés sont donc supplémentaires :

$$\widehat{PQC} + \widehat{PBC} = 180^\circ.$$

Par ailleurs $A$, $Q$, $C$ sont alignés avec $Q$ entre les deux, donc $\widehat{AQP} + \widehat{PQC} = 180^\circ$. En comparant les deux égalités,

$$\widehat{AQP} = \widehat{PBC} = \widehat{B}.$$

Le même raisonnement, en échangeant les rôles, donne $\widehat{APQ} = \widehat{C}$.

### Étape 3 : l'angle $\widehat{OPA}$ vaut $90^\circ - \widehat{B}$

Le point $O$ est le centre du cercle circonscrit à $APQ$. Dans ce cercle, la corde $[AP]$ est vue sous l'angle inscrit $\widehat{AQP}$ depuis $Q$, et sous l'angle au centre $\widehat{AOP}$ depuis $O$. Le théorème de l'angle inscrit donne

$$\widehat{AOP} = 2\,\widehat{AQP} = 2\widehat{B}.$$

Or $OA = OP$, puisque ce sont deux rayons du cercle circonscrit à $APQ$ : le triangle $OAP$ est isocèle en $O$. Ses deux angles à la base sont égaux et la somme des angles vaut $180^\circ$, donc

$$\widehat{OPA} = \dfrac{180^\circ - 2\widehat{B}}{2} = 90^\circ - \widehat{B}.$$

### Étape 4 : l'angle $\widehat{MPB}$ vaut $\widehat{B}$

Le triangle $MBP$ est isocèle en $M$, puisque $MB = MP$ sont deux rayons de $\Gamma$. Ses angles à la base sont égaux :

$$\widehat{MPB} = \widehat{MBP}.$$

Comme $M$ est entre $B$ et $C$, la demi-droite $[BM)$ est la demi-droite $[BC)$ ; et comme $P$ est entre $A$ et $B$, la demi-droite $[BP)$ est la demi-droite $[BA)$. Donc $\widehat{MBP} = \widehat{CBA} = \widehat{B}$, et finalement $\widehat{MPB} = \widehat{B}$.

### Étape 5 : conclusion pour $P$

Les points $A$, $P$, $B$ sont alignés dans cet ordre, donc les trois angles $\widehat{APO}$, $\widehat{OPM}$ et $\widehat{MPB}$ se succèdent et forment ensemble un angle plat :

$$\widehat{APO} + \widehat{OPM} + \widehat{MPB} = 180^\circ.$$

En remplaçant par les valeurs des étapes 3 et 4 :

$$\left(90^\circ - \widehat{B}\right) + \widehat{OPM} + \widehat{B} = 180^\circ, \qquad \text{donc} \qquad \widehat{OPM} = 90^\circ.$$

La droite $(OP)$ est donc perpendiculaire au rayon $[MP]$ de $\Gamma$, en son extrémité $P$ qui est sur $\Gamma$. C'est exactement dire que $(OP)$ est la tangente à $\Gamma$ en $P$. En particulier, **la tangente à $\Gamma$ en $P$ passe par $O$.**

### Étape 6 : conclusion pour $Q$, puis pour les deux

Le raisonnement se recopie mot pour mot de l'autre côté. L'étape 2 donne $\widehat{APQ} = \widehat{C}$, l'angle au centre donne $\widehat{AOQ} = 2\widehat{C}$, le triangle isocèle $OAQ$ donne $\widehat{OQA} = 90^\circ - \widehat{C}$, le triangle isocèle $MCQ$ donne $\widehat{MQC} = \widehat{C}$, et l'alignement de $A$, $Q$, $C$ donne $\widehat{OQM} = 90^\circ$. Donc la tangente à $\Gamma$ en $Q$ passe elle aussi par $O$.

Les deux tangentes sont deux droites distinctes, car $P$ et $Q$ sont deux points distincts de $\Gamma$ et deux tangentes à un cercle en deux points distincts ne sont jamais confondues. Deux droites distinctes se coupent en au plus un point, et toutes les deux passent par $O$ :

$$\boxed{\text{les tangentes à } \Gamma \text{ en } P \text{ et en } Q \text{ se coupent en } O.}$$

## Going further

1. On peut identifier $O$ autrement. Notons $H$ le point d'intersection des hauteurs du triangle (l'orthocentre). Les angles $\widehat{APH}$ et $\widehat{AQH}$ valent $90^\circ$, donc $P$ et $Q$ sont sur le cercle de diamètre $[AH]$. Ce cercle passe par $A$, $P$ et $Q$ : c'est donc le cercle circonscrit à $APQ$, et **$O$ est le milieu de $[AH]$**. Vérifiez que l'étape 3 se retrouve aussi comme cela, en regardant le triangle rectangle formé par $A$, $B$ et le pied de la hauteur issue de $A$.
2. Une tangente en $P$ et une tangente en $Q$ qui se coupent, cela donne $OP = OQ$ : les deux tangentes menées d'un même point à un cercle ont la même longueur. Retrouvez ce fait directement, sans calcul d'angle, en remarquant que $OP$ et $OQ$ sont des rayons du cercle circonscrit à $APQ$.
3. Que se passe-t-il si le triangle a un angle obtus ? Faites une figure : les points $P$ et $Q$ ne sont plus entre les sommets, et il faut reprendre les additions d'angles des étapes 5 et 6. Le résultat, lui, reste vrai.
