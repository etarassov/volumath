---
id: "8208"
title: "On ajoute sans cesse le plus grand diviseur"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [diviseurs, suites, parite, puissances-de-3, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés aux élèves de lycée, exercice 7 (l'énoncé imprimé dit u_1 > 0 ; il faut u_1 ⩾ 2, sans quoi le terme suivant n'est pas défini)"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Pour un entier $m \ge 2$, on note $d(m)$ le **plus grand diviseur de $m$ autre que $m$ lui-même**. Par exemple $d(12) = 6$, $d(15) = 5$, $d(7) = 1$.

On construit une suite d'entiers $(u_n)$ de la façon suivante : on choisit un entier de départ $u_1 \ge 2$, puis, pour tout $n \ge 1$,

$$u_{n+1} = u_n + d(u_n) .$$

Par exemple, si $u_n = 12$, alors $u_{n+1} = 12 + 6 = 18$.

Montrer qu'il existe un rang $N$ tel que, pour tout $n > N$, l'entier $u_n$ est divisible par $3^{2019}$.

## Hints

1. Avant tout, comprends bien $d(m)$. Si $q$ est un diviseur de $m$ avec $q > 1$, alors $m/q$ est un diviseur de $m$ autre que $m$. Quel $q$ faut-il prendre pour que $m/q$ soit le plus grand possible ?
2. Tu dois trouver que $d(m) = m/p$, où $p$ est le **plus petit facteur premier** de $m$. Écris alors la règle de la suite dans les deux cas : $u_n$ pair, puis $u_n$ impair.
3. Quand $u_n$ est pair, $u_{n+1}$ s'écrit très simplement. Que peux-tu dire de sa divisibilité par $3$ ?
4. Quand $u_n$ est impair, $d(u_n)$ est impair aussi (pourquoi ?). Quelle est donc la parité de $u_{n+1}$ ?
5. Ces deux remarques suffisent pour trouver un terme divisible par $3$. Puis, en partant d'un terme pair divisible par $3$, on peut le rendre impair en quelques pas. Combien ?
6. Une fois qu'un terme $v$ est **impair et divisible par 3**, son plus petit facteur premier est forcément $3$. Calcule alors les trois termes suivants : $v$, puis, puis, puis... tu vas retomber sur un nombre de la même forme.
7. Compare ce nouveau nombre à $v$. Que s'est-il passé pour la puissance de $3$ en trois étapes ?

## Solution

**Ce que vaut $d(m)$.**

Les diviseurs de $m$ autres que $m$ sont exactement les nombres $m/q$, où $q$ est un diviseur de $m$ avec $q > 1$. Pour rendre $m/q$ le plus grand possible, il faut prendre $q$ le plus petit possible, et le plus petit diviseur $> 1$ d'un entier est toujours un nombre **premier**. Donc

$$d(m) = \frac{m}{p}, \qquad \text{où } p \text{ est le plus petit facteur premier de } m .$$

On en tire les deux règles qui gouvernent la suite.

- **Règle paire.** Si $u$ est pair, son plus petit facteur premier est $2$, donc $d(u) = u/2$ et

$$u \ \longmapsto\ u + \frac{u}{2} = \frac{3u}{2} .$$

- **Règle impaire.** Si $u$ est impair, tous ses diviseurs sont impairs, donc $d(u)$ est impair, et $u + d(u)$ est la somme de deux impairs : **elle est paire**.

**Étape 1 : un terme divisible par $3$ apparaît.**

Si $u_1$ est impair, alors $u_2$ est pair (règle impaire). Si $u_1$ est pair, $u_2$ l'est peut-être ou non, mais dans tous les cas il existe un rang où le terme est pair : au plus tard $u_2$.

Or, dès qu'un terme $u_n$ est pair, la règle paire donne $u_{n+1} = \dfrac{3u_n}{2} = 3 \times \dfrac{u_n}{2}$, qui est **divisible par $3$**.

Il existe donc un rang $N_1$ tel que $3 \mid u_{N_1}$.

**Étape 2 : un terme impair divisible par $3$ apparaît.**

Écrivons $u_{N_1} = 2^{\alpha} \, w$ avec $w$ impair et $\alpha \ge 0$.

Si $\alpha = 0$, le terme est déjà impair et on a fini cette étape.

Si $\alpha \ge 1$, le terme est pair, et la règle paire donne $u_{N_1 + 1} = \dfrac{3 u_{N_1}}{2} = 3 \times 2^{\alpha - 1} w$ : la puissance de $2$ a baissé de $1$ et la divisibilité par $3$ est conservée. En répétant $\alpha$ fois,

$$u_{N_1 + \alpha} = 3^{\alpha} \, w ,$$

qui est **impair** (produit de deux impairs) et divisible par $3$ dès que $\alpha \ge 1$.

Dans tous les cas, il existe un rang $M$ tel que $u_M$ soit impair et divisible par $3$. Notons $v = u_M$.

**Étape 3 : le cycle de longueur $3$.**

Soit $v$ un terme impair divisible par $3$. Son plus petit facteur premier est $3$ : en effet $v$ est impair, donc ce facteur est $\ge 3$, et $3$ divise $v$.

Calculons les trois termes suivants.

*Premier pas.* $d(v) = v/3$, donc

$$v \ \longmapsto\ v + \frac{v}{3} = \frac{4v}{3} .$$

Le nombre $v/3$ est impair (c'est un diviseur de $v$ impair), donc $\dfrac{4v}{3} = 4 \times \dfrac{v}{3}$ est pair, et sa puissance de $2$ vaut exactement $2$.

*Deuxième pas.* Ce terme est pair, donc la règle paire s'applique :

$$\frac{4v}{3} \ \longmapsto\ \frac{3}{2} \times \frac{4v}{3} = 2v .$$

Ce nombre est pair, et comme $v$ est impair, sa puissance de $2$ vaut exactement $1$.

*Troisième pas.* Encore pair, donc

$$2v \ \longmapsto\ \frac{3}{2} \times 2v = 3v ,$$

qui est **impair** (produit de deux impairs) et divisible par $3$.

Autrement dit, en partant d'un nombre impair divisible par $3$, on parcourt le cycle

$$v \ \to\ \frac{4v}{3} \ \to\ 2v \ \to\ 3v ,$$

et le quatrième terme, $3v$, est à nouveau impair et divisible par $3$ : la même chose recommence, avec $v$ remplacé par $3v$.

**Étape 4 : la puissance de $3$ grandit.**

Notons, pour un entier $t$, $v_3(t)$ l'exposant de $3$ dans sa décomposition en facteurs premiers.

Par récurrence, l'étape 3 donne, pour tout $j \ge 0$,

$$u_{M + 3j} = 3^{\,j} \, v ,$$

et à l'intérieur du bloc $j$, les trois termes sont

$$3^{\,j} v, \qquad 4 \times 3^{\,j-1} v, \qquad 2 \times 3^{\,j} v .$$

Leurs exposants de $3$ valent respectivement

$$j + v_3(v), \qquad j - 1 + v_3(v), \qquad j + v_3(v) .$$

Comme $v$ est divisible par $3$, on a $v_3(v) \ge 1$, donc **tous** les termes du bloc $j$ vérifient

$$v_3(u_n) \ \ge\ j .$$

**Conclusion.**

Posons $N = M + 3 \times 2019$. À partir de ce rang, on est dans le bloc $j = 2019$ ou au-delà, donc tout terme $u_n$ avec $n \ge N$ vérifie $v_3(u_n) \ge 2019$, c'est-à-dire

$$\boxed{3^{2019} \mid u_n \quad \text{pour tout } n \ge N .}$$

**Un exemple pour fixer les idées.** Partons de $u_1 = 10$ :

$$10 \to 15 \to 20 \to 30 \to 45 \to 60 \to 90 \to 135 \to 180 \to 270 \to 405 \to \cdots$$

On reconnaît le cycle de l'étape 3 à partir de $15$, qui est impair et divisible par $3$ : le premier bloc est $15 \to 20 \to 30$, le deuxième $45 \to 60 \to 90$, le troisième $135 \to 180 \to 270$, et ainsi de suite.

Les exposants de $3$ des termes successifs valent

$$0,\ \underbrace{1,\ 0,\ 1}_{\text{bloc } j=0},\ \underbrace{2,\ 1,\ 2}_{\text{bloc } j=1},\ \underbrace{3,\ 2,\ 3}_{\text{bloc } j=2},\ 4,\ \ldots$$

On voit bien le mouvement : à l'intérieur d'un bloc l'exposant redescend d'un cran au milieu, mais d'un bloc au suivant il gagne $1$. Le minimum sur chaque bloc monte donc indéfiniment, et c'est tout ce dont on a besoin.

## Going further

La suite ci-dessus ne devient divisible par $3^{2019}$ qu'au bout d'un très grand nombre d'étapes. Combien exactement, en partant de $u_1 = 10$ ? Et quel entier de départ $u_1$ faudrait-il choisir pour que **tous** les termes de la suite, dès le premier, soient divisibles par $3^{2019}$ ?
