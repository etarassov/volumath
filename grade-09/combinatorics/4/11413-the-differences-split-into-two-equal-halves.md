---
id: "11413"
title: "Les écarts partagés en deux moitiés de même somme"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [parite, construction, sommes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Juniors, exercice 5 ; corrigé 2021-03_Corrige-envoi-4.pdf (l'énoncé parle de l'« ensemble » des écarts, mais il faut compter chaque écart autant de fois qu'il apparaît : avec 0, 1 et 2, l'ensemble {1, 2} ne se partage pas ; l'énoncé ci-dessous le précise)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

Soit $n$ un entier impair et $x_1, x_2, \ldots, x_n$ des nombres réels tous différents.

Pour chaque paire d'indices $i < j$, on écrit au tableau l'écart $|x_i - x_j|$. On écrit ainsi
$\frac{n(n-1)}{2}$ nombres. Un même nombre peut être écrit plusieurs fois : on garde alors toutes
ses copies.

Montrer qu'on peut partager les nombres écrits au tableau en deux groupes $A$ et $B$ dont les sommes
sont égales.

## Hints

1. Commence par $n = 3$ avec $x_1 < x_2 < x_3$. Les trois écarts sont $x_2 - x_1$, $x_3 - x_2$ et
   $x_3 - x_1$. Lequel est égal à la somme des deux autres ?
2. Range les nombres dans l'ordre croissant. L'écart entre $x_i$ et $x_j$ (avec $i < j$) est
   alors $x_j - x_i$. Essaie de choisir le groupe d'un écart d'après la parité de $j - i$.
3. Calcule la somme du groupe $A$ moins la somme du groupe $B$. Combien de fois chaque $x_m$
   y apparaît-il avec le signe plus, et combien de fois avec le signe moins ?

## Solution

**On range les nombres.** Quitte à changer leurs noms, on peut supposer que
$x_1 < x_2 < \cdots < x_n$. Pour $i < j$, l'écart vaut alors $|x_i - x_j| = x_j - x_i$.

**La règle de partage.** On met l'écart $x_j - x_i$ dans le groupe $A$ si $j - i$ est impair, et
dans le groupe $B$ si $j - i$ est pair.

Par exemple, pour $n = 3$ : le groupe $A$ contient $x_2 - x_1$ et $x_3 - x_2$, le groupe $B$
contient $x_3 - x_1$. Les deux sommes valent $x_3 - x_1$.

**On calcule la différence.** Notons $D$ la somme des écarts de $A$ moins la somme des écarts de
$B$. Il faut montrer que $D = 0$.

Dans $D$, chaque écart $x_j - x_i$ apparaît avec le signe $+$ s'il est dans $A$ et avec le signe
$-$ s'il est dans $B$. Développons tout : $D$ est une somme de termes $\pm x_m$. Regardons combien
de fois un nombre $x_m$ donné apparaît, et avec quel signe.

- **Les écarts où $x_m$ est le plus grand des deux**, c'est-à-dire $x_m - x_i$ avec $i < m$.
  Ici $x_m$ est compté avec le signe de l'écart. Les distances $m - i$ valent $1, 2, \ldots, m-1$.
  Les signes sont donc $+, -, +, -, \ldots$ ($m - 1$ signes en tout). Leur total vaut $1$ si
  $m - 1$ est impair, et $0$ si $m - 1$ est pair.
- **Les écarts où $x_m$ est le plus petit des deux**, c'est-à-dire $x_j - x_m$ avec $j > m$.
  Ici $x_m$ est compté avec le signe contraire de celui de l'écart. Les distances $j - m$ valent
  $1, 2, \ldots, n - m$. Le total des signes des écarts vaut $1$ si $n - m$ est impair et $0$ sinon,
  et $x_m$ est compté avec l'opposé de ce total.

Au total, le coefficient de $x_m$ dans $D$ est

$$c_m = (\text{1 si } m - 1 \text{ est impair, 0 sinon}) - (\text{1 si } n - m \text{ est impair, 0 sinon}).$$

**L'imparité de $n$ conclut.** On a $(m - 1) + (n - m) = n - 1$, qui est pair puisque $n$ est
impair. Deux entiers dont la somme est paire ont la même parité. Donc $m - 1$ et $n - m$ sont tous
les deux pairs ou tous les deux impairs, et les deux parenthèses sont égales : $c_m = 0$.

Tous les coefficients sont nuls, donc $D = 0$ quelles que soient les valeurs de $x_1, \ldots, x_n$.

**Vérification pour $n = 5$.** Le groupe $A$ contient les écarts à distance $1$ et $3$, le groupe
$B$ ceux à distance $2$ et $4$ :

$$A : \ x_2 - x_1,\ x_3 - x_2,\ x_4 - x_3,\ x_5 - x_4,\ x_4 - x_1,\ x_5 - x_2,$$
$$B : \ x_3 - x_1,\ x_4 - x_2,\ x_5 - x_3,\ x_5 - x_1.$$

Après simplification, la somme de $A$ vaut $2x_5 + x_4 - x_2 - 2x_1$, et celle de $B$ aussi.

**Conclusion.** En mettant l'écart $x_j - x_i$ dans $A$ quand $j - i$ est impair et dans $B$ quand
$j - i$ est pair, on obtient deux groupes de même somme.

## Going further

Pour $n$ pair, ce n'est plus toujours possible. Pour $n = 2$, il n'y a qu'un seul écart, qui n'est
pas nul. Pour $n = 4$, essayer $0$, $1$, $3$ et $7$ : la somme de tous les écarts est impaire, alors
que deux groupes de même somme entière donneraient un total pair.
