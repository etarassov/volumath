---
id: "11013"
title: "a² + ab + b² = n n'a qu'un nombre fini de solutions"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [equation-diophantienne, majoration, identites-remarquables, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Juniors, exercice 5 ; corrigé 2021-02_Corrige-envoi-3.pdf. La solution suit la « solution alternative » du corrigé."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Soit $n$ un entier relatif. Montrer qu'il n'existe qu'un nombre fini de couples $(a, b)$ d'entiers relatifs
tels que

$$a^2 + ab + b^2 = n .$$

## Hints

1. Il suffit de montrer que $a$ et $b$ ne peuvent pas être trop grands : s'ils restent entre $-C$ et $C$
   pour un certain nombre $C$, il n'y a qu'un nombre fini de couples possibles.
2. Le terme $ab$ peut être négatif, c'est lui qui gêne. Essaie d'écrire $2(a^2 + ab + b^2)$ comme une somme
   de trois carrés.
3. Développe $a^2 + b^2 + (a + b)^2$.

## Solution

**L'idée.** Si l'on montre que, pour toute solution, $a$ et $b$ sont compris entre $-C$ et $C$ pour un
certain nombre $C$ qui ne dépend que de $n$, alors on a gagné : $a$ ne peut prendre qu'un nombre fini de
valeurs, $b$ aussi, donc il n'y a qu'un nombre fini de couples.

**Une somme de trois carrés.** En développant,
$$a^2 + b^2 + (a + b)^2 = a^2 + b^2 + a^2 + 2ab + b^2 = 2(a^2 + ab + b^2) .$$

Soit $(a, b)$ une solution. Alors
$$a^2 + b^2 + (a + b)^2 = 2n .$$

**On en déduit une borne.** Les trois carrés sont positifs ou nuls, donc chacun d'eux est inférieur ou égal
à leur somme :
$$a^2 \leqslant 2n \qquad \text{et} \qquad b^2 \leqslant 2n .$$

- Si $n < 0$, c'est impossible, car un carré n'est jamais strictement négatif : il n'y a **aucune**
  solution, et zéro est bien un nombre fini.
- Si $n \geqslant 0$, on a $|a| \leqslant \sqrt{2n}$ et $|b| \leqslant \sqrt{2n}$. Le nombre $a$ est donc un
  entier compris entre $-\sqrt{2n}$ et $\sqrt{2n}$, ce qui laisse au plus $2\sqrt{2n} + 1$ valeurs, et de
  même pour $b$.

**Conclusion.** Pour tout entier $n$, l'équation $a^2 + ab + b^2 = n$ n'a qu'un nombre fini de solutions
entières : aucune si $n < 0$, et au plus $(2\sqrt{2n} + 1)^2$ si $n \geqslant 0$.

## Going further

Une fausse piste fréquente consiste à écrire « $|ab| \leqslant n$, donc $|a| \leqslant n$ ». C'est faux
quand $b = 0$ : de $|a \times 0| \leqslant n$ on ne peut rien tirer sur $a$. Il faut alors traiter ce cas à
part (ici, $b = 0$ donne $a^2 = n$, qui n'a que deux solutions au plus). La somme de trois carrés évite
cette difficulté.
