---
id: "7132"
title: "Six numéros dont deux qui se suivent"
grade: 11
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [denombrement, bijection, coefficients-binomiaux, complementaire]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Avancés : combinatoire », mercredi matin (Irène Marcovici), exercice 9"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Combien y a-t-il de façons de choisir six nombres dans $\{1, 2, \ldots, 49\}$ de sorte
qu'**au moins deux** des six soient consécutifs ?

## Hints

1. « Au moins deux consécutifs » est une condition désagréable à compter directement.
   Compte plutôt le contraire, puis soustrais.
2. Il s'agit donc de compter les choix de six nombres **deux à deux non consécutifs**.
3. Range un tel choix dans l'ordre croissant : $a_1 < a_2 < \cdots < a_6$, avec
   $a_{k+1} \geqslant a_k + 2$. Essaie de « tasser » ces nombres en retirant $0$ au premier,
   $1$ au deuxième, $2$ au troisième, et ainsi de suite.
4. Vérifie que ce tassement est une correspondance parfaite : à chaque choix sans consécutifs
   correspond un choix quelconque dans un ensemble plus petit, et réciproquement.

## Solution

**Le passage au complémentaire.** Le nombre total de façons de choisir six nombres parmi $49$
vaut

$$\binom{49}{6} = 13\,983\,816 .$$

Il suffit donc de compter les choix où **aucun** couple de nombres consécutifs n'apparaît, et
de soustraire.

**On tasse les choix sans consécutifs.** Soit un choix $a_1 < a_2 < \cdots < a_6$ dans
$\{1, \ldots, 49\}$ sans deux nombres consécutifs, c'est-à-dire tel que

$$a_{k+1} \geqslant a_k + 2 \qquad \text{pour } k = 1, \ldots, 5 .$$

Posons

$$b_k = a_k - (k-1) \qquad \text{pour } k = 1, \ldots, 6 .$$

Alors :

- $b_1 = a_1 \geqslant 1$ ;
- $b_{k+1} - b_k = (a_{k+1} - a_k) - 1 \geqslant 2 - 1 = 1$, donc les $b_k$ sont strictement
  croissants ;
- $b_6 = a_6 - 5 \leqslant 49 - 5 = 44$.

Les nombres $b_1 < b_2 < \cdots < b_6$ forment donc un choix de six nombres dans
$\{1, \ldots, 44\}$.

**C'est une correspondance parfaite.** Réciproquement, partons de six nombres
$b_1 < b_2 < \cdots < b_6$ dans $\{1, \ldots, 44\}$ et posons $a_k = b_k + (k-1)$. Alors
$a_1 \geqslant 1$, $a_6 = b_6 + 5 \leqslant 49$, et

$$a_{k+1} - a_k = (b_{k+1} - b_k) + 1 \geqslant 1 + 1 = 2 ,$$

donc les $a_k$ sont six nombres de $\{1, \ldots, 49\}$ sans deux consécutifs. Les deux
transformations se défont l'une l'autre, ce qui établit bien une correspondance parfaite.

**Le compte.** Le nombre de choix sans deux consécutifs est donc

$$\binom{44}{6} = 7\,059\,052 .$$

**Conclusion.** Le nombre cherché vaut

$$\binom{49}{6} - \binom{44}{6} = 13\,983\,816 - 7\,059\,052 = \boxed{6\,924\,764} .$$

## Going further

Environ la moitié des grilles de six numéros sur $49$ contiennent deux numéros consécutifs :
$6\,924\,764$ sur $13\,983\,816$, soit à peu près $49{,}5\,\%$. Beaucoup de joueurs de loto
évitent les numéros consécutifs en croyant qu'ils sont « moins probables » ; ils le sont
légèrement, mais à peine, et surtout ils ne le sont pas pour une grille donnée : chaque
grille précise a exactement la même chance que n'importe quelle autre.

Le raisonnement se généralise sans effort. Le nombre de façons de choisir $k$ nombres parmi
$n$ sans deux consécutifs vaut

$$\binom{n - k + 1}{k} .$$

Vérifie-le sur un petit cas, par exemple $k = 2$ et $n = 5$.
