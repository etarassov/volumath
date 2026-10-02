---
id: "0151"
title: "Ranger les carrés de trois nombres"
grade: 8
theme: algebra
difficulty: 4
duration_min: 25
tags: [carres, inegalite, relatifs, signe, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 16, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres tels que $a < b < c$.

Parmi les cinq doubles inégalités suivantes, lesquelles peuvent se produire ?

a) $a^2 < b^2 < c^2$
b) $b^2 < c^2 < a^2$
c) $b^2 < a^2 < c^2$
d) $a^2 < c^2 < b^2$
e) $c^2 < b^2 < a^2$

Pour chaque cas possible, donner un exemple de trois nombres qui convient. Pour chaque cas impossible, expliquer pourquoi il ne peut jamais se produire.

## Hints

1. Commence par essayer trois nombres positifs, par exemple $1 < 2 < 3$. Tu n'obtiens qu'une seule des cinq doubles inégalités. Il faut donc chercher ailleurs pour les autres.
2. Rien n'oblige $a$, $b$ et $c$ à être positifs. Essaie des nombres négatifs, puis un mélange de négatifs et de positifs.
3. Retiens ceci : entre deux nombres négatifs, c'est le plus petit qui a le plus grand carré. Par exemple $-5 < -2$, mais $25 > 4$.
4. Pour la double inégalité qui résiste, regarde le signe de $b$. Si $b$ était positif ou nul, que pourrais-tu dire de $b^2$ et de $c^2$ ?

## Solution

**L'idée : tout dépend des signes.**

Il faut avoir en tête deux règles.

- Si $0 \leqslant x < y$, alors $x^2 < y^2$ : élever au carré garde l'ordre des nombres positifs.
- Si $x < y \leqslant 0$, alors $x^2 > y^2$ : élever au carré renverse l'ordre des nombres négatifs.

**Quatre cas sont possibles.**

Il suffit de donner un exemple à chaque fois.

a) $a^2 < b^2 < c^2$ avec $a = 1$, $b = 2$, $c = 3$ : on a bien $1 < 2 < 3$, et $1 < 4 < 9$.

b) $b^2 < c^2 < a^2$ avec $a = -100$, $b = 1$, $c = 2$ : on a bien $-100 < 1 < 2$, et $1 < 4 < 10\,000$.

c) $b^2 < a^2 < c^2$ avec $a = -2$, $b = -1$, $c = 100$ : on a bien $-2 < -1 < 100$, et $1 < 4 < 10\,000$.

e) $c^2 < b^2 < a^2$ avec $a = -3$, $b = -2$, $c = -1$ : on a bien $-3 < -2 < -1$, et $1 < 4 < 9$.

**Le cas d) est impossible.**

On raisonne par l'absurde : on suppose qu'il existe trois nombres avec à la fois $a < b < c$ et $a^2 < c^2 < b^2$, et on cherche une contradiction.

*Étape 1. Le nombre $b$ est forcément négatif.*

Supposons le contraire, c'est-à-dire $b \geqslant 0$. Alors $0 \leqslant b < c$, donc $b^2 < c^2$ d'après la première règle. Mais on a supposé $c^2 < b^2$. Les deux ne peuvent pas être vrais en même temps. Donc $b < 0$.

*Étape 2. On en tire une contradiction.*

Comme $a < b$ et $b < 0$, les deux nombres $a$ et $b$ sont négatifs, et $a$ est le plus petit des deux. D'après la deuxième règle, élever au carré renverse leur ordre :

$$a^2 > b^2$$

Mais on a supposé $a^2 < c^2 < b^2$, et en particulier $a^2 < b^2$.

On obtient donc à la fois $a^2 > b^2$ et $a^2 < b^2$, ce qui est impossible.

**Conclusion.**

Les doubles inégalités a), b), c) et e) peuvent se produire. La double inégalité d) ne peut jamais se produire.

## Going further

Posons la même question avec des cubes : si $a < b < c$, quelles doubles inégalités entre $a^3$, $b^3$ et $c^3$ sont possibles ?

Cette fois une seule réponse marche, $a^3 < b^3 < c^3$, parce qu'élever au cube garde toujours l'ordre, que les nombres soient positifs ou négatifs. C'est l'exposant pair qui créait toute la difficulté de l'exercice.
