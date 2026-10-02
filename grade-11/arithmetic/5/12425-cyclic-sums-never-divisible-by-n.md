---
id: "12425"
title: "Des sommes en cercle jamais divisibles par n"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [divisibilite, nombres-premiers, tiroirs, sommes-consecutives, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2018"
  reference: "2018-08_pofm-2017-2018-test-mai.pdf, exercices du groupe A, exercice 5 ; corrigé 2018-08_pofm-2017-2018-test-mai-corrige.pdf (dans le contre-exemple pour n composé, le corrigé oublie le cas i = 1, où la somme des b premiers termes vaut a(b − 1) et non ab ; il se règle avec a₁ = 0, complété ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/08/pofm-2017-2018-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-08_pofm-2017-2018-test-mai.pdf"
---

## Statement

On écrit $n$ entiers $a_1, a_2, \ldots, a_n$ autour d'un cercle, dans cet ordre, de sorte qu'après
$a_n$ on retrouve $a_1$. Autrement dit, pour $i > n$, on pose $a_i = a_{i-n}$.

Déterminer tous les entiers $n \geqslant 2$ qui ont la propriété suivante :

> pour tous entiers $a_1, a_2, \ldots, a_n$ dont la somme n'est pas divisible par $n$, il existe un
> indice $i$ tel qu'**aucun** des $n$ nombres
> $$a_i, \quad a_i + a_{i+1}, \quad \ldots, \quad a_i + a_{i+1} + \cdots + a_{i+n-1}$$
> ne soit divisible par $n$.

## Hints

1. Essaie $n = 4$ avec $a_1 = 0$ et $a_2 = a_3 = a_4 = 2$. Que se passe-t-il pour chaque point de
   départ $i$ ? Généralise à tout $n$ qui n'est pas premier.
2. Tu dois trouver que les nombres premiers conviennent, et seulement eux. Pour $n$ premier,
   raisonne par l'absurde : pour chaque point de départ $i$, il existe une somme de termes
   consécutifs, commençant en $a_i$, qui est divisible par $n$. Combien de termes au plus contient
   cette somme ?
3. Pars de $a_1$, avance d'un bloc dont la somme est divisible par $n$, puis d'un autre bloc à
   partir du point d'arrivée, et ainsi de suite. Au bout de $n$ pas, que dit le principe des
   tiroirs sur les points d'arrivée ?
4. Entre deux points d'arrivée qui ont le même reste modulo $n$, on a fait un nombre entier de
   tours complets. Combien de tours au plus ?

## Solution

Notons $S = a_1 + a_2 + \cdots + a_n$. Pour un point de départ $i$ et une longueur $k$, notons
$$T(i, k) = a_i + a_{i+1} + \cdots + a_{i+k-1}$$
la somme de $k$ termes consécutifs à partir de $a_i$, en tournant autour du cercle. La propriété
demande, pour toute liste dont la somme $S$ n'est pas divisible par $n$, un départ $i$ tel
qu'aucune des sommes $T(i, 1), \ldots, T(i, n)$ ne soit divisible par $n$.

Remarquons que $T(i, n)$ contient chaque terme exactement une fois : $T(i, n) = S$.

### Si $n$ n'est pas premier, la propriété est fausse

Écrivons $n = ab$ avec $2 \leqslant a < n$ et $2 \leqslant b < n$. Prenons
$$a_1 = 0, \qquad a_2 = a_3 = \cdots = a_n = a.$$
La somme vaut $S = a(n - 1) = an - a$. Si $n$ divisait $S$, il diviserait $a$, ce qui est
impossible puisque $0 < a < n$. Donc $S$ n'est pas divisible par $n$.

Montrons pourtant que, pour **tout** départ $i$ entre $1$ et $n$, l'une des sommes $T(i, k)$ est
divisible par $n$.

- Si $i = 1$ : la somme $T(1, 1) = a_1 = 0$ est divisible par $n$.
- Si $i \geqslant 2$ et $i + b - 1 \leqslant n$ : les $b$ termes $a_i, \ldots, a_{i+b-1}$ ont des
  indices entre $2$ et $n$, ils valent tous $a$, donc $T(i, b) = ab = n$.
- Si $i + b - 1 > n$ : les $b + 1$ termes $a_i, \ldots, a_{i+b}$ ont des indices allant de $i$ à
  $i + b$, et cet intervalle contient l'indice $n + 1$ exactement une fois (car $i \leqslant n$ et
  $i + b \geqslant n + 1$, et l'intervalle a moins de $n$ termes). Le terme $a_{n+1} = a_1$ vaut
  $0$ et les $b$ autres valent $a$, donc $T(i, b + 1) = ab = n$. Ici $b + 1 \leqslant n$, donc
  c'est bien une des sommes autorisées.

Aucun départ ne convient : **un nombre $n$ qui n'est pas premier n'a pas la propriété.**

### Si $n$ est premier, la propriété est vraie

Soit $n$ premier, et soient $a_1, \ldots, a_n$ des entiers dont la somme $S$ n'est pas divisible
par $n$. Raisonnons par l'absurde et supposons que, pour **chaque** départ $i$, l'une des sommes
$T(i, k)$, avec $1 \leqslant k \leqslant n$, soit divisible par $n$. Comme $T(i, n) = S$ ne l'est
pas, cette longueur $k$ vérifie $1 \leqslant k \leqslant n - 1$. Notons-la $k(i)$. Elle ne dépend
que de la place de $a_i$ sur le cercle, c'est-à-dire du reste de $i$ dans la division par $n$.

**Des sauts.** Partons de $i_1 = 1$ et posons, de proche en proche,
$$i_2 = i_1 + k(i_1), \quad i_3 = i_2 + k(i_2), \quad \ldots, \quad i_{m+1} = i_m + k(i_m).$$
À chaque saut, on avance d'au moins $1$ et d'au plus $n - 1$, et le bloc de termes parcouru,
$a_{i_m} + \cdots + a_{i_{m+1} - 1} = T(i_m, k(i_m))$, est divisible par $n$.

Si $p < q$, la somme de tous les termes de $a_{i_p}$ jusqu'à $a_{i_q - 1}$ est la somme des blocs
parcourus entre les sauts $p$ et $q$. Chaque bloc est divisible par $n$, donc
$$a_{i_p} + a_{i_p + 1} + \cdots + a_{i_q - 1} \quad \text{est divisible par } n. \qquad (1)$$

**Les tiroirs.** Les $n + 1$ entiers $i_1, i_2, \ldots, i_{n+1}$ n'ont que $n$ restes possibles
dans la division par $n$. Deux d'entre eux, $i_p$ et $i_q$ avec $p < q \leqslant n + 1$, ont donc
le même reste. Leur différence $i_q - i_p$ est un multiple de $n$, disons $i_q - i_p = m\,n$. On
a $m \geqslant 1$, car la suite des $i$ est strictement croissante. De plus, entre $i_p$ et $i_q$,
il y a $q - p \leqslant n$ sauts, chacun d'au plus $n - 1$, donc
$$m\,n = i_q - i_p \leqslant n(n - 1), \qquad \text{d'où} \qquad 1 \leqslant m \leqslant n - 1.$$

**La contradiction.** La somme $(1)$ compte $i_q - i_p = m\,n$ termes consécutifs autour du cercle :
cela fait exactement $m$ tours complets, et chaque $a_j$ y apparaît exactement $m$ fois. Elle vaut
donc $m\,S$.

Or $n$ est premier. Il ne divise pas $m$, car $1 \leqslant m \leqslant n - 1$, et il ne divise pas
$S$. Un nombre premier qui ne divise aucun de deux entiers ne divise pas leur produit (il
apparaîtrait sinon dans la décomposition en facteurs premiers de l'un des deux). Donc $n$ ne divise
pas $m\,S$, ce qui contredit $(1)$.

Il existe donc bien un départ $i$ qui convient : **tout nombre premier a la propriété.**

### Conclusion

Les entiers $n \geqslant 2$ cherchés sont **exactement les nombres premiers.**
