---
id: "12632"
title: "f(xy) = f(x) + f(y) et f(k) = f(n − k)"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [equation-fonctionnelle, nombres-premiers, decomposition-en-facteurs-premiers, principe-des-tiroirs, valuation, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 12 mai 2021"
  reference: "2021-12_Sujet-test-5-2021.pdf, exercice 7 (senior) ; corrigé 2021-05_Corrige-Web-Test-5.pdf (le corrigé définit un entier joli par « pour tout entier k ⩽ 1 », il faut lire 1 ⩽ k ⩽ n − 1 ; la fin utilise le petit théorème de Fermat, remplacé ici par le principe des tiroirs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Sujet-test-5-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Sujet-test-5-2021.pdf"
---

## Statement

On note $\mathbb{N}_{\geqslant 0}$ l'ensemble des entiers supérieurs ou égaux à 0, et $\mathbb{N}_{\geqslant 1}$ l'ensemble des entiers supérieurs ou égaux à 1.

Trouver toutes les fonctions $f : \mathbb{N}_{\geqslant 1} \to \mathbb{N}_{\geqslant 0}$ qui vérifient les deux conditions suivantes :

1. $f(xy) = f(x) + f(y)$ pour tous les entiers $x \geqslant 1$ et $y \geqslant 1$ ;
2. il existe une infinité d'entiers $n \geqslant 1$ tels que l'égalité $f(k) = f(n - k)$ soit vraie pour tout entier $k$ tel que $1 \leqslant k \leqslant n - 1$.

## Hints

1. Calcule $f(1)$. Explique ensuite pourquoi $f$ est entièrement connue dès que l'on connaît ses valeurs sur les nombres premiers.
2. La fonction nulle convient. Cherche d'autres solutions : pense à l'exposant d'un nombre premier $p$ dans la décomposition de $n$ en facteurs premiers.
3. Appelle *joli* un entier $n$ tel que $f(k) = f(n - k)$ pour $1 \leqslant k \leqslant n - 1$. Montre qu'un diviseur d'un nombre joli est encore joli.
4. Si $f$ n'est pas nulle, soit $p$ le plus petit entier tel que $f(p) > 0$. Montre que $p$ est premier, puis que tout nombre joli supérieur ou égal à $p$ est un multiple de $p$. Déduis-en que toutes les puissances de $p$ sont jolies.
5. Soit $q$ un nombre premier différent de $p$. Parmi les restes de $p^0, p^1, \ldots, p^q$ dans la division par $q$, deux sont égaux. Trouve ainsi un exposant $e \geqslant 1$ tel que $q$ divise $p^e - 1$, et utilise $k = 1$ avec le nombre joli $p^e$.

## Solution

Pour un nombre premier $p$ et un entier $n \geqslant 1$, on note $v_p(n)$ l'exposant de $p$ dans la décomposition de $n$ en facteurs premiers. Par exemple $v_2(40) = 3$ car $40 = 2^3 \times 5$, et $v_3(40) = 0$. On dit que $v_p(n)$ est la *valuation $p$-adique* de $n$.

On va montrer que **les solutions sont les fonctions $f(n) = c \, v_p(n)$, où $p$ est un nombre premier et $c \geqslant 0$ un entier.** Pour $c = 0$, c'est la fonction nulle.

On utilise librement l'existence et l'unicité de la décomposition en facteurs premiers. Par exemple, si un nombre premier $q$ divise un produit $ab$, il apparaît dans la décomposition de $ab$, donc dans celle de $a$ ou dans celle de $b$ : il divise $a$ ou $b$.

**Ces fonctions conviennent.** Soit $f(n) = c \, v_p(n)$. En multipliant les décompositions de $x$ et de $y$, on additionne les exposants, donc $v_p(xy) = v_p(x) + v_p(y)$, et la condition 1 est vraie.

Pour la condition 2, on montre que tout entier $n = p^e$ avec $e \geqslant 1$ convient. Soit $k$ tel que $1 \leqslant k \leqslant p^e - 1$, et soit $v = v_p(k)$. Comme $k < p^e$, on a $v < e$. On écrit $k = p^v k'$, où $p$ ne divise pas $k'$. Alors
$$p^e - k = p^v \left(p^{e - v} - k'\right).$$
Le nombre $p^{e-v}$ est un multiple de $p$ car $e - v \geqslant 1$, et $k'$ n'en est pas un, donc $p^{e-v} - k'$ n'est pas un multiple de $p$. Ainsi $v_p(p^e - k) = v = v_p(k)$, d'où $f(k) = f(p^e - k)$. Il y a une infinité de puissances $p^e$, donc la condition 2 est vraie.

**Il n'y a pas d'autre solution.** Soit $f$ une solution.

**Étape 1 : $f(1) = 0$, et $f$ est connue sur les nombres premiers.** Avec $x = y = 1$, la condition 1 donne $f(1) = 2 f(1)$, donc $f(1) = 0$. En appliquant plusieurs fois la condition 1, si $n = p_1^{a_1} p_2^{a_2} \cdots p_r^{a_r}$ est la décomposition de $n$, alors
$$f(n) = a_1 f(p_1) + a_2 f(p_2) + \cdots + a_r f(p_r).$$
Si $f$ est la fonction nulle, c'est la solution $c = 0$. On suppose désormais que $f$ n'est pas nulle. Il suffit alors de montrer que $f$ est nulle sur tous les nombres premiers sauf un, $p$ : en posant $c = f(p)$, la formule donne $f(n) = c \, v_p(n)$.

**Étape 2 : les nombres jolis.** On dit qu'un entier $n \geqslant 1$ est *joli* si $f(k) = f(n - k)$ pour tout entier $k$ tel que $1 \leqslant k \leqslant n - 1$. La condition 2 dit qu'il existe une infinité de nombres jolis.

*Un diviseur d'un nombre joli est joli.* Soit $n$ joli et $d$ un diviseur de $n$, avec $n = ad$. Pour $1 \leqslant k \leqslant d - 1$, on a $1 \leqslant ak \leqslant n - 1$, donc, puisque $n$ est joli,
$$f(a) + f(k) = f(ak) = f(n - ak) = f(a(d - k)) = f(a) + f(d - k).$$
On simplifie par $f(a)$ : $f(k) = f(d - k)$. Donc $d$ est joli.

**Étape 3 : le nombre premier $p$.** Comme $f$ n'est pas nulle, il existe des entiers $m$ tels que $f(m) > 0$. Soit $p$ le plus petit d'entre eux, et $c = f(p) > 0$. Comme $f(1) = 0$, on a $p \geqslant 2$. Si $p$ n'était pas premier, on écrirait $p = ab$ avec $1 < a < p$ et $1 < b < p$, et alors $f(p) = f(a) + f(b) = 0 + 0$ par minimalité de $p$, ce qui est faux. Donc $p$ est premier, et $f(r) = 0$ pour tout $r$ tel que $1 \leqslant r \leqslant p - 1$.

**Étape 4 : un nombre joli supérieur ou égal à $p$ est un multiple de $p$.** Soit $n \geqslant p$ un nombre joli. On fait la division euclidienne $n = pt + r$, avec $0 \leqslant r \leqslant p - 1$. Comme $n \geqslant p$, on a $t \geqslant 1$. Supposons $r \geqslant 1$. Alors $1 \leqslant r \leqslant n - 1$, et puisque $n$ est joli,
$$f(r) = f(n - r) = f(pt) = f(p) + f(t) \geqslant c > 0.$$
C'est impossible, car $f(r) = 0$ d'après l'étape 3. Donc $r = 0$, et $p$ divise $n$.

**Étape 5 : toutes les puissances de $p$ sont jolies.** Soit $n$ un nombre joli. On l'écrit $n = a \, p^b$, où $p$ ne divise pas $a$. D'après l'étape 2, le diviseur $a$ est joli, et il n'est pas un multiple de $p$. D'après l'étape 4, on a donc $a \leqslant p - 1$.

Soit maintenant $e \geqslant 1$. Les nombres jolis $a \, p^b$ avec $b < e$ sont au plus $(p - 1) \times e$, car $a$ ne prend que $p - 1$ valeurs et $b$ seulement $e$ valeurs. Comme il y a une infinité de nombres jolis, il en existe un, $n = a \, p^b$, avec $b \geqslant e$. Alors $p^e$ divise $n$, donc $p^e$ est joli d'après l'étape 2.

**Étape 6 : $f(q) = 0$ pour tout nombre premier $q \neq p$.** Soit $q$ un nombre premier différent de $p$. Les $q + 1$ nombres $p^0, p^1, \ldots, p^q$ n'ont que $q$ restes possibles dans la division par $q$. D'après le principe des tiroirs, deux d'entre eux ont le même reste : il existe $0 \leqslant i < j \leqslant q$ tels que $q$ divise
$$p^j - p^i = p^i \left(p^{j - i} - 1\right).$$
Le nombre premier $q$ ne divise pas $p^i$, dont la décomposition ne contient que le nombre premier $p$. Donc $q$ divise $p^e - 1$, où $e = j - i \geqslant 1$. On écrit $p^e - 1 = q s$, avec $s \geqslant 1$ entier.

D'après l'étape 5, le nombre $p^e \geqslant 2$ est joli. Avec $k = 1$, on obtient
$$0 = f(1) = f(p^e - 1) = f(q) + f(s) \geqslant f(q).$$
Comme $f(q) \geqslant 0$, on a $f(q) = 0$.

**Conclusion.** Si $f$ n'est pas nulle, elle est nulle sur tous les nombres premiers sauf $p$, donc $f(n) = c \, v_p(n)$ pour tout $n$ d'après l'étape 1. Les solutions sont donc **la fonction nulle et les fonctions $n \mapsto c \, v_p(n)$, où $p$ est un nombre premier et $c \geqslant 1$ un entier.**

## Going further

- Le corrigé officiel termine plus vite avec le petit théorème de Fermat, vu en spécialité maths expertes : si $q$ est un nombre premier qui ne divise pas $p$, alors $q$ divise $p^{q-1} - 1$. Le principe des tiroirs donne un exposant moins précis, mais il suffit ici.
- La condition 2 ne peut pas être remplacée par « il existe un entier $n \geqslant 2$ tel que ... ». Avec $n = 2$, il suffit que $f(1) = f(1)$, ce qui est toujours vrai, et par exemple $f(n) = v_2(n) + v_3(n)$ conviendrait.
- Beaucoup de candidats ont cherché à prouver que $f$ est nulle. Avant de démontrer quoi que ce soit dans une équation fonctionnelle, il faut d'abord trouver toutes les solutions, ici en essayant les fonctions qui comptent un facteur premier.
