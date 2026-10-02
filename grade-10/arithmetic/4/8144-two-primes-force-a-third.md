---
id: "8144"
title: "Deux nombres premiers en forcent un troisième"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [nombres-premiers, divisibilite, congruences, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 1, exercice 13 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $n$ un entier naturel. Montrer que si $n$ et $8n^2+1$ sont tous les deux des nombres premiers, alors $8n^2-1$ est également un nombre premier.

## Hints

1. Fais un tableau pour $n = 2, 3, 5, 7, 11$ et calcule $8n^2+1$ à chaque fois. Que remarques-tu, à une exception près ?
2. Tous ces nombres $8n^2+1$ semblent divisibles par $3$ — sauf un. Essaie de comprendre pourquoi, en regardant le reste de $n$ dans la division par $3$.
3. Si $n$ n'est pas divisible par $3$, que vaut le reste de $n^2$ modulo $3$ ? Et celui de $8n^2 + 1$ ?
4. L'hypothèse « $8n^2+1$ est premier » ne laisse donc qu'une seule valeur possible pour $n$. Laquelle ? Il ne reste plus qu'un calcul.

## Solution

L'exercice a l'air d'un énoncé général, mais en réalité l'hypothèse ne laisse qu'un seul candidat.

**Étape 1 : si $3$ ne divise pas $n$, alors $3$ divise $8n^2+1$.**

Supposons que $n$ ne soit pas divisible par $3$. Le reste de $n$ dans la division par $3$ vaut alors $1$ ou $2$.

- Si ce reste vaut $1$, celui de $n^2$ vaut $1^2 = 1$.
- Si ce reste vaut $2$, celui de $n^2$ est celui de $2^2 = 4$, c'est-à-dire $1$.

Dans les deux cas, $n^2$ a pour reste $1$ modulo $3$. Donc $8n^2 + 1$ a le même reste que $8 \times 1 + 1 = 9$, c'est-à-dire $0$ : **$8n^2+1$ est divisible par $3$.**

**Étape 2 : cela contredit l'hypothèse.**

Si de plus $n$ est un nombre premier non divisible par $3$, alors $n \geq 2$, donc

$$8n^2 + 1 \geq 8 \times 4 + 1 = 33 > 3.$$

Le nombre $8n^2+1$ serait donc un multiple de $3$ strictement plus grand que $3$ : il ne serait pas premier. Cela contredit l'hypothèse.

**Étape 3 : donc $n = 3$.**

L'entier $n$ est donc divisible par $3$. Comme il est premier, son seul diviseur autre que $1$ est lui-même, donc

$$n = 3.$$

**Étape 4 : la conclusion.**

Vérifions d'abord que ce cas est bien possible :

$$8 \times 3^2 + 1 = 72 + 1 = 73,$$

et $73$ est premier (il n'est divisible ni par $2$, ni par $3$, ni par $5$, ni par $7$, et $8^2 = 64 < 73 < 81 = 9^2$).

Enfin,

$$8 \times 3^2 - 1 = 72 - 1 = 71,$$

et $71$ est premier pour la même raison.

**Donc $8n^2-1$ est bien premier : c'est $71$.**

Remarque : les deux hypothèses de l'énoncé sont donc très contraignantes, puisqu'elles ne laissent qu'un seul entier $n$. C'est un type d'exercice fréquent : avant de chercher une démonstration générale, il vaut la peine de tester les petites valeurs pour voir si le terrain n'est pas beaucoup plus étroit qu'il n'y paraît.
