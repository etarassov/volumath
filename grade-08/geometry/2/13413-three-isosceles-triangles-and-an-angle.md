---
id: "13413"
title: "Trois triangles isocèles et un angle à trouver"
grade: 8
theme: geometry
difficulty: 2
duration_min: 25
tags: [chasse-aux-angles, triangle-isocele, somme-des-angles, angle-exterieur]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve collège, exercice 2 (repris tel quel en exercice 9 de l'épreuve lycée) ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$ tel que $AB < BC$.

- Soit $P$ le point de la droite $(BC)$, situé en dehors du segment $[BC]$, tel que $BP = BA$.
- Soit $Q$ le point de la droite $(AP)$, différent de $A$, tel que $CQ = CA$.

On note $x$ la mesure de l'angle $\widehat{QPC}$. Déterminer la mesure de l'angle $\widehat{PCQ}$ en fonction de $x$.

## Hints

1. Fais d'abord une figure soignée. Le point $P$ est au-delà de $B$ quand on part de $C$, et le point $Q$ est au-delà de $A$ quand on part de $P$.
2. L'énoncé donne trois triangles isocèles. Repère-les, et écris pour chacun les deux angles égaux.
3. Commence par le triangle $ABP$ : exprime $\widehat{BAP}$ puis $\widehat{ABC}$ en fonction de $x$.
4. Les points $Q$, $A$, $P$ sont alignés. Les angles $\widehat{QAC}$, $\widehat{CAB}$ et $\widehat{BAP}$ mis bout à bout forment un angle plat.

## Solution

![Le triangle ABC isocèle en A, le point P sur la droite (BC) au-delà de B, et le point Q sur la droite (PA) au-delà de A](13413-figure-1.svg)

On s'appuie sur la figure : $B$ est entre $C$ et $P$, et $A$ est entre $P$ et $Q$ (voir la remarque à la fin). On repère trois triangles isocèles :

- $BP = BA$ : le triangle $ABP$ est isocèle en $B$ ;
- $AB = AC$ : le triangle $ABC$ est isocèle en $A$ ;
- $CQ = CA$ : le triangle $ACQ$ est isocèle en $C$.

**Étape 1 : les angles du triangle $ABP$.** Comme le triangle $ABP$ est isocèle en $B$, ses angles à la base sont égaux : $\widehat{BAP} = \widehat{BPA} = x$. Son troisième angle vaut donc $\widehat{ABP} = 180^\circ - 2x$.

**Étape 2 : les angles du triangle $ABC$.** Les points $C$, $B$, $P$ sont alignés, donc les angles $\widehat{ABC}$ et $\widehat{ABP}$ sont supplémentaires :

$$\widehat{ABC} = 180^\circ - (180^\circ - 2x) = 2x.$$

Le triangle $ABC$ est isocèle en $A$, donc $\widehat{ACB} = \widehat{ABC} = 2x$, et son troisième angle vaut

$$\widehat{BAC} = 180^\circ - 2x - 2x = 180^\circ - 4x.$$

**Étape 3 : l'angle $\widehat{QAC}$.** Les points $Q$, $A$, $P$ sont alignés, et $A$ est entre $Q$ et $P$. Les trois angles $\widehat{QAC}$, $\widehat{CAB}$ et $\widehat{BAP}$, mis bout à bout, forment l'angle plat $\widehat{QAP}$ :

$$\widehat{QAC} = 180^\circ - \widehat{CAB} - \widehat{BAP} = 180^\circ - (180^\circ - 4x) - x = 3x.$$

**Étape 4 : les angles du triangle $ACQ$.** Ce triangle est isocèle en $C$, donc $\widehat{CQA} = \widehat{CAQ} = 3x$, et

$$\widehat{QCA} = 180^\circ - 3x - 3x = 180^\circ - 6x.$$

**Étape 5 : conclusion.** La demi-droite $[CA)$ partage l'angle $\widehat{PCQ}$ en deux angles, $\widehat{QCA}$ et $\widehat{ACB}$ (car $P$ est sur la demi-droite $[CB)$). Donc

$$\widehat{PCQ} = \widehat{QCA} + \widehat{ACB} = (180^\circ - 6x) + 2x = 180^\circ - 4x.$$

**Réponse :** $\widehat{PCQ} = 180^\circ - 4x$.

*Vérification sur la figure.* Elle est faite avec $x = 20^\circ$. On trouve $\widehat{PCQ} = 180^\circ - 80^\circ = 100^\circ$, ce que l'on peut contrôler au rapporteur.

**Remarques sur la figure.**

- La condition $AB < BC$ veut dire que la base $[BC]$ est le plus grand côté, donc que l'angle au sommet $\widehat{BAC} = 180^\circ - 4x$ est le plus grand angle du triangle, plus grand que $60^\circ$. Cela donne $x < 30^\circ$.
- Pourquoi $P$ est au-delà de $B$ : sur la droite $(BC)$, il y a deux points à la distance $BA$ de $B$. Celui qui est du côté de $C$ est sur le segment $[BC]$, puisque $BA < BC$. L'énoncé demande l'autre.
- Pourquoi $Q$ est au-delà de $A$ : l'angle $\widehat{CAP} = \widehat{CAB} + \widehat{BAP} = 180^\circ - 3x$ est obtus, car $x < 30^\circ$. Dans un triangle $CAQ$ avec $Q$ sur la demi-droite $[AP)$, l'angle en $A$ serait obtus, et le côté opposé $CQ$ serait le plus grand côté, plus grand que $CA$. Ce n'est pas possible puisque $CQ = CA$.

## Going further

Pour quelle valeur de $x$ l'angle $\widehat{PCQ}$ est-il droit ? Faire la figure correspondante.
