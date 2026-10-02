---
id: "8176"
title: "Une fonction qui respecte les sommes de deux carrés"
grade: 12
theme: algebra
difficulty: 5
duration_min: 55
tags: [equation-fonctionnelle, somme-de-deux-carres, recurrence-forte, identite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 90 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Déterminer toutes les fonctions $f : \mathbb{N} \to \mathbb{N}$ telles que $f(1) > 0$ et que, pour tous entiers naturels $m$ et $n$,

$$f\left(m^2 + n^2\right) = f(m)^2 + f(n)^2 .$$

## Hints

1. Prends $m = n = 0$, puis $m = 1$, $n = 0$. Tu obtiens $f(0)$ et $f(1)$.
2. Enchaîne : $2 = 1^2+1^2$, $4 = 2^2+0^2$, $5 = 2^2+1^2$, $8 = 2^2+2^2$. Tout se calcule.
3. Pour $f(3)$, il faut ruser. Le nombre $25$ s'écrit de deux façons comme somme de deux carrés : lesquelles ? Que donne chacune ?
4. Trouve de même $f(6)$ (regarde $100$) et $f(7)$ (regarde $50$).
5. Pour la récurrence générale, il faut des identités qui écrivent un même nombre de deux façons, l'une faisant intervenir un grand entier et l'autre seulement des petits. Vérifie que
   $$(2k+1)^2 + (k-2)^2 = (2k-1)^2 + (k+2)^2 \qquad \text{et} \qquad (2k+2)^2 + (k-4)^2 = (2k-2)^2 + (k+4)^2 .$$

## Solution

**Étape 1 : les petites valeurs.**

- $m = n = 0$ : $f(0) = 2f(0)^2$. En posant $t = f(0)$, on a $t(2t-1) = 0$, et comme $t$ est un entier naturel, $t = 0$. Donc $f(0) = 0$.
- $m = 1$, $n = 0$ : $f(1) = f(1)^2 + f(0)^2 = f(1)^2$. Donc $f(1) \in \{0, 1\}$, et comme $f(1) > 0$, $f(1) = 1$.
- $2 = 1^2+1^2$ : $f(2) = 1 + 1 = 2$.
- $4 = 2^2+0^2$ : $f(4) = f(2)^2 = 4$.
- $5 = 2^2+1^2$ : $f(5) = 4 + 1 = 5$.
- $8 = 2^2+2^2$ : $f(8) = 4 + 4 = 8$.

**Étape 2 : $f(3)$, $f(6)$, $f(7)$ par double écriture.**

Le nombre $25$ s'écrit de deux façons comme somme de deux carrés :

$$25 = 5^2 + 0^2 = 3^2 + 4^2 .$$

La première donne $f(25) = f(5)^2 = 25$ ; la seconde donne $f(25) = f(3)^2 + f(4)^2 = f(3)^2 + 16$. Donc $f(3)^2 = 9$ et, $f(3)$ étant un entier naturel, $f(3) = 3$.

On en déduit $f(9) = f\left(3^2+0^2\right) = 9$ puis $f(10) = f\left(3^2+1^2\right) = 9+1 = 10$.

De même, $100 = 10^2+0^2 = 6^2+8^2$ donne

$$100 = f(6)^2 + f(8)^2 = f(6)^2 + 64, \qquad \text{donc} \qquad f(6) = 6 ,$$

et $50 = 5^2+5^2 = 7^2+1^2$ donne

$$50 = f(7)^2 + f(1)^2 = f(7)^2 + 1, \qquad \text{donc} \qquad f(7) = 7 .$$

À ce stade, $f(k) = k$ pour tout $k$ de $0$ à $10$.

**Étape 3 : deux identités.**

Vérifions les deux identités annoncées. D'une part

$$(2k+1)^2 + (k-2)^2 = 4k^2+4k+1 + k^2-4k+4 = 5k^2+5 ,$$
$$(2k-1)^2 + (k+2)^2 = 4k^2-4k+1 + k^2+4k+4 = 5k^2+5 .$$

D'autre part

$$(2k+2)^2 + (k-4)^2 = 4k^2+8k+4 + k^2-8k+16 = 5k^2+20 ,$$
$$(2k-2)^2 + (k+4)^2 = 4k^2-8k+4 + k^2+8k+16 = 5k^2+20 .$$

Les deux membres coïncident à chaque fois.

**Étape 4 : récurrence forte.**

Montrons $f(n) = n$ pour tout $n$. C'est acquis pour $n \leqslant 10$. Soit $n \geqslant 11$ et supposons $f(j) = j$ pour tout $j < n$.

*Si $n$ est impair*, écrivons $n = 2k+1$ avec $k \geqslant 5$. Les trois entiers $2k-1 = n-2$, $k+2$ et $k-2$ sont positifs et strictement inférieurs à $n$, donc $f$ vaut l'identité sur eux. La première identité, transformée par $f$ des deux côtés, donne

$$f(2k+1)^2 + f(k-2)^2 = f(2k-1)^2 + f(k+2)^2 ,$$

c'est-à-dire

$$f(n)^2 + (k-2)^2 = (2k-1)^2 + (k+2)^2 .$$

Donc

$$f(n)^2 = (2k-1)^2 + (k+2)^2 - (k-2)^2 = 4k^2 - 4k + 1 + 8k = 4k^2+4k+1 = (2k+1)^2 ,$$

d'où $f(n) = 2k+1 = n$.

*Si $n$ est pair*, écrivons $n = 2k+2$ avec $k \geqslant 5$. Les entiers $2k-2 = n-4$, $k+4$ et $k-4$ sont positifs et strictement inférieurs à $n$. La seconde identité donne de même

$$f(n)^2 + (k-4)^2 = (2k-2)^2 + (k+4)^2 ,$$

donc

$$f(n)^2 = 4k^2-8k+4 + 16k = 4k^2+8k+4 = (2k+2)^2 ,$$

d'où $f(n) = 2k+2 = n$.

La récurrence est terminée.

**Réciproque.** L'identité convient, puisque $m^2+n^2 = m^2+n^2$, et $f(1) = 1 > 0$.

$$\boxed{\ \text{La seule solution est } f(n) = n.\ }$$

## Going further

L'hypothèse $f(1) > 0$ n'est pas là pour décorer : la fonction nulle vérifie aussi l'équation, puisque $0 = 0 + 0$. C'est la seule autre solution.

Toute la difficulté est que l'équation ne renseigne sur $f(N)$ que si $N$ est une somme de deux carrés, et ne renseigne sur $f(a)$ que si $a$ apparaît comme l'un des deux termes. L'astuce consiste donc à trouver des nombres qui se décomposent de **deux** façons différentes : la première décomposition livre la valeur, la seconde fait apparaître l'inconnue. C'est exactement ce que font les deux identités de l'étape 3, qui fournissent une machine à produire de telles doubles écritures pour n'importe quel entier.
