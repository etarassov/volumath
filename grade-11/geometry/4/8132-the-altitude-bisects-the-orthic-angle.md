---
id: "8132"
title: "La hauteur coupe en deux l'angle du triangle orthique"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [orthocentre, cocyclicite, angle-inscrit, bissectrice]
adapted_from: null
see_also: ["10038"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, entraînement de mi-parcours du Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Exercices d'entraînement – Entraînement de mi-parcours », exercice 1"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $ABC$ un triangle acutangle. On note $A'$, $B'$ et $C'$ les pieds des hauteurs issues respectivement de $A$, $B$ et $C$, et $H$ l'orthocentre du triangle.

Le triangle $A'B'C'$ s'appelle le **triangle orthique** de $ABC$.

Montrer que la droite $(AA')$ est la bissectrice de l'angle $\widehat{C'A'B'}$.

## Hints

1. Une figure avec les trois hauteurs fait apparaître beaucoup d'angles droits, donc beaucoup de points cocycliques. Cherche-les.
2. Deux points qui voient un même segment sous un angle droit sont sur le cercle de diamètre ce segment. Applique cela au segment $[BH]$, puis au segment $[CH]$.
3. Il s'agit de montrer que $\widehat{C'A'H} = \widehat{HA'B'}$, puisque $H$ est sur la hauteur $(AA')$.
4. Dans le cercle de diamètre $[BH]$, l'angle $\widehat{C'A'H}$ est un angle inscrit. Quel autre angle inscrit intercepte le même arc ?
5. Exprime les deux angles en fonction de l'angle $\widehat{A}$ du triangle. Ils devraient valoir la même chose.

## Solution

Notons $\widehat{A} = \widehat{BAC}$.

Comme le triangle est acutangle, l'orthocentre $H$ est à l'intérieur du triangle, et il appartient au segment $[AA']$. La demi-droite $[A'H)$ est donc la même que la demi-droite $[A'A)$, et il suffit de montrer

$$\widehat{C'A'H} = \widehat{HA'B'}.$$

**Étape 1 : deux cercles.**

*Le cercle de diamètre $[BH]$.* On a $\widehat{BC'H} = 90^\circ$, car $(CC')$ est une hauteur, donc $(C'C) \perp (AB)$ et $H$ est sur $(CC')$. De même $\widehat{BA'H} = 90^\circ$, car $(AA') \perp (BC)$.

Les points $C'$ et $A'$ voient donc le segment $[BH]$ sous un angle droit : les quatre points $B$, $C'$, $H$, $A'$ sont sur le cercle de diamètre $[BH]$.

*Le cercle de diamètre $[CH]$.* Exactement de la même façon, $\widehat{CB'H} = 90^\circ$ et $\widehat{CA'H} = 90^\circ$, donc les quatre points $C$, $B'$, $H$, $A'$ sont sur le cercle de diamètre $[CH]$.

**Étape 2 : le premier angle.**

Dans le cercle de diamètre $[BH]$, les angles inscrits $\widehat{C'A'H}$ et $\widehat{C'BH}$ interceptent le même arc $C'H$ et sont du même côté de la corde $[C'H]$ (les points $A'$ et $B$ sont tous deux du même côté, puisque $H$ est à l'intérieur du triangle). Donc

$$\widehat{C'A'H} = \widehat{C'BH}.$$

Or $H$ appartient à la hauteur $(BB')$, donc $\widehat{C'BH} = \widehat{ABB'}$. Le triangle $ABB'$ est rectangle en $B'$, donc

$$\widehat{ABB'} = 90^\circ - \widehat{A}.$$

Ainsi $\widehat{C'A'H} = 90^\circ - \widehat{A}$.

**Étape 3 : le second angle.**

Dans le cercle de diamètre $[CH]$, le même argument donne

$$\widehat{HA'B'} = \widehat{HCB'}.$$

Or $H$ appartient à la hauteur $(CC')$, donc $\widehat{HCB'} = \widehat{C'CA}$. Le triangle $ACC'$ est rectangle en $C'$, donc

$$\widehat{C'CA} = 90^\circ - \widehat{A}.$$

Ainsi $\widehat{HA'B'} = 90^\circ - \widehat{A}$.

**Conclusion.**

$$\widehat{C'A'H} = \widehat{HA'B'} = 90^\circ - \widehat{A},$$

donc la droite $(AA')$ partage l'angle $\widehat{C'A'B'}$ en deux angles égaux : c'est bien sa bissectrice.

## Going further

Le même raisonnement aux sommets $B$ et $C$ montre que les trois hauteurs de $ABC$ sont les trois bissectrices intérieures du triangle orthique. L'orthocentre $H$ de $ABC$ est donc le centre du cercle inscrit dans son triangle orthique. Au passage, les angles du triangle orthique valent $180^\circ - 2\widehat{A}$, $180^\circ - 2\widehat{B}$ et $180^\circ - 2\widehat{C}$.
