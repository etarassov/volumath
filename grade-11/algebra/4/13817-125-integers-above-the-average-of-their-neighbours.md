---
id: "13817"
title: "125 entiers qui dépassent la moyenne de leurs voisins"
grade: 11
theme: algebra
difficulty: 4
duration_min: 45
tags: [suites, inegalites, minimum, construction, somme des premiers entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018"
  reference: "2018-06_coupe_printemps_2018.pdf, énoncés lycée, exercice 6 ; corrigé 2018-06_coupe_printemps_2018_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/06/coupe_printemps_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-06_coupe_printemps_2018.pdf"
---

## Statement

On veut écrire sur une ligne $125$ entiers **deux à deux distincts** $a_1, a_2, \ldots, a_{125}$
de sorte que :

1. chacun de ces entiers est strictement positif et inférieur ou égal à $N$ ;
2. chacun des $123$ entiers $a_2, a_3, \ldots, a_{124}$ est strictement plus grand que la
   moyenne de ses deux voisins, c'est-à-dire $a_i > \dfrac{a_{i-1} + a_{i+1}}{2}$.

Déterminer le plus petit entier $N$ pour lequel c'est possible.

## Hints

1. Essaie d'abord avec $5$ entiers au lieu de $125$. Quelle est la plus petite valeur de $N$
   que tu arrives à atteindre ?
2. Pose $d_i = a_{i+1} - a_i$, l'écart entre deux voisins. Traduis la condition 2 en une
   condition sur les écarts.
3. Tu dois trouver $d_1 > d_2 > \cdots > d_{124}$. Regarde le plus grand des $a_i$ : les écarts
   sont positifs avant lui et négatifs après. Que vaut au moins le plus grand des $a_i$ ?
4. Les deux écarts qui touchent le plus grand nombre ne peuvent pas être $1$ et $-1$ en même
   temps. Pourquoi ?

## Solution

Pour tout entier $k \geqslant 0$, notons $T_k = 1 + 2 + \cdots + k = \dfrac{k(k+1)}{2}$, avec
$T_0 = 0$. On trouvera $N = T_{63} = 2016$.

**Les écarts.** Posons $d_i = a_{i+1} - a_i$ pour $1 \leqslant i \leqslant 124$. Pour
$2 \leqslant i \leqslant 124$, la condition 2 s'écrit $2a_i > a_{i-1} + a_{i+1}$, soit
$a_i - a_{i-1} > a_{i+1} - a_i$, c'est-à-dire $d_{i-1} > d_i$. Les écarts sont donc des entiers
qui décroissent strictement :

$$d_1 > d_2 > \cdots > d_{124}.$$

**Autour du plus grand nombre.** Soit $a_m$ le plus grand des $125$ entiers. Comme ils sont
distincts, il est strictement plus grand que tous les autres. Notons $L = m - 1$ le nombre
d'écarts à sa gauche et $R = 125 - m$ le nombre d'écarts à sa droite, de sorte que
$L + R = 124$.

- À gauche, $d_{m-1} = a_m - a_{m-1} > 0$. Les écarts $d_{m-1} < d_{m-2} < \cdots < d_1$ sont
  des entiers strictement croissants à partir d'au moins $1$, donc $d_{m-1} \geqslant 1$,
  $d_{m-2} \geqslant 2$, et ainsi de suite. Comme $a_1 \geqslant 1$,
  $$a_m = a_1 + d_1 + \cdots + d_{m-1} \geqslant 1 + (1 + 2 + \cdots + L) = 1 + T_L.$$
- À droite, de même, $d_m \leqslant -1$, $d_{m+1} \leqslant -2$, et ainsi de suite. Comme
  $a_{125} \geqslant 1$,
  $$a_m = a_{125} - (d_m + \cdots + d_{124}) \geqslant 1 + (1 + 2 + \cdots + R) = 1 + T_R.$$

**Pas $1$ et $-1$ à la fois.** Si $L \geqslant 1$ et $R \geqslant 1$, on ne peut pas avoir à
la fois $d_{m-1} = 1$ et $d_m = -1$ : on aurait $a_{m-1} = a_m - 1 = a_{m+1}$, alors que les
entiers sont distincts. Donc $d_{m-1} \geqslant 2$ ou $d_m \leqslant -2$.

Si $d_{m-1} \geqslant 2$, alors $d_{m-2} \geqslant 3$, et ainsi de suite, et le calcul de
gauche devient $a_m \geqslant 1 + (2 + 3 + \cdots + (L + 1)) = T_{L+1}$. De même, si
$d_m \leqslant -2$, on obtient $a_m \geqslant T_{R+1}$.

**La minoration.** Comme $L + R = 124$, le plus grand des deux nombres $L$ et $R$ vaut au moins
$62$.

- Si $L \geqslant 63$ ou $R \geqslant 63$, l'une des deux premières minorations donne
  $a_m \geqslant 1 + T_{63} = 2017$.
- Sinon $L = R = 62$. D'après le paragraphe précédent, $a_m \geqslant T_{63}$ dans les deux
  cas.

Dans tous les cas $a_m \geqslant T_{63} = \dfrac{63 \times 64}{2} = 2016$. Comme $a_m \leqslant N$,
on a $N \geqslant 2016$.

**Une ligne qui atteint $2016$.** On prend $a_1 = 1$. Les $62$ premiers écarts sont
$63, 62, \ldots, 3, 2$, et les $62$ suivants sont $-1, -2, \ldots, -62$. Autrement dit $d_i = 64 - i$ pour $i \leqslant 62$ et $d_i = 62 - i$ pour $i \geqslant 63$. Ces
écarts décroissent strictement (on passe de $2$ à $-1$ au milieu), donc la condition 2 est
vérifiée.

La ligne monte de $a_1 = 1$ jusqu'à $a_{63} = 1 + (2 + 3 + \cdots + 63) = T_{63} = 2016$, puis
descend jusqu'à $a_{125} = 2016 - (1 + 2 + \cdots + 62) = 2016 - 1953 = 63$. Tous les entiers
sont donc entre $1$ et $2016$.

Il reste à voir qu'ils sont distincts. Ceux de la montée sont distincts entre eux, ceux de la
descente aussi. Pour $j$ et $k$ entre $1$ et $62$, on a

$$a_{63-j} = 2016 - (2 + 3 + \cdots + (j + 1)) = 2016 - T_{j+1} + 1
\qquad \text{et} \qquad a_{63+k} = 2016 - T_k .$$

L'égalité $a_{63-j} = a_{63+k}$ voudrait dire $T_{j+1} - T_k = 1$. Il faudrait $k < j + 1$, et
alors $T_{j+1} - T_k \geqslant T_{j+1} - T_j = j + 1 \geqslant 2$. C'est impossible, donc les
$125$ entiers sont distincts.

**Conclusion.** Le plus petit entier $N$ possible est $N = 2016$.

## Going further

Le même raisonnement montre qu'avec $2k + 1$ entiers, le plus petit $N$ possible est
$T_{k+1} = \dfrac{(k+1)(k+2)}{2}$. Pour $5$ entiers, on trouve $6$, atteint par exemple par la
ligne $1, 4, 6, 5, 3$.
