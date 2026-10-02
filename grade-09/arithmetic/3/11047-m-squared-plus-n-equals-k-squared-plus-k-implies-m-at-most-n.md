---
id: "11047"
title: "Si m² + n = k² + k, alors m ≤ n"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [inegalite, encadrement, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 12 ; corrigé 2023-03_corrige.pdf. Coquille du corrigé : il écrit « 4m² + n + 1 > 4m² » pour 4m² + 4n + 1 > 4m²."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

Soient $k$, $m$ et $n$ des entiers strictement positifs tels que

$$m^2 + n = k^2 + k .$$

Montrer que $m \leqslant n$.

## Hints

1. Essaie avec quelques exemples : $k = 3$ donne $k^2 + k = 12$. Quels couples $(m, n)$ conviennent ?
2. Compare $k$ et $m$. Peut-on avoir $k < m$ ?
3. Si $k \leqslant m - 1$, majore $k^2 + k$ par $(m - 1)^2 + (m - 1)$ et compare avec $m^2$.

## Solution

**Étape 1 : $k \geqslant m$.** Supposons au contraire que $k \leqslant m - 1$. Alors

$$k^2 + k \leqslant (m - 1)^2 + (m - 1) = m^2 - 2m + 1 + m - 1 = m^2 - m < m^2 .$$

Mais $k^2 + k = m^2 + n > m^2$ puisque $n \geqslant 1$. C'est contradictoire. Donc $k \geqslant m$.

**Étape 2 : conclusion.** Comme $k \geqslant m$, on a $k^2 + k \geqslant m^2 + m$, donc

$$n = k^2 + k - m^2 \geqslant m^2 + m - m^2 = m .$$

On a bien montré que $m \leqslant n$.

**Une autre façon de voir.** En multipliant par $4$ et en ajoutant $1$, l'égalité devient
$4m^2 + 4n + 1 = 4k^2 + 4k + 1 = (2k + 1)^2$. Le carré $(2k + 1)^2$ est donc strictement plus grand que
$(2m)^2$, donc $2k + 1 > 2m$, et comme $2k + 1$ est impair, $2k + 1 \geqslant 2m + 1$. En élevant au carré,
$4m^2 + 4n + 1 \geqslant 4m^2 + 4m + 1$, c'est-à-dire $n \geqslant m$.

## Going further

Peut-on avoir $m = n$ ? Trouver tous les triplets $(k, m, n)$ avec $m = n$. (L'égalité devient
$m^2 + m = k^2 + k$.)
