---
id: "12030"
title: "m(4m² + m + 12) = 3(pⁿ − 1)"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [equation-diophantienne, nombres-premiers, factorisation, diviseur-commun, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du stage de mars 2013"
  reference: "2017-10_ofm-2012-2013-test-stage.pdf, exercice 4 ; corrigé 2017-10_ofm-2012-2013-test-stage-corrige.pdf (le corrigé conclut par des congruences modulo p³ ; solution réécrite avec le seul diviseur commun 49)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-stage.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-stage.pdf"
---

## Statement

Déterminer tous les entiers naturels $m$ et $n$, et tous les nombres premiers $p$, tels que

$$m\,(4m^2 + m + 12) = 3\,(p^n - 1) .$$

## Hints

1. Faites tout passer du même côté que $3$ et factorisez : $4m^3 + m^2 + 12m + 3$ est le produit de deux facteurs simples.
2. Un diviseur commun aux deux facteurs divise aussi toute combinaison des deux. Trouvez une combinaison de $4m + 1$ et de $m^2 + 3$ qui ne dépend plus de $m$.
3. Vous devez trouver $49$. Montrez ensuite, quand $m \geqslant 1$, que $p$ divise les deux facteurs, donc que $p = 7$.

## Solution

**Réponse.** Les solutions sont : $m = 0$ et $n = 0$, avec $p$ premier quelconque ; et $m = 12$, $n = 4$, $p = 7$.

**Étape 1 : factoriser.** L'équation s'écrit $4m^3 + m^2 + 12m = 3p^n - 3$, soit $3p^n = 4m^3 + m^2 + 12m + 3$. Or

$$(4m + 1)(m^2 + 3) = 4m^3 + 12m + m^2 + 3 .$$

L'équation est donc équivalente à

$$(4m + 1)(m^2 + 3) = 3\,p^n . \qquad (1)$$

**Étape 2 : le cas $m = 0$.** L'équation $(1)$ devient $3 = 3p^n$, soit $p^n = 1$, donc $n = 0$, et tout nombre premier $p$ convient.

On suppose désormais $m \geqslant 1$. Alors $4m + 1 \geqslant 5$ et $m^2 + 3 \geqslant 4$ : **les deux facteurs sont strictement plus grands que $3$.**

**Étape 3 : un diviseur commun aux deux facteurs divise $49$.** On a

$$16\,(m^2 + 3) - (4m - 1)(4m + 1) = 16m^2 + 48 - (16m^2 - 1) = 49 .$$

Un entier qui divise $4m + 1$ et $m^2 + 3$ divise donc $49$. En particulier, le seul nombre premier qui peut diviser les deux facteurs est $7$.

**Étape 4 : $p = 7$.** D'après $(1)$, les seuls nombres premiers qui divisent $4m + 1$ ou $m^2 + 3$ sont $3$ et $p$.

- *$p$ ne vaut pas $3$.* Sinon, $(1)$ s'écrit $(4m + 1)(m^2 + 3) = 3^{n+1}$, et chaque facteur est une puissance de $3$. Comme chacun est plus grand que $3$, chacun est divisible par $3$. Le nombre premier $3$ diviserait les deux facteurs, ce qui est impossible d'après l'étape 3.
- *$p$ divise les deux facteurs.* Comme $p \neq 3$, le nombre $3$ apparaît une seule fois dans la décomposition de $3p^n$. Chaque facteur s'écrit donc $3^e \times p^f$, avec $e = 0$ ou $e = 1$. Si l'on avait $f = 0$, ce facteur vaudrait $1$ ou $3$, alors qu'il est plus grand que $3$. Donc $f \geqslant 1$ : $p$ divise chacun des deux facteurs.

D'après l'étape 3, on a donc $p = 7$.

**Étape 5 : trouver $m$.** Écrivons $4m + 1 = 3^u \times 7^a$ et $m^2 + 3 = 3^v \times 7^b$, où $u + v = 1$, $a \geqslant 1$, $b \geqslant 1$ et $a + b = n$.

- *Si $a = 1$*, alors $4m + 1$ vaut $7$ ou $21$. Le premier cas donne $m = \frac{3}{2}$, qui n'est pas entier. Le second donne $m = 5$, puis $m^2 + 3 = 28 = 4 \times 7$, qui n'est pas de la forme $3^v \times 7^b$. Impossible.
- *Si $b = 1$*, alors $m^2 + 3$ vaut $7$ ou $21$, donc $m^2 = 4$ ou $m^2 = 18$. Seul $m = 2$ convient, mais alors $4m + 1 = 9$, qui n'est pas divisible par $7$. Impossible.

Donc $a \geqslant 2$ et $b \geqslant 2$. Si l'on avait $a \geqslant 3$ et $b \geqslant 3$, le nombre $7^3 = 343$ diviserait les deux facteurs, ce qui contredit l'étape 3. Donc $a = 2$ ou $b = 2$.

- *Si $a = 2$*, alors $4m + 1$ vaut $49$ ou $147$. Le second cas donne $4m = 146$, qui n'est pas un multiple de $4$. Le premier donne $m = 12$, puis $m^2 + 3 = 147 = 3 \times 7^2$. Cela convient, avec $b = 2$ et $n = a + b = 4$.
- *Si $b = 2$*, alors $m^2 + 3$ vaut $49$ ou $147$, donc $m^2 = 46$ (impossible, ce n'est pas un carré) ou $m^2 = 144$, soit $m = 12$ : on retrouve la même solution.

**Vérification.** Pour $m = 12$ : $m\,(4m^2 + m + 12) = 12 \times (576 + 12 + 12) = 12 \times 600 = 7\,200$, et $3\,(7^4 - 1) = 3 \times 2\,400 = 7\,200$.

**Conclusion.** Les solutions sont $(m, n, p) = (0, 0, p)$ pour tout nombre premier $p$, et $(m, n, p) = (12, 4, 7)$.
