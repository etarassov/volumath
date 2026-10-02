---
id: "13442"
title: "Quatre triangles isocèles autour d'un point"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle isocele, angles, quadrilatere, raisonnement par l absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2024"
  reference: "2024-10_Sujet-coupe-Animath-Automne-2024.pdf, épreuve lycée, exercice 10 ; corrigé 2024-10_Corrige-commente-Coupe-Animath-Automne-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/10/Sujet-coupe-Animath-Automne-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2024-10_Sujet-coupe-Animath-Automne-2024.pdf"
---

## Statement

Existe-t-il cinq points $A$, $B$, $C$, $D$ et $P$ du plan, tous distincts, qui vérifient toutes les conditions suivantes ?

- Le quadrilatère $ABCD$ n'est pas croisé.
- Le point $P$ est strictement à l'intérieur de ce quadrilatère.
- Les segments $[AP]$, $[BP]$, $[CP]$ et $[DP]$ sont entièrement contenus dans le quadrilatère $ABCD$.
- On a les égalités de longueurs $AP = AB$, $BP = BC$, $CP = CD$ et $DP = DA$.

## Hints

1. Essaie de faire une figure. Qu'est-ce qui coince ?
2. Le triangle $ABP$ est isocèle. En quel sommet ? Quels sont ses deux angles égaux ?
3. Montre que l'angle $\widehat{APB}$ est plus petit que $90^\circ$.
4. Que vaut la somme $\widehat{APB} + \widehat{BPC} + \widehat{CPD} + \widehat{DPA}$ ?

## Solution

On va montrer qu'**il n'existe pas de tels points**, par l'absurde : on suppose qu'ils existent, et on arrive à une contradiction.

**Étape 1 : les quatre angles autour de $P$.** Les segments $[PA]$, $[PB]$, $[PC]$ et $[PD]$ sont dans le quadrilatère, et partagent celui-ci en quatre triangles $PAB$, $PBC$, $PCD$ et $PDA$, rangés autour du point $P$. Les quatre angles de ces triangles au sommet $P$ font donc un tour complet :

$$\widehat{APB} + \widehat{BPC} + \widehat{CPD} + \widehat{DPA} = 360^\circ.$$

**Étape 2 : chacun de ces angles est aigu.** Comme $AP = AB$, le triangle $ABP$ est isocèle en $A$. Ses deux angles à la base sont égaux : $\widehat{APB} = \widehat{ABP}$. La somme des angles du triangle donne

$$\widehat{PAB} + 2\,\widehat{APB} = 180^\circ.$$

Le point $P$ est strictement à l'intérieur du quadrilatère, il n'est donc pas sur la droite $(AB)$, et l'angle $\widehat{PAB}$ n'est pas nul. Donc $2\,\widehat{APB} < 180^\circ$, c'est-à-dire

$$\widehat{APB} < 90^\circ.$$

De la même façon, les triangles $BCP$, $CDP$ et $DAP$ sont isocèles en $B$, en $C$ et en $D$, donc $\widehat{BPC} < 90^\circ$, $\widehat{CPD} < 90^\circ$ et $\widehat{DPA} < 90^\circ$.

**Étape 3 : la contradiction.** En additionnant les quatre inégalités de l'étape 2,

$$\widehat{APB} + \widehat{BPC} + \widehat{CPD} + \widehat{DPA} < 4 \times 90^\circ = 360^\circ.$$

C'est impossible, puisque cette somme vaut exactement $360^\circ$ d'après l'étape 1.

**Conclusion.** Il n'existe pas cinq points qui vérifient toutes les conditions.

*Pourquoi la troisième condition ?* Si le quadrilatère n'est pas convexe, un segment comme $[AP]$ pourrait sortir du quadrilatère, et les quatre triangles ne seraient plus rangés autour de $P$. La troisième condition garantit que l'étape 1 est juste.

## Going further

1. Existe-t-il un triangle $ABC$ et un point $P$ strictement à l'intérieur de ce triangle tels que $AP = AB$, $BP = BC$ et $CP = CA$ ?
2. On prend maintenant un pentagone convexe $ABCDE$ et un point $P$ à l'intérieur, avec $AP = AB$, $BP = BC$, $CP = CD$, $DP = DE$ et $EP = EA$. Où le raisonnement ci-dessus cesse-t-il de donner une contradiction ?
