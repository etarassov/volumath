---
id: "13806"
title: "Quand nⁿ est-il un carré ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre parfait, puissances, parite, decomposition en facteurs premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 5 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Combien d'entiers $n$, avec $1 \leqslant n \leqslant 100$, sont tels que $n^n$ est le carré
d'un nombre entier ?

## Hints

1. Essaie avec $n = 2$, $n = 3$, $n = 4$, $n = 9$. Pour $n$ pair, que remarques-tu ?
2. Pour $n$ impair, écris $n^n = n \times n^{n-1}$. Le facteur $n^{n-1}$ est-il un carré ?
3. Pour $n$ impair, il reste à savoir quand $n \times (\text{un carré})$ est un carré.
   Regarde les exposants dans la décomposition de $n$ en facteurs premiers.

## Solution

**Si $n$ est pair.** Écrivons $n = 2k$. Alors $n^n = n^{2k} = \left(n^k\right)^2$ est un
carré. Les entiers pairs de $1$ à $100$ sont $2, 4, \ldots, 100$ : il y en a $50$, et ils
conviennent tous.

**Si $n$ est impair et est lui-même un carré.** Écrivons $n = m^2$. Alors
$n^n = \left(m^2\right)^n = \left(m^n\right)^2$ est un carré. Ces nombres conviennent.

**Si $n$ est impair et n'est pas un carré.** Décomposons $n$ en facteurs premiers. Un entier
est un carré exactement quand tous les exposants de sa décomposition sont pairs. Comme $n$
n'est pas un carré, un nombre premier $p$ y apparaît avec un exposant $e$ impair.

Dans $n^n$, on multiplie $n$ facteurs égaux à $n$, donc chaque exposant est multiplié par $n$ :
le nombre premier $p$ apparaît dans $n^n$ avec l'exposant $e \times n$. C'est le produit de
deux nombres impairs, il est impair. Donc $n^n$ n'est pas un carré.

Par exemple, $3^3 = 27$ n'est pas un carré, ni $15^{15} = 3^{15} \times 5^{15}$.

**On compte.** Parmi les entiers impairs de $1$ à $100$, les carrés sont
$1 = 1^2$, $9 = 3^2$, $25 = 5^2$, $49 = 7^2$ et $81 = 9^2$ (le suivant, $11^2 = 121$, est trop
grand). Cela fait $5$ nombres.

Au total, il y a $50 + 5 = 55$ entiers qui conviennent.

**La réponse est $55$.**
