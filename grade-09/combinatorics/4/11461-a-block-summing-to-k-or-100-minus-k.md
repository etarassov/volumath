---
id: "11461"
title: "Une somme égale à k ou à 100 − k"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tiroirs, sommes-partielles, entiers, decalage, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Seniors, exercice 17 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

On écrit en ligne $51$ entiers strictement positifs dont la somme vaut $100$.

Montrer que, pour tout entier $k$ tel que $1 \leqslant k \leqslant 99$, on peut trouver plusieurs de ces
entiers, écrits à la suite les uns des autres, dont la somme vaut $k$ ou $100 - k$.

## Hints

1. Note $a_1, a_2, \ldots, a_{51}$ les entiers, et calcule les sommes $s_0 = 0$, $s_1 = a_1$,
   $s_2 = a_1 + a_2$, etc. Comment s'écrit la somme des entiers écrits à la suite de $a_{i+1}$ à $a_j$ ?
2. Les sommes $s_0, s_1, \ldots, s_{50}$ sont $51$ nombres différents pris entre $0$ et $99$. Que dire des
   $51$ nombres $s_0 + k, s_1 + k, \ldots, s_{50} + k$ ?
3. Pour comparer les deux listes, remplace chaque $s_i + k$ qui dépasse $99$ par $s_i + k - 100$. Il y a
   alors $102$ nombres entre $0$ et $99$.

## Solution

**Les sommes partielles.** Notons $a_1, a_2, \ldots, a_{51}$ les entiers, dans l'ordre de la ligne, et
posons

$$s_0 = 0, \quad s_1 = a_1, \quad s_2 = a_1 + a_2, \quad \ldots, \quad s_{51} = a_1 + a_2 + \cdots + a_{51} = 100.$$

Pour $i < j$, la somme des entiers écrits à la suite $a_{i+1} + a_{i+2} + \cdots + a_j$ vaut
$s_j - s_i$. Il suffit donc de trouver deux sommes partielles dont la différence vaut $k$ ou $100 - k$.

Comme les $a_i$ sont strictement positifs, $s_0 < s_1 < s_2 < \cdots < s_{50} < s_{51} = 100$. Les $51$
nombres $s_0, s_1, \ldots, s_{50}$ sont donc différents, et tous compris entre $0$ et $99$.

**Une deuxième liste.** Fixons $k$ entre $1$ et $99$. Pour chaque $i$ de $0$ à $50$, posons

$$t_i = s_i + k \ \text{ si } s_i + k \leqslant 99, \qquad t_i = s_i + k - 100 \ \text{ si } s_i + k \geqslant 100.$$

Comme $0 \leqslant s_i \leqslant 99$ et $1 \leqslant k \leqslant 99$, on a $1 \leqslant s_i + k \leqslant 198$, donc
$t_i$ est toujours compris entre $0$ et $99$. Les $t_i$ sont différents entre eux. En effet, si $t_i = t_{i'}$ avec $s_i < s_{i'}$, alors
$s_{i'} - s_i$ vaudrait $0$, $100$ ou $-100$, ce qui est impossible puisque $0 < s_{i'} - s_i \leqslant 99$.

**Les tiroirs.** On a maintenant $51$ nombres $s_i$, tous différents, et $51$ nombres $t_i$, tous
différents, soit $102$ nombres placés dans les $100$ valeurs $0, 1, \ldots, 99$. Une même valeur est
donc prise par un $s_j$ et par un $t_i$ : $s_j = t_i$.

- Si $t_i = s_i + k$, alors $s_j - s_i = k$. Comme $k > 0$, on a $j > i$, et les entiers
  $a_{i+1}, \ldots, a_j$, écrits à la suite, ont pour somme $k$.
- Si $t_i = s_i + k - 100$, alors $s_i - s_j = 100 - k$. Comme $100 - k > 0$, on a $i > j$, et les
  entiers $a_{j+1}, \ldots, a_i$, écrits à la suite, ont pour somme $100 - k$.

**Conclusion.** Pour tout $k$ entre $1$ et $99$, il existe toujours des entiers écrits à la suite dont
la somme vaut $k$ ou $100 - k$.

## Going further

**On ne peut pas descendre à $50$ entiers.** Avec $50$ entiers égaux à $2$, la somme vaut bien $100$,
mais toute somme d'entiers écrits à la suite est paire. Pour $k = 1$, ni $1$ ni $99$ ne sont atteints.

**Une image pour s'en souvenir.** On peut voir les sommes partielles comme $51$ points noirs marqués sur
un cercle de périmètre $100$, gradué de $0$ à $99$. La deuxième liste, c'est la même figure tournée de
$k$ graduations. Deux ensembles de $51$ points parmi $100$ ont forcément un point commun. L'arc qui
relie les deux points noirs correspondants mesure $k$, et selon qu'il passe ou non par la graduation
$0$, il donne une somme $k$ ou une somme $100 - k$.
