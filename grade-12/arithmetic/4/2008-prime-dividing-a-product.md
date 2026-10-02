---
id: "2008"
title: "Quand un nombre premier divise un produit"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres-premiers, divisibilite, bezout, pgcd, demonstration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Divisibility and the Euclidean Algorithm"
  reference: "Handout-1067-1096.pdf, exercices 16, 17 et 18"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1067-1096.pdf"
---

## Statement

On admet le résultat suivant, qui découle de l'algorithme d'Euclide : pour tous entiers $a$ et $b$ non tous les deux nuls, il existe des entiers relatifs $u$ et $v$ tels que

$$au + bv = \mathrm{PGCD}(a,b).$$

Soit $p$ un nombre premier.

1. Soit $a$ un entier que $p$ ne divise pas. Démontrer que $\mathrm{PGCD}(a,p) = 1$.
2. En déduire qu'il existe des entiers relatifs $u$ et $v$ tels que $au + pv = 1$.
3. Soient $a$ et $b$ deux entiers tels que $p$ divise le produit $ab$, mais $p$ ne divise pas $a$. Démontrer que $p$ divise $b$.

On a ainsi établi la propriété fondamentale des nombres premiers : si $p$ est premier et si $p \mid ab$, alors $p \mid a$ ou $p \mid b$.

## Hints

1. Pour la question 1, listez les diviseurs positifs de $p$. Un nombre premier n'en a que deux.
2. Le $\mathrm{PGCD}$ de $a$ et de $p$ est un diviseur positif de $p$ : quelles valeurs peut-il donc prendre ? Écartez celle qui est impossible.
3. La question 2 est une application directe du résultat admis.
4. Pour la question 3, partez de $au + pv = 1$ et multipliez les deux membres par $b$. Regardez ensuite chaque terme : lequel est un multiple de $p$ ?

## Solution

**1. Le PGCD de $a$ et de $p$ vaut 1.**

Notons $d = \mathrm{PGCD}(a,p)$. Comme $d$ est un diviseur positif de $p$ et que $p$ est premier, $d$ ne peut valoir que $1$ ou $p$.

Si $d = p$, alors $p$ divise $a$, ce qui est exclu par hypothèse. Donc $d = 1$, c'est-à-dire

$$\mathrm{PGCD}(a,p) = 1.$$

**2. Une relation de Bézout.**

D'après le résultat admis appliqué à $a$ et $p$, il existe des entiers relatifs $u$ et $v$ tels que

$$au + pv = \mathrm{PGCD}(a,p) = 1.$$

**3. Si $p$ divise $ab$ et ne divise pas $a$, alors $p$ divise $b$.**

Comme $p$ ne divise pas $a$, la question 2 fournit deux entiers $u$ et $v$ avec

$$au + pv = 1.$$

Multiplions les deux membres par $b$ :

$$abu + pbv = b.$$

Examinons les deux termes du membre de gauche.

- $abu = (ab)\,u$ : par hypothèse $p$ divise $ab$, donc $p$ divise $abu$.
- $pbv = p\,(bv)$ : ce terme est manifestement un multiple de $p$.

Une somme de deux multiples de $p$ est un multiple de $p$. Donc $p$ divise $abu + pbv$, c'est-à-dire $p$ divise $b$.

**Conclusion.** Si un nombre premier $p$ divise un produit $ab$, alors soit il divise $a$, soit il ne le divise pas et dans ce cas il divise $b$. Autrement dit :

$$p \mid ab \ \Longrightarrow \ p \mid a \ \text{ ou } \ p \mid b.$$

## Going further

Cette propriété est souvent appelée **lemme d'Euclide**. Elle est le cas particulier, pour $p$ premier, du **théorème de Gauss** : si $a$ divise $bc$ et si $\mathrm{PGCD}(a,b) = 1$, alors $a$ divise $c$. La démonstration est exactement la même.

Elle peut sembler évidente, mais elle ne l'est pas : elle est la clé de l'unicité de la décomposition en facteurs premiers. Il existe des ensembles de nombres où elle tombe en défaut. Prenons par exemple les entiers de la forme $a + b\sqrt{-5}$. Dans ce monde-là,

$$6 = 2 \times 3 = (1 + \sqrt{-5})(1 - \sqrt{-5}),$$

et $2$ ne peut plus se décomposer, tout en divisant un produit sans diviser aucun des deux facteurs. La décomposition en facteurs premiers n'y est donc plus unique.
