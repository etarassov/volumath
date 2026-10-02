---
id: "12654"
title: "La somme des restes de n"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [division-euclidienne, restes, nombres-premiers, diviseurs, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2022"
  reference: "2022-07_Enonce-Web-Test-4.pdf, exercice 3 (junior) ; corrigé 2022-04_Corrige-Web-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-4.pdf"
---

## Statement

Pour tout entier $n \geqslant 1$, on note $f_n$ la somme de tous les restes obtenus en divisant $n$ par les nombres $1, 2, \ldots, n$.

Par exemple, si l'on divise $5$ par $1$, $2$, $3$, $4$ et $5$, les restes obtenus sont $0$, $1$, $2$, $1$ et $0$, de sorte que $f_5 = 0 + 1 + 2 + 1 + 0 = 4$.

Trouver tous les entiers $n \geqslant 2$ tels que $f_n = f_{n-1} + n - 2$.

## Hints

1. Calcule $f_n$ pour $n$ allant de $1$ à $8$, et regarde pour quels $n$ l'égalité est vraie. Fais une conjecture.
2. Écris $f_n$ et $f_{n-1}$ l'un sous l'autre, en plaçant face à face les restes obtenus en divisant par le même nombre $i$.
3. Quand on passe de $n - 1$ à $n$, que devient le reste de la division par $i$ ? Il y a deux cas : le reste augmente de $1$, ou bien il retombe à $0$. Quand a-t-on le second cas ?
4. Écris $f_n - f_{n-1}$ comme $(n - 2)$ moins une somme de nombres positifs. Quels sont ces nombres ?

## Solution

On va montrer que **l'égalité est vraie exactement quand $n$ est un nombre premier.**

**Les notations.** Pour deux entiers $i$ et $b$ avec $1 \leqslant i \leqslant b$, on note $r_i(b)$ le reste de la division de $b$ par $i$. Ainsi
$$f_n = r_1(n) + r_2(n) + \cdots + r_n(n), \qquad f_{n-1} = r_1(n-1) + r_2(n-1) + \cdots + r_{n-1}(n-1).$$

**Étape 1 : on enlève les termes inutiles.** Le reste de la division par $1$ est toujours nul, et le reste de la division de $n$ par $n$ est nul aussi. On peut donc retirer ces termes, et l'on place face à face les termes qui restent :
$$f_n - f_{n-1} = [r_2(n) - r_2(n-1)] + [r_3(n) - r_3(n-1)] + \cdots + [r_{n-1}(n) - r_{n-1}(n-1)].$$
Il y a $n - 2$ crochets, un pour chaque $i$ de $2$ à $n - 1$. Pour $n = 2$, il n'y en a aucun, et $f_2 - f_1 = 0$.

**Étape 2 : comment change un reste quand on ajoute $1$.** Soit $i$ entre $2$ et $n - 1$. On écrit la division euclidienne de $n - 1$ par $i$ :
$$n - 1 = qi + r, \qquad \text{avec } 0 \leqslant r \leqslant i - 1.$$
Alors $n = qi + (r + 1)$. Deux cas se présentent.

- *Si $r \leqslant i - 2$*, alors $r + 1 \leqslant i - 1$, et $r + 1$ est le reste de la division de $n$ par $i$. Le crochet vaut $(r + 1) - r = 1$.
- *Si $r = i - 1$*, alors $n = qi + i = (q + 1)i$ : le nombre $i$ divise $n$, et le reste de $n$ est $0$. Le crochet vaut $0 - (i - 1) = 1 - i$.

Le second cas se produit exactement quand $i$ divise $n$. Autrement dit, le crochet numéro $i$ vaut $1$ si $i$ ne divise pas $n$, et $1 - i$ si $i$ divise $n$.

Par exemple, avec $n = 6$ et $i = 3$ : le reste de $5$ par $3$ est $2$, celui de $6$ par $3$ est $0$, et le crochet vaut $-2 = 1 - 3$.

**Étape 3 : la formule.** Chaque crochet vaut $1$, sauf quand $i$ divise $n$ : il vaut alors $1 - i$, c'est-à-dire $1$ diminué de $i$. En ajoutant les $n - 2$ crochets, on obtient
$$f_n - f_{n-1} = (n - 2) - D_n,$$
où $D_n$ est la somme des diviseurs $i$ de $n$ tels que $2 \leqslant i \leqslant n - 1$. Si $n$ n'a pas de tel diviseur, $D_n = 0$.

**Étape 4 : la conclusion.** L'égalité $f_n = f_{n-1} + n - 2$ revient donc à $D_n = 0$. Or $D_n$ est une somme de nombres au moins égaux à $2$ : elle est nulle si et seulement si elle ne contient aucun terme, c'est-à-dire si $n$ n'a aucun diviseur entre $2$ et $n - 1$. Pour un entier $n \geqslant 2$, cela veut dire exactement que $n$ est premier.

**Conclusion.** **L'égalité $f_n = f_{n-1} + n - 2$ est vraie si et seulement si $n$ est un nombre premier.**

Pour vérifier : $f_6 = 0 + 0 + 0 + 2 + 1 + 0 = 3$ et $f_7 = 0 + 1 + 1 + 3 + 2 + 1 + 0 = 8$, donc $f_7 = f_6 + 5$, et $7$ est premier. En revanche $f_5 = 4$ et $f_6 = 3$, alors que $f_5 + 6 - 2 = 8$ : l'égalité est fausse pour $n = 6$, et l'on a bien $D_6 = 2 + 3 = 5 = 8 - 3$.

## Going further

- La formule de l'étape 3 permet de calculer $f_n$ de proche en proche. Par exemple $f_{12} - f_{11} = 10 - (2 + 3 + 4 + 6) = -5$ : la somme des restes peut diminuer quand $n$ augmente.
- Le commentaire des correcteurs note que beaucoup d'élèves ont constaté sur des exemples le comportement des restes, sans le démontrer. Il fallait aussi traiter les deux sens : montrer que l'égalité est vraie quand $n$ est premier, **et** qu'elle est fausse quand il ne l'est pas.
