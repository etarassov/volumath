---
id: "10671"
title: "Quatre nombres, deux dont la somme atteint 5"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, carres, ordre, developpement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 2 (algèbre)"
  reference: "2024-12_Sujet-envoi-2-2024-2025.pdf, Exercices Juniors, exercice 3 ; corrigé 2025-01_Corrige-envoi-2-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/12/Sujet-envoi-2-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-12_Sujet-envoi-2-2024-2025.pdf"
---

## Statement

Soient $x_1$, $x_2$, $x_3$, $x_4$ quatre réels positifs ou nuls tels que

$$x_1^2 + x_2^2 + x_3^2 + x_4^2 \geqslant 25$$

Montrer qu'on peut en choisir deux dont la somme est supérieure ou égale à $5$.

## Hints

1. L'énoncé ne change pas si l'on renomme les nombres. Range-les dans l'ordre : $x_1 \geqslant x_2 \geqslant x_3 \geqslant x_4$. Quels sont les deux nombres qui ont le plus de chances de convenir ?
2. Développe $(x_1 + x_2)^2$. Compare le double produit $2x_1x_2$ avec $x_3^2 + x_4^2$.

## Solution

**Étape 1. Ranger les nombres.**

L'énoncé ne change pas si l'on change le nom des nombres. On peut donc supposer que

$$x_1 \geqslant x_2 \geqslant x_3 \geqslant x_4 \geqslant 0$$

Montrons que les deux plus grands, $x_1$ et $x_2$, conviennent.

**Étape 2. Comparer les carrés.**

Développons : $(x_1 + x_2)^2 = x_1^2 + x_2^2 + 2x_1x_2$.

Comme $x_1 \geqslant x_3 \geqslant 0$ et $x_2 \geqslant x_3 \geqslant 0$, on a $x_1x_2 \geqslant x_3 \times x_3 = x_3^2$. De même, $x_1x_2 \geqslant x_4^2$. En ajoutant ces deux inégalités, $2x_1x_2 \geqslant x_3^2 + x_4^2$. Donc

$$(x_1 + x_2)^2 \geqslant x_1^2 + x_2^2 + x_3^2 + x_4^2 \geqslant 25$$

**Étape 3. Revenir à la somme.**

Le nombre $s = x_1 + x_2$ est positif ou nul et vérifie $s^2 \geqslant 25$. Si on avait $s < 5$, alors $s^2 < 25$, car $0 \leqslant s < 5$. C'est impossible, donc $s \geqslant 5$.

**Conclusion : les deux plus grands des quatre nombres ont une somme supérieure ou égale à $5$.**

## Going further

Peut-on remplacer $5$ par un nombre plus grand ? Essaie avec $x_1 = x_2 = x_3 = x_4$.
