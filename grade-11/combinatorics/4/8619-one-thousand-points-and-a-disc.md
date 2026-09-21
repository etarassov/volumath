---
id: "8619"
title: "Mille points et un disque de rayon 1"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe des tiroirs, ensemble maximal, distance, recouvrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de fin de parcours, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On se donne $1000$ points distincts du plan, tels que parmi quatre points quelconques, il y en ait toujours deux dont la distance est inférieure ou égale à $1$.

Montrer qu'il existe un disque de rayon $1$ contenant au moins $334$ de ces points.

## Hints

1. L'hypothèse porte sur des groupes de quatre points. Récris-la autrement : combien de points peut-on choisir qui soient **deux à deux** à distance strictement supérieure à $1$ ?
2. Choisis un ensemble de points deux à deux éloignés (distance $> 1$) qui soit **le plus grand possible**. Combien en as-tu au maximum ?
3. C'est le fait d'avoir pris cet ensemble *le plus grand possible* qui est utile. Que se passerait-il si un des $1000$ points était à distance $> 1$ de tous les points de cet ensemble ?
4. Tu obtiens alors un recouvrement des $1000$ points par un petit nombre de disques. Il ne reste qu'à compter.
5. $1000 = 3 \times 333 + 1$.

## Solution

**Étape 1 : on ne peut pas avoir quatre points deux à deux éloignés.**

Appelons deux points *éloignés* lorsque leur distance est strictement supérieure à $1$.

Si quatre de nos points étaient deux à deux éloignés, on aurait quatre points dont aucune paire n'est à distance $\leqslant 1$, ce que l'énoncé interdit. Donc **un ensemble de points deux à deux éloignés contient au plus $3$ points.**

**Étape 2 : choisir un ensemble maximal.**

Parmi tous les ensembles de points deux à deux éloignés (il y en a un nombre fini, et il en existe : un seul point en forme un), choisissons-en un de taille maximale. Appelons-le $M$ et notons $d$ son nombre d'éléments. D'après l'étape 1,

$$1 \leqslant d \leqslant 3 .$$

**Étape 3 : $M$ couvre tout.**

*Affirmation.* Chacun des $1000$ points est à distance inférieure ou égale à $1$ d'au moins un point de $M$.

*Démonstration.* Soit $A$ l'un des $1000$ points. Si $A$ appartient à $M$, sa distance à lui-même vaut $0$ et c'est fini. Sinon, supposons par l'absurde que $A$ soit à distance strictement supérieure à $1$ de chacun des points de $M$. Alors $M \cup \{A\}$ serait encore un ensemble de points deux à deux éloignés, et il aurait $d + 1$ éléments : cela contredirait le fait que $M$ est de taille maximale.

Donc $A$ est à distance $\leqslant 1$ d'au moins un point de $M$. $\square$

**Étape 4 : le principe des tiroirs.**

Pour chaque point $C$ de $M$, notons $D_C$ le disque de centre $C$ et de rayon $1$. D'après l'étape 3, chacun des $1000$ points appartient à au moins l'un des $d$ disques $D_C$.

On a donc $1000$ objets à ranger dans $d \leqslant 3$ tiroirs. Par le principe des tiroirs, l'un des disques contient au moins

$$\left\lceil \frac{1000}{d} \right\rceil \geqslant \left\lceil \frac{1000}{3} \right\rceil = 334$$

de nos points, puisque $1000 = 3 \times 333 + 1$ : si chacun des trois disques en contenait au plus $333$, on n'en couvrirait que $999$ au plus.

**Conclusion.** Il existe un point $C$ de $M$ tel que le disque de centre $C$ et de rayon $1$ contienne au moins $334$ des $1000$ points.

## Going further

Le ressort de la démonstration mérite d'être isolé : on ne choisit pas *un* ensemble de points éloignés, on en choisit un **maximal**. C'est la maximalité, et elle seule, qui garantit que tout autre point est proche de l'un d'eux. L'hypothèse de l'énoncé, elle, ne sert qu'à borner la taille de cet ensemble par $3$.

Cette idée porte un nom en théorie des graphes : $M$ est un *ensemble indépendant maximal*, et l'étape 3 dit qu'il est *dominant*. Elle resservira souvent.
