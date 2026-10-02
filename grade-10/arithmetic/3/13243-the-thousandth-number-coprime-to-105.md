---
id: "13243"
title: "Le millième nombre premier avec 105"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers-entre-eux, periodicite, denombrement, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices lycéens, exercice 17 ; réponse (2186) dans 2017-10_coupe_automne_2017_elim_lycee.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

On considère la liste, rangée dans l'ordre croissant, des entiers strictement positifs qui n'ont pas de facteur commun avec $105$ autre que $1$ :

$$1, 2, 4, 8, 11, 13, \ldots$$

Déterminer le millième terme de cette liste.

## Hints

1. Décompose $105$. Un entier est dans la liste quand il n'est divisible par aucun de quels nombres ?
2. Combien de termes de la liste sont entre $1$ et $105$ ? Compte ceux qui sont divisibles par $3$, $5$ ou $7$ sans en compter deux fois.
3. Si $k$ est dans la liste, $k + 105$ l'est-il ? Et $105 - k$ ?
4. Écris $1000 = 20 \times 48 + 40$.

## Solution

Comme $105 = 3 \times 5 \times 7$, un entier est dans la liste exactement quand il n'est divisible ni par $3$, ni par $5$, ni par $7$.

**Combien de termes entre $1$ et $105$.** Entre $1$ et $105$, il y a $35$ multiples de $3$, $21$ multiples de $5$ et $15$ multiples de $7$. En les additionnant, on compte deux fois les multiples de deux de ces nombres : $7$ multiples de $15$, $5$ multiples de $21$, $3$ multiples de $35$. On les retire. Mais alors le nombre $105$, multiple des trois, a été ajouté trois fois et retiré trois fois : on le rajoute. Il y a donc

$$35 + 21 + 15 - 7 - 5 - 3 + 1 = 57$$

nombres divisibles par $3$, $5$ ou $7$, et $105 - 57 = 48$ termes de la liste entre $1$ et $105$.

**La liste se répète.** $k$ et $k + 105$ ont les mêmes restes dans les divisions par $3$, $5$ et $7$, puisque $105$ est multiple de chacun. Donc $k$ est dans la liste exactement quand $k + 105$ y est. Chaque tranche de $105$ entiers consécutifs, de $105j + 1$ à $105j + 105$, contient donc $48$ termes, placés comme ceux de la première tranche.

**On se place dans la bonne tranche.** On a $1000 = 20 \times 48 + 40$. Les $20$ premières tranches, de $1$ à $2100$, contiennent $960$ termes. Le millième terme est donc le $40^{\text{e}}$ terme de la tranche de $2101$ à $2205$, c'est-à-dire $2100 + m$, où $m$ est le $40^{\text{e}}$ terme de la première tranche.

**Le $40^{\text{e}}$ terme de la première tranche, par symétrie.** Si $k$ n'est divisible ni par $3$, ni par $5$, ni par $7$, alors $105 - k$ non plus (si $3$ divisait $105 - k$, il diviserait $105 - (105 - k) = k$). Les $48$ termes de la première tranche vont donc par paires $k$ et $105 - k$ : le $40^{\text{e}}$ en partant du début est le $9^{\text{e}}$ en partant de la fin, c'est-à-dire $105$ moins le $9^{\text{e}}$ en partant du début. Les premiers termes sont

$$1, 2, 4, 8, 11, 13, 16, 17, 19,$$

donc le $9^{\text{e}}$ est $19$, et $m = 105 - 19 = 86$.

**Conclusion.** Le millième terme de la liste est $2100 + 86 = 2186$.
