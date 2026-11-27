---
id: "40562"
title: "Sommes de cubes impairs : tous les restes modulo 288"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [cubes, restes, division-euclidienne, congruences, progression-arithmetique, construction, encadrement]
adapted_from: null
see_also: ["40561", "40563"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2016, mathématiques, série S"
  reference: "cg-2016-s-sujet.pdf, problème I « Sommes de cubes », questions 3 et 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2016-s-sujet.pdf"
---

## Statement

On note $S_1$ l'ensemble des entiers strictement positifs qui peuvent s'écrire comme une somme de
cubes d'entiers **impairs** strictement positifs, deux à deux distincts. La somme peut n'avoir qu'un
seul terme. Par exemple, $125 = 5^3$ et $2568 = 1^3 + 3^3 + 7^3 + 13^3$ appartiennent à $S_1$.

Si $t$, $u$ et $v$ sont des entiers, on écrit $t \equiv u \pmod{v}$ lorsque $v$ divise $u - t$.
Pour des entiers positifs, cela veut dire que $t$ et $u$ ont le même reste dans la division
euclidienne par $v$.

1. Montrer qu'il existe $288$ entiers $s_1, s_2, \ldots, s_{288}$ appartenant à $S_1$ tels que
   $s_i \equiv i \pmod{288}$ pour tout entier $i$ de $1$ à $288$.

Dans la suite, on fixe de tels entiers $s_1, \ldots, s_{288}$, et on note $m$ le plus grand
d'entre eux.

2. Soit $n$ un entier tel que $288n \geqslant m$, et soit $u_1, u_2, \ldots, u_n$ des entiers
   positifs ou nuls *en progression arithmétique de raison $288$*, c'est-à-dire tels que
   $u_{j+1} - u_j = 288$ pour tout entier $j$ tel que $1 \leqslant j < n$.

   Montrer que tout entier $N$ tel que $m + u_1 \leqslant N \leqslant 288n + u_1$ peut s'écrire
   sous la forme $N = s_i + u_j$, avec $1 \leqslant i \leqslant 288$ et $1 \leqslant j \leqslant n$.

## Hints

1. **Question 1.** Chercher des entiers impairs dont le cube a pour reste $1$ dans la division par
   $288$. Le nombre $1$ en est un. Essayer ensuite $289 = 288 + 1$.
2. **Question 1.** Développer $(288t + 1)^3$. Que peut-on dire du cube de tout entier de la forme
   $288t + 1$ ?
3. **Question 1.** Pour obtenir une somme de reste $i$, additionner $i$ cubes de cette forme, tous
   différents.
4. **Question 2.** Vérifier d'abord que $u_j = u_1 + 288(j - 1)$. Il suffit donc de trouver un
   indice $i$ et un entier $q$ compris entre $0$ et $n - 1$ tels que $N = s_i + u_1 + 288q$.
5. **Question 2.** Choisir $i$ d'après le reste de $N - u_1$ dans la division par $288$. Puis
   encadrer $N - u_1 - s_i$ en utilisant $1 \leqslant s_i \leqslant m$.

## Solution

**1.** *Des cubes de reste 1.* Pour tout nombre $A$, en développant,
$$(A+1)^3 = (A+1)^2(A+1) = (A^2 + 2A + 1)(A + 1) = A^3 + 3A^2 + 3A + 1.$$
Soit $t$ un entier positif ou nul. Le nombre $a = 288t + 1$ est impair, et avec $A = 288t$,
$$a^3 = (288t)^3 + 3 \times (288t)^2 + 3 \times 288t + 1 = 288 \times \left(288^2 t^3 + 3 \times 288\, t^2 + 3t\right) + 1.$$
Donc $a^3 - 1$ est un multiple de $288$ : le cube de tout entier de la forme $288t + 1$ a pour reste
$1$ dans la division par $288$.

*Construction.* Pour $i$ de $1$ à $288$, posons
$$s_i = 1^3 + 289^3 + 577^3 + \cdots + \left(288(i-1) + 1\right)^3,$$
la somme des cubes des $i$ entiers $288t + 1$ pour $t = 0, 1, \ldots, i - 1$. Ces entiers sont impairs,
strictement positifs et deux à deux distincts, donc $s_i$ appartient à $S_1$. De plus
$$s_i - i = \left(1^3 - 1\right) + \left(289^3 - 1\right) + \cdots + \left(\left(288(i-1)+1\right)^3 - 1\right)$$
est une somme de $i$ multiples de $288$, donc un multiple de $288$.

**Conclusion :** ces entiers $s_1, \ldots, s_{288}$ appartiennent à $S_1$ et vérifient
$s_i \equiv i \pmod{288}$.

**2.** *Les termes de la progression.* En ajoutant $288$ à chaque pas, on obtient
$u_2 = u_1 + 288$, $u_3 = u_1 + 2 \times 288$, et ainsi de suite :
$u_j = u_1 + 288(j - 1)$ pour $1 \leqslant j \leqslant n$.

*Choix de $i$.* Soit $N$ un entier tel que $m + u_1 \leqslant N \leqslant 288n + u_1$. Le nombre
$N - u_1$ est positif. Notons $r$ son reste dans la division euclidienne par $288$, avec
$0 \leqslant r \leqslant 287$. Posons $i = r$ si $r \geqslant 1$, et $i = 288$ si $r = 0$. Dans les
deux cas, $1 \leqslant i \leqslant 288$ et $N - u_1 - i$ est un multiple de $288$.

Comme $s_i - i$ est aussi un multiple de $288$, la différence
$$N - u_1 - s_i = \left(N - u_1 - i\right) - \left(s_i - i\right)$$
est un multiple de $288$. Écrivons $N - u_1 - s_i = 288q$, avec $q$ entier relatif.

*Encadrement de $q$.* D'une part, $s_i \leqslant m$ et $N - u_1 \geqslant m$, donc
$N - u_1 - s_i \geqslant m - m = 0$, et $q \geqslant 0$.
D'autre part, $N - u_1 \leqslant 288n$ et $s_i \geqslant 1$, donc $288q = N - u_1 - s_i \leqslant 288n - 1 < 288n$,
et $q < n$. Comme $q$ est entier, $0 \leqslant q \leqslant n - 1$.

*Écriture de $N$.* Posons $j = q + 1$ : alors $1 \leqslant j \leqslant n$ et $u_j = u_1 + 288q$, donc
$$N = s_i + u_1 + 288q = s_i + u_j.$$

**Conclusion :** tout entier $N$ compris entre $m + u_1$ et $288n + u_1$ s'écrit $s_i + u_j$ avec
$1 \leqslant i \leqslant 288$ et $1 \leqslant j \leqslant n$.

**Bilan.** Il existe $288$ sommes de cubes impairs distincts qui ont chacune un reste différent dans
la division par $288$. En les ajoutant aux termes d'une progression de raison $288$, on atteint
tous les entiers d'un intervalle, et cet intervalle est d'autant plus long que la progression est
longue.

## Going further

- Les nombres $s_i$ construits à la question 1 sont énormes : $s_{288}$ a $17$ chiffres. Pouvez-vous
  trouver, pour quelques restes $i$, une somme de cubes impairs distincts beaucoup plus petite qui
  a le reste $i$ dans la division par $288$ ?
- Dans la suite du sujet, les $u_j$ étaient des sommes de cubes **pairs** distincts
  (exercice 40561). Comme un cube pair et un cube impair ne sont jamais égaux, $s_i + u_j$ est
  alors une somme de cubes d'entiers tous distincts : c'est le point de départ de la preuve que tout
  entier assez grand est une somme de cubes d'entiers distincts (exercice 40563).
