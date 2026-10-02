---
id: "12209"
title: "Les moyennes qui dépassent α"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [moyenne, maximum, intervalles, recouvrement, algorithme glouton, inegalite, denombrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2015"
  reference: "2017-10_ofm-2014-2015-test-janvier.pdf, exercices du groupe A, exercice 6 ; corrigé 2017-10_ofm-2014-2015-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-janvier.pdf"
---

## Statement

Soit $a_1, a_2, \ldots, a_n$ des entiers strictement positifs. Pour chaque $k = 1, 2, \ldots, n$, on regarde les moyennes des « derniers termes » qui s'arrêtent à $a_k$ :

$$a_k, \qquad \frac{a_{k-1} + a_k}{2}, \qquad \frac{a_{k-2} + a_{k-1} + a_k}{3}, \qquad \ldots, \qquad \frac{a_1 + a_2 + \cdots + a_k}{k},$$

et on note $m_k$ la plus grande de ces $k$ moyennes. Autrement dit,

$$m_k = \max_{1 \leqslant \ell \leqslant k} \frac{a_{k-\ell+1} + a_{k-\ell+2} + \cdots + a_k}{\ell}.$$

Par exemple, pour la suite $1, 5, 1, 1$, on trouve $m_1 = 1$, $m_2 = 5$, $m_3 = 3$ (moyenne de $5$ et $1$) et $m_4 = \frac{7}{3}$ (moyenne de $5$, $1$ et $1$).

Montrer que, pour tout réel $\alpha > 0$, le nombre d'entiers $k$ tels que $m_k > \alpha$ est strictement plus petit que

$$\frac{a_1 + a_2 + \cdots + a_n}{\alpha}.$$

## Hints

1. Dire que $m_k > \alpha$, c'est dire qu'il existe un bloc de termes consécutifs qui se termine en $a_k$ et dont la moyenne dépasse $\alpha$. Sur un tel bloc de longueur $\ell$, la somme dépasse $\ell\,\alpha$.
2. Commence par le plus grand $k$ tel que $m_k > \alpha$, et prends un bloc qui marche pour lui. Que dire des autres indices de ce bloc ?
3. Recommence avec le plus grand indice $k$ situé **avant** ce bloc et tel que $m_k > \alpha$. Tu obtiens des blocs qui ne se chevauchent pas.
4. Compare le nombre d'indices cherchés à la somme des longueurs des blocs, puis à la somme des termes des blocs.

## Solution

Notons $S = a_1 + a_2 + \cdots + a_n$, et appelons **bon** un indice $k$ tel que $m_k > \alpha$. On appelle **bloc** une suite d'indices consécutifs $\{i, i+1, \ldots, j\}$, de longueur $j - i + 1$.

**Étape 0. Ce que veut dire « $k$ est bon ».**

L'indice $k$ est bon exactement quand il existe une longueur $\ell$, avec $1 \leqslant \ell \leqslant k$, telle que

$$\frac{a_{k-\ell+1} + \cdots + a_k}{\ell} > \alpha, \qquad \text{c'est-à-dire} \qquad a_{k-\ell+1} + \cdots + a_k > \ell\,\alpha.$$

Autrement dit, il existe un bloc qui **se termine en $k$** et dont la somme des termes dépasse $\alpha$ fois sa longueur.

**Étape 1. Si aucun indice n'est bon.** Le nombre d'indices bons est $0$, et $0 < \dfrac{S}{\alpha}$ car $S > 0$. C'est terminé. On suppose maintenant qu'il y a au moins un indice bon.

**Étape 2. On choisit des blocs, de la droite vers la gauche.**

- Soit $k_1$ le plus grand indice bon. On choisit un bloc $I_1$ qui se termine en $k_1$, de longueur $\ell_1$, et dont la somme dépasse $\ell_1 \alpha$. Il commence à l'indice $k_1 - \ell_1 + 1$.
- S'il reste des indices bons avant $I_1$, c'est-à-dire au plus égaux à $k_1 - \ell_1$, soit $k_2$ le plus grand d'entre eux. On choisit un bloc $I_2$ qui se termine en $k_2$, de longueur $\ell_2$, dont la somme dépasse $\ell_2 \alpha$.
- On continue ainsi tant qu'il reste des indices bons avant le dernier bloc choisi.

Les indices $k_1 > k_2 > \cdots$ diminuent, donc on s'arrête au bout d'un certain nombre $r$ de blocs $I_1, I_2, \ldots, I_r$.

**Étape 3. Les blocs ne se chevauchent pas, et ils contiennent tous les indices bons.**

Chaque bloc $I_{j+1}$ se termine en $k_{j+1} \leqslant k_j - \ell_j$, donc il est entièrement situé avant le début de $I_j$. Les blocs sont donc deux à deux disjoints.

Prenons un indice bon $k$. Il est au plus égal à $k_1$. Si $k$ n'est pas dans $I_1$, il est avant $I_1$, donc il a été pris en compte au moment de choisir $k_2$ : on a $k \leqslant k_2$. S'il n'est pas non plus dans $I_2$, il est avant $I_2$, et ainsi de suite. Comme la construction ne s'arrête que lorsqu'il ne reste plus d'indice bon avant le dernier bloc, $k$ finit par tomber dans l'un des blocs.

**Étape 4. Le décompte.**

Les indices bons sont tous dans la réunion des blocs, et les blocs sont disjoints, donc

$$\text{(nombre d'indices bons)} \leqslant \ell_1 + \ell_2 + \cdots + \ell_r.$$

Pour chaque bloc, $\ell_j\,\alpha$ est strictement plus petit que la somme $T_j$ des termes du bloc, donc $\ell_j < \dfrac{T_j}{\alpha}$. En additionnant ces $r \geqslant 1$ inégalités strictes :

$$\ell_1 + \cdots + \ell_r < \frac{T_1 + T_2 + \cdots + T_r}{\alpha}.$$

Enfin, comme les blocs sont disjoints, $T_1 + \cdots + T_r$ est une somme de certains des termes $a_i$, chacun pris au plus une fois. Les $a_i$ étant positifs, cette somme est au plus égale à $S$.

**Conclusion.** Le nombre d'indices $k$ tels que $m_k > \alpha$ est strictement plus petit que $\dfrac{a_1 + a_2 + \cdots + a_n}{\alpha}$.

## Going further

Dans l'exemple $1, 5, 1, 1$ avec $\alpha = 2$, les indices bons sont $2$, $3$ et $4$. Le premier bloc choisi est $\{2, 3, 4\}$, de somme $7 > 3 \times 2$, et il les contient tous. L'inégalité dit $3 < \frac{8}{2} = 4$.

Le fait que les $a_i$ soient des entiers ne sert pas : la preuve marche pour des réels strictement positifs. Cette inégalité est une version discrète de l'**inégalité maximale de Hardy et Littlewood**, un outil important en analyse.

Le corrigé officiel donne la même construction, mais ne traite pas le cas où aucun indice n'est bon : sa chaîne d'inégalités devient alors $0 < 0$. C'est pour cela que la solution ci-dessus traite ce cas à part.
