---
id: "11242"
title: "Choisir dans chaque ensemble sans jamais se répéter"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [denombrement, coloriage, parties, existence, comptage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

Soient $n$ et $k$ deux entiers strictement positifs, et soient $A_1, A_2, \ldots, A_n$ et
$B_1, B_2, \ldots, B_n$ des ensembles qui ont chacun exactement $k$ éléments. On suppose que
$$n < 2^{k-1} .$$

Montrer que l'on peut choisir des éléments $a_1, a_2, \ldots, a_n$ et $b_1, b_2, \ldots, b_n$ tels
que, pour tous $i$ et $j$ entre $1$ et $n$,
$$a_i \in A_i, \qquad b_j \in B_j, \qquad a_i \neq b_j .$$

## Hints

1. Si on colorie chaque élément en bleu ou en rouge, et que l'on prend tous les $a_i$ bleus et tous
   les $b_j$ rouges, alors on est sûr que $a_i \neq b_j$. Que faut-il demander au coloriage ?
2. Note $X$ la réunion de tous les ensembles $A_i$ et $B_j$, et $m$ son nombre d'éléments.
   Combien y a-t-il de coloriages de $X$ en bleu et rouge ?
3. Un coloriage est « mauvais » si un des $A_i$ est entièrement rouge, ou si un des $B_j$ est
   entièrement bleu. Combien y a-t-il de coloriages pour lesquels $A_1$ est entièrement rouge ?
4. Majore le nombre de mauvais coloriages, et compare avec le nombre total.

## Solution

Notons $X$ la réunion de tous les ensembles $A_1, \ldots, A_n, B_1, \ldots, B_n$, et $m$ le nombre
d'éléments de $X$. Comme $A_1$ est contenu dans $X$, on a $m \geqslant k$.

**L'idée : colorier.** Un **coloriage** de $X$ consiste à colorier chaque élément de $X$ soit en
bleu, soit en rouge. Supposons que l'on ait trouvé un coloriage tel que :

- chaque ensemble $A_i$ contient au moins un élément bleu ;
- chaque ensemble $B_j$ contient au moins un élément rouge.

On choisit alors pour $a_i$ un élément bleu de $A_i$, et pour $b_j$ un élément rouge de $B_j$.
Pour tous $i$ et $j$, l'élément $a_i$ est bleu et l'élément $b_j$ est rouge, donc ils sont
différents. C'est gagné.

Appelons **mauvais** un coloriage qui ne convient pas : un des $A_i$ est entièrement rouge, ou un
des $B_j$ est entièrement bleu. Il suffit de montrer qu'il y a moins de coloriages mauvais que de
coloriages en tout.

**Le nombre total de coloriages.** Chacun des $m$ éléments a $2$ couleurs possibles, donc il y a
$2^m$ coloriages.

**Les coloriages où $A_i$ est entièrement rouge.** Fixons $i$. Pour que $A_i$ soit entièrement
rouge, la couleur de ses $k$ éléments est imposée, et les $m - k$ autres éléments de $X$ sont
coloriés librement. Il y a donc exactement $2^{m-k}$ coloriages pour lesquels $A_i$ est entièrement
rouge. De même, pour chaque $j$, il y a $2^{m-k}$ coloriages pour lesquels $B_j$ est entièrement
bleu.

**Le nombre de coloriages mauvais.** Un coloriage mauvais fait partie d'au moins une des $2n$
familles précédentes ($n$ familles pour les $A_i$, $n$ pour les $B_j$). Le nombre de coloriages
mauvais est donc au plus la somme des tailles de ces familles (un coloriage qui est dans plusieurs
familles est compté plusieurs fois, ce qui ne fait qu'augmenter la somme) :
$$\text{nombre de coloriages mauvais} \leqslant 2n \times 2^{m-k} .$$

**Conclusion du calcul.** Comme $n < 2^{k-1}$, on a $2n < 2^k$, donc
$$2n \times 2^{m-k} < 2^k \times 2^{m-k} = 2^m .$$
Il y a strictement moins de coloriages mauvais que de coloriages en tout : il existe donc au moins
un coloriage qui n'est pas mauvais. Avec ce coloriage, on choisit les $a_i$ et les $b_j$ comme
expliqué au début.

**Conclusion : si $n < 2^{k-1}$, on peut toujours choisir $a_i \in A_i$ et $b_j \in B_j$ avec
$a_i \neq b_j$ pour tous $i$ et $j$.**

## Going further

- Les ensembles ne sont pas supposés différents : rien n'empêche par exemple $A_1 = B_1$. La preuve
  marche quand même.
- On ne peut pas se passer d'une condition sur $n$. Prenons $k = 2$ et $n = 3$, et prenons pour
  $A_1, A_2, A_3$ les trois parties à deux éléments de $\{1, 2, 3\}$, et pour $B_1, B_2, B_3$ ces
  mêmes trois parties. Si on pouvait choisir les éléments, en coloriant en bleu les $a_i$ et en
  rouge les autres nombres, chacune de ces parties contiendrait un élément bleu et un élément rouge. Or deux des trois nombres ont forcément la
  même couleur, et la partie qu'ils forment est alors d'une seule couleur. Plus généralement, les
  parties à $k$ éléments de $\{1, 2, \ldots, 2k - 1\}$ donnent un exemple qui ne marche pas, avec
  $n = \binom{2k-1}{k}$.
