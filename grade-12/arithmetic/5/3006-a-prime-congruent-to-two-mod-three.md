---
id: "3006"
title: "Un premier de la forme 3k + 2 qui divise a² + ab + b²"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [congruences, petit theoreme de fermat, nombres premiers, divisibilite, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic IV"
  reference: "Handout-3422-2965.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3422-2965.pdf"
---

## Statement

Soit $p$ un nombre premier de la forme $p = 3k + 2$, avec $k$ entier naturel (par exemple
$p = 2$, $5$, $11$, $17$, $23$, $29$, …).

Soient $a$ et $b$ deux entiers tels que

$$p \mid a^2 + ab + b^2.$$

Montrer que $p$ divise $a$ (et donc aussi $b$).

## Hints

1. Raisonne par l'absurde : suppose que $p$ ne divise pas $a$. Montre d'abord que $p$ ne divise pas $b$ non plus.
2. Cherche une identité qui fait apparaître $a^2 + ab + b^2$ comme facteur. Pense aux différences de cubes.
3. Tu obtiens $a^3 \equiv b^3 \pmod p$. Élève cette congruence à la puissance $k$.
4. Le petit théorème de Fermat s'écrit ici $a^{p-1} = a^{3k+1} \equiv 1 \pmod p$. Compare $a \times b^{3k}$ et $b \times b^{3k}$.
5. Une fois que tu sais $a \equiv b$, que devient $a^2 + ab + b^2$ modulo $p$ ? N'oublie pas que $p \neq 3$.

## Solution

**Mise en place.**

Raisonnons par l'absurde et supposons que $p$ ne divise pas $a$.

Alors $p$ ne divise pas $b$ non plus. En effet, si $p \mid b$, alors de
$p \mid a^2 + ab + b^2$ on tirerait $p \mid a^2$, donc $p \mid a$ puisque $p$ est premier :
contradiction.

**Une identité bien connue.**

Pour tous réels,

$$(a - b)\left(a^2 + ab + b^2\right) = a^3 - b^3.$$

Comme $p$ divise le membre de gauche, il divise $a^3 - b^3$, c'est-à-dire

$$a^3 \equiv b^3 \pmod p.$$

**On monte à la puissance k.**

En élevant cette congruence à la puissance $k$ :

$$a^{3k} \equiv b^{3k} \pmod p.$$

Multiplions les deux membres par $a$ :

$$a^{3k+1} \equiv a \times b^{3k} \pmod p.$$

Or $p - 1 = 3k + 1$, et $p$ ne divise pas $a$ : le petit théorème de Fermat donne
$a^{3k+1} \equiv 1 \pmod p$. Donc

$$a \times b^{3k} \equiv 1 \pmod p.$$

Le même théorème appliqué à $b$ donne $b^{3k+1} \equiv 1$, c'est-à-dire

$$b \times b^{3k} \equiv 1 \pmod p.$$

**On simplifie.**

Les deux congruences précédentes donnent

$$a \times b^{3k} \equiv b \times b^{3k} \pmod p,$$

donc $p$ divise $b^{3k}(a - b)$. Comme $p$ est premier et ne divise pas $b$, il ne divise pas
$b^{3k}$ ; le lemme de Gauss donne alors

$$a \equiv b \pmod p.$$

**La conclusion.**

En remplaçant $b$ par $a$ dans l'hypothèse :

$$0 \equiv a^2 + ab + b^2 \equiv a^2 + a^2 + a^2 = 3a^2 \pmod p.$$

Donc $p \mid 3a^2$. Mais $p = 3k+2$ n'est pas divisible par $3$, donc $p \neq 3$ ; comme $p$
est premier, $p$ ne divise pas $3$ et il divise donc $a^2$, puis $a$.

C'est exactement ce que nous avions supposé faux. La supposition de départ est donc
impossible : $p$ divise $a$.

Et alors $p \mid a^2 + ab$, donc $p \mid b^2$, donc $p \mid b$.

## Going further

La condition $p \equiv 2 \pmod 3$ est indispensable. Pour $p = 7$, qui est de la forme
$3k + 1$, on a $a = 1$, $b = 2$ :

$$1 + 2 + 4 = 7,$$

et pourtant $7$ ne divise ni $1$ ni $2$. Ce qui fait marcher la démonstration, c'est que
$3$ et $p - 1 = 3k+1$ sont premiers entre eux : « élever au cube » est alors une opération
réversible modulo $p$.
