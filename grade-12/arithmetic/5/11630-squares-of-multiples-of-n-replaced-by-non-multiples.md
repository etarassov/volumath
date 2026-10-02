---
id: "11630"
title: "Sommes de carrés de multiples de n"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [hors-programme, sommes de carres, theoreme des quatre carres, congruences, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2014-2015-envoi-6.pdf, Jour 2, exercices du groupe A, exercice 12 ; corrigé 2017-10_ofm-2014-2015-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-6.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 1$ qui ont la propriété suivante :

> tout entier strictement positif qui s'écrit comme somme des carrés de $n$ entiers multiples de $n$ peut aussi s'écrire comme somme des carrés de $n$ entiers dont aucun n'est multiple de $n$.

Les entiers peuvent être négatifs ou nuls, et peuvent se répéter. Par exemple, pour $n = 3$, le nombre $9 = 3^2 + 0^2 + 0^2$ est somme des carrés de trois multiples de $3$, et il s'écrit aussi $9 = 1^2 + 2^2 + 2^2$, où aucun des trois nombres n'est multiple de $3$.

## Hints

1. Commence par $n = 1$, puis $n = 2$. Pour $n = 2$, regarde les restes dans la division par $4$.
2. Pour $n = 4$, essaie le nombre $32 = 4^2 + 4^2 + 0^2 + 0^2$, et regarde les restes des carrés dans la division par $8$.
3. Montre que si un entier $n \geqslant 2$ a la propriété, alors $2n$ l'a aussi : partage les $2n$ carrés en deux paquets de $n$.
4. Pour $n$ impair, pose $X = 2(x_1 + x_2 + \cdots + x_n)$ et développe $(X - n x_1)^2 + \cdots + (X - n x_n)^2$.
5. Pour $n = 8$, utilise le théorème des quatre carrés de Lagrange : tout entier naturel est somme de quatre carrés.

## Solution

**Rappel.** Cette solution utilise un théorème qui n'est pas au programme du lycée, le **théorème des quatre carrés de Lagrange** (1770) : tout entier naturel est la somme des carrés de quatre entiers. Par exemple $7 = 2^2 + 1^2 + 1^2 + 1^2$ et $15 = 3^2 + 2^2 + 1^2 + 1^2$. Elle utilise aussi les congruences : $a \equiv b \pmod{8}$ veut dire que $a - b$ est un multiple de $8$, c'est-à-dire que $a$ et $b$ ont le même reste dans la division par $8$.

Disons qu'un entier $n \geqslant 1$ est **bon** s'il a la propriété de l'énoncé. Nous allons montrer que **tous les entiers sont bons, sauf $1$, $2$ et $4$.**

**Étape 1 : $1$ et $2$ ne sont pas bons.**

- Pour $n = 1$ : tout entier est multiple de $1$, donc aucun entier n'est « non multiple de $1$ ». Le nombre $1 = 1^2$ est le carré d'un multiple de $1$, mais il ne s'écrit pas comme carré d'un non-multiple de $1$.
- Pour $n = 2$ : le nombre $4 = 2^2 + 0^2$ est somme des carrés de deux nombres pairs. S'il s'écrivait $x^2 + y^2$ avec $x$ et $y$ impairs, alors, comme le carré d'un nombre impair $2m + 1$ vaut $4m(m+1) + 1$, on aurait $x^2 + y^2 = 4(\ldots) + 2$, qui n'est pas un multiple de $4$. Contradiction.

**Étape 2 : les carrés modulo $8$.** Si $x$ est impair, $x^2 = 4m(m+1) + 1$, et $m(m+1)$ est pair, donc $x^2 \equiv 1 \pmod{8}$. Si $x = 2y$ avec $y$ impair, $x^2 = 4y^2 \equiv 4 \pmod 8$. Si $x$ est multiple de $4$, $x^2 \equiv 0 \pmod{8}$. Un carré est donc congru à $0$, $1$ ou $4$ modulo $8$, et il est congru à $0$ exactement quand le nombre est multiple de $4$.

**Étape 3 : $4$ n'est pas bon.** Le nombre $32 = 4^2 + 4^2 + 0^2 + 0^2$ est somme des carrés de quatre multiples de $4$. Supposons que $32 = x_1^2 + x_2^2 + x_3^2 + x_4^2$ avec aucun $x_i$ multiple de $4$. D'après l'étape 2, chaque $x_i^2$ est congru à $1$ ou à $4$ modulo $8$. Si $j$ d'entre eux sont congrus à $1$ et $4 - j$ à $4$, la somme est congrue à $j + 4(4 - j) = 16 - 3j$. Pour $j = 0, 1, 2, 3, 4$, on trouve $16, 13, 10, 7, 4$, soit modulo $8$ : $0, 5, 2, 7, 4$. Comme $32 \equiv 0$, il faut $j = 0$ : chaque $x_i$ est de la forme $2 \times (\text{impair})$. Or $|x_i| \leqslant 5$, puisque $6^2 > 32$, donc $|x_i| = 2$ pour tout $i$, et la somme vaut $16 \neq 32$. Contradiction.

**Étape 4 : tout entier impair $n \geqslant 3$ est bon.** Commençons par un lemme.

*Lemme.* Soit $n$ impair, et $x_1, \ldots, x_n$ des entiers dont l'un au moins n'est pas multiple de $n$. Alors il existe des entiers $y_1, \ldots, y_n$, aucun multiple de $n$, tels que

$$(n x_1)^2 + \cdots + (n x_n)^2 = y_1^2 + \cdots + y_n^2.$$

*Preuve.* Disons que $x_1$ n'est pas multiple de $n$. Posons $X = 2(x_1 + \cdots + x_n)$.

D'abord, on peut supposer que $X$ n'est pas multiple de $n$. Sinon, on remplace $x_1$ par $-x_1$, ce qui ne change pas $(n x_1)^2$. La nouvelle valeur est $X' = X - 4x_1$. Si $n$ divisait $X'$, il diviserait $X - X' = 4x_1$. Comme $n$ est impair, aucun facteur premier de $n$ n'est un facteur de $4$, donc tous les facteurs premiers de $n$ (avec leur nombre) se retrouvent dans $x_1$, et $n$ diviserait $x_1$ : c'est faux. Donc $n$ ne divise pas $X'$.

Posons maintenant $y_i = X - n x_i$. En développant, et en utilisant $x_1 + \cdots + x_n = X/2$ :

$$\sum_{i=1}^{n} (X - n x_i)^2 = n X^2 - 2nX \sum_{i=1}^{n} x_i + n^2 \sum_{i=1}^{n} x_i^2 = nX^2 - nX^2 + \sum_{i=1}^{n} (n x_i)^2.$$

C'est bien la somme voulue. Enfin $y_i = X - n x_i$ n'est pas multiple de $n$, sinon $X = y_i + n x_i$ le serait. Le lemme est démontré.

Par exemple, pour $n = 3$ et $(x_1, x_2, x_3) = (1, 0, 0)$, on a $X = 2$ et $(y_1, y_2, y_3) = (-1, 2, 2)$ : c'est l'égalité $3^2 = 1^2 + 2^2 + 2^2$ de l'énoncé.

*Conclusion de l'étape.* Soit $n \geqslant 3$ impair, et $A > 0$ une somme $z_1^2 + \cdots + z_n^2$ où chaque $z_i$ est multiple de $n$. Les $z_i$ ne sont pas tous nuls. Soit $n^r$ la plus grande puissance de $n$ qui divise tous les $z_i$ (on a $r \geqslant 1$). On écrit $z_i = n^r x_i$, où les $x_i$ ne sont pas tous multiples de $n$. Le lemme donne des $y_i$, non multiples de $n$, avec

$$A = n^{2(r-1)} \sum_{i=1}^{n} (n x_i)^2 = \sum_{i=1}^{n} \left(n^{r-1} y_i\right)^2.$$

Si $r = 1$, c'est terminé. Sinon, on recommence avec les $y_i$ à la place des $x_i$ : ils ne sont pas multiples de $n$, donc le lemme s'applique encore, et l'exposant de $n$ baisse de $1$. Après $r$ étapes, on a écrit $A$ comme somme des carrés de $n$ entiers non multiples de $n$. Donc $n$ est bon.

**Étape 5 : si $n \geqslant 2$ est bon, alors $2n$ est bon.** Posons $m = 2n$, et soit $A > 0$ une somme $x_1^2 + \cdots + x_m^2$ avec chaque $x_i$ multiple de $m$, donc aussi de $n$.

- *Si au moins deux des $x_i$ ne sont pas nuls*, on les range de sorte que $x_1 \neq 0$ et $x_m \neq 0$. Le paquet $x_1, \ldots, x_n$ est formé de $n$ multiples de $n$, et la somme de leurs carrés est strictement positive. Comme $n$ est bon, cette somme est aussi la somme des carrés de $n$ entiers non multiples de $n$, et donc non multiples de $m$. On fait de même avec le paquet $x_{n+1}, \ldots, x_m$. En réunissant les deux paquets, $A$ est la somme des carrés de $m$ entiers non multiples de $m$.
- *Si un seul $x_i$ n'est pas nul*, disons $x_1$, on écrit $x_1 = 2a$, où $a$ est multiple de $n$ et non nul. Alors $x_1^2 = 4a^2 = a^2 + a^2 + a^2 + a^2$. Comme $n \geqslant 2$, on peut mettre deux $a$ dans le premier paquet et deux dans le second (et des $0$ ailleurs), puis raisonner comme ci-dessus.

**Étape 6 : $8$ est bon.** Soit $A > 0$ une somme de $8$ carrés de multiples de $8$. Chacun de ces carrés est multiple de $64$, donc $A$ est un multiple de $64$, et $A \geqslant 64$. Le nombre $A - 49$ est un entier naturel. D'après le théorème de Lagrange, il s'écrit $x_1^2 + x_2^2 + x_3^2 + x_4^2$, d'où

$$A = 1^2 + 4^2 + 4^2 + 4^2 + x_1^2 + x_2^2 + x_3^2 + x_4^2.$$

Les nombres $1, 4, 4, 4$ ne sont pas multiples de $8$. Pour les $x_i$ : comme $A \equiv 0$ et $49 \equiv 1 \pmod 8$, on a $x_1^2 + x_2^2 + x_3^2 + x_4^2 \equiv -1 \equiv 7 \pmod 8$. Chaque $x_i^2$ vaut $0$, $1$ ou $4$ modulo $8$. Pour obtenir une somme impaire, il faut un nombre impair de termes égaux à $1$ : avec un seul, la somme vaut $1 + 4k$ (où $k$ est le nombre de termes égaux à $4$), jamais $7$ modulo $8$ ; avec trois, le quatrième terme doit valoir $4$. Les quatre carrés sont donc congrus à $1, 1, 1, 4$ dans un certain ordre. Aucun n'est congru à $0$, donc d'après l'étape 2 aucun $x_i$ n'est multiple de $4$, a fortiori de $8$. Donc $8$ est bon.

**Étape 7 : conclusion.** Écrivons $n = 2^j m$ avec $m$ impair.

- Si $m \geqslant 3$, alors $m$ est bon (étape 4), puis $2m$, $4m$, …, $2^j m$ le sont aussi (étape 5).
- Si $m = 1$, $n$ est une puissance de $2$. Les nombres $1$, $2$ et $4$ ne sont pas bons (étapes 1 et 3). Le nombre $8$ est bon (étape 6), donc $16$, $32$, $64$, … le sont aussi (étape 5).

**Conclusion : les entiers qui ont la propriété sont tous les entiers $n \geqslant 1$ sauf $1$, $2$ et $4$.**
