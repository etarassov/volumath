---
id: "12641"
title: "Des diviseurs dont les sommes successives sont des carrés"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, carres-parfaits, difference-de-carres, permutations, de-proche-en-proche]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 janvier 2022"
  reference: "2022-08_Enonce-Web-Test-2.pdf, exercice 6 ; corrigé 2022-01_Corrige-Web-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/08/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-08_Enonce-Web-Test-2.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ qui ont la propriété suivante : on peut ranger les diviseurs positifs de $n$ dans un certain ordre $d_1, d_2, \ldots, d_k$, chaque diviseur apparaissant exactement une fois, de sorte que pour tout $i \leqslant k$ la somme
$$d_1 + d_2 + \cdots + d_i$$
soit un carré parfait.

## Hints

1. Essaie les petites valeurs de $n$. Pour $n = 6$, par exemple, peut-on ranger $1$, $2$, $3$, $6$ dans un bon ordre ?
2. Écris $d_1 + \cdots + d_i = s_i^2$, avec $s_i$ entier positif, et pose $s_0 = 0$. Alors $d_i = s_i^2 - s_{i-1}^2 = (s_i - s_{i-1})(s_i + s_{i-1})$. Où peut se trouver le diviseur $1$ dans la liste ?
3. Montre que $d_1 = 1$, puis $d_2 = 3$, puis $d_3 = 5$. Pour continuer, suppose que $d_i = 2i - 1$ et $s_i = i$ pour tout $i \leqslant \ell$. Le nombre $s_{\ell+1} + s_\ell$ divise $d_{\ell+1}$, donc c'est un diviseur de $n$ : il est égal à un certain $d_m$. Où peut se trouver $m$ ?
4. Compare $d_m$ avec $s_m + s_{m-1}$. Une fois que tu sais que les diviseurs de $n$ sont $1, 3, \ldots, 2k - 1$, regarde les deux plus grands.

## Solution

**Les notations.** Soit $n$ un entier qui a la propriété, et $d_1, d_2, \ldots, d_k$ un ordre qui convient. Pour chaque $i$ entre $1$ et $k$, la somme $d_1 + \cdots + d_i$ est un carré parfait : on l'écrit $s_i^2$, où $s_i$ est un entier positif. On pose aussi $s_0 = 0$.

Les diviseurs sont positifs, donc chaque somme est plus grande que la précédente :
$$0 = s_0 < s_1 < s_2 < \cdots < s_k.$$
Ce sont des entiers, donc chacun dépasse le précédent d'au moins $1$, et $s_i \geqslant i$.

Pour tout $i \geqslant 1$, le diviseur $d_i$ est la différence de deux sommes successives :
$$d_i = s_i^2 - s_{i-1}^2 = (s_i - s_{i-1})(s_i + s_{i-1}). \qquad (1)$$
Comme $s_i - s_{i-1} \geqslant 1$, on en déduit
$$d_i \geqslant s_i + s_{i-1}. \qquad (2)$$

**Le premier diviseur.** Pour $i \geqslant 2$, on a $s_{i-1} \geqslant 1$ et $s_i \geqslant 2$, donc d'après $(2)$, $d_i \geqslant 3$. Or $1$ est un diviseur de $n$, il apparaît donc dans la liste, et il ne peut être qu'en première position : $d_1 = 1$ et $s_1 = 1$.

**L'affirmation clé.** Montrons que, pour tout $i$ de $1$ à $k$,
$$d_i = 2i - 1 \qquad \text{et} \qquad s_i = i.$$
C'est vrai pour $i = 1$. Supposons que ce soit faux pour un certain indice, et appelons $\ell + 1$ le premier indice où c'est faux. On a $\ell \geqslant 1$, $\ell + 1 \leqslant k$, et pour tout $i \leqslant \ell$, $d_i = 2i - 1$ et $s_i = i$.

*Un nouveau diviseur.* On pose $e = s_{\ell+1} + s_\ell$. D'après $(1)$, $e$ divise $d_{\ell+1}$, qui divise $n$. Donc $e$ divise $n$ : c'est l'un des diviseurs de la liste, $e = d_m$ pour un certain $m$.

*Le diviseur $e$ est placé après $d_\ell$.* On a $s_{\ell+1} \geqslant s_\ell + 1 = \ell + 1$, donc
$$e = s_{\ell+1} + s_\ell \geqslant (\ell + 1) + \ell = 2\ell + 1.$$
Or les diviseurs $d_1, \ldots, d_\ell$ sont $1, 3, \ldots, 2\ell - 1$, tous plus petits que $2\ell + 1$. Donc $e$ n'est aucun d'eux, et $m \geqslant \ell + 1$.

*Tout est égal.* Comme $m \geqslant \ell + 1$ et que les $s_i$ croissent, on a $s_m \geqslant s_{\ell+1}$ et $s_{m-1} \geqslant s_\ell$. Avec $(2)$, on obtient
$$e = d_m \geqslant s_m + s_{m-1} \geqslant s_{\ell+1} + s_\ell = e.$$
Le premier et le dernier terme sont égaux, donc toutes ces inégalités sont des égalités.

- D'abord $s_m + s_{m-1} = s_{\ell+1} + s_\ell$. Si l'on avait $m > \ell + 1$, on aurait $s_m > s_{\ell+1}$ et $s_{m-1} \geqslant s_{\ell+1} > s_\ell$, donc une somme strictement plus grande. Ainsi $m = \ell + 1$.
- Ensuite $d_m = s_m + s_{m-1}$. D'après $(1)$, cela veut dire que $s_m - s_{m-1} = 1$, c'est-à-dire $s_{\ell+1} = s_\ell + 1 = \ell + 1$.

On en déduit, avec $(1)$, que $d_{\ell+1} = 1 \times (2\ell + 1) = 2(\ell + 1) - 1$. L'affirmation est donc vraie à l'indice $\ell + 1$, ce qui contredit le choix de cet indice. L'affirmation est vraie pour tout $i$.

**Quels entiers $n$ ?** Les diviseurs de $n$ sont donc exactement les nombres impairs $1, 3, 5, \ldots, 2k - 1$. Le plus grand diviseur de $n$ est $n$ lui-même, donc $n = 2k - 1$.

- Si $k = 1$, alors $n = 1$.
- Si $k \geqslant 2$, alors $2k - 3$ est un diviseur de $n = 2k - 1$. Il divise aussi $2k - 3$, donc il divise la différence $(2k - 1) - (2k - 3) = 2$. Comme il est impair, il vaut $1$. Ainsi $2k - 3 = 1$, donc $k = 2$ et $n = 3$.

**Vérification.** Pour $n = 1$, le seul diviseur est $1 = 1^2$. Pour $n = 3$, l'ordre $1, 3$ donne les sommes $1 = 1^2$ et $1 + 3 = 4 = 2^2$.

**Conclusion.** **Les entiers cherchés sont $n = 1$ et $n = 3$.**

## Going further

- L'affirmation clé dit que les sommes successives doivent être $1$, $1 + 3$, $1 + 3 + 5$, et ainsi de suite. On retrouve le fait que la somme des $i$ premiers nombres impairs vaut $i^2$.
- Prendre « le premier indice où c'est faux » et aboutir à une contradiction, c'est une façon d'écrire un raisonnement par récurrence. Le corrigé signale que beaucoup d'élèves ont trouvé $d_1 = 1$, $d_2 = 3$, $d_3 = 5$, mais n'ont pas osé continuer, et ont conclu sans justification que $1$ et $3$ étaient les seules solutions. Un tel saut n'est pas une preuve.
- Que devient le problème si l'on demande seulement que la somme de **tous** les diviseurs soit un carré parfait ? Trouve un tel $n$ autre que $1$ et $3$.
