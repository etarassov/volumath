---
id: "0685"
title: "Les nombres premiers inférieurs à 50"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [nombres-premiers, crible, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 27"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Déterminer tous les nombres premiers inférieurs à $50$.

(Rappel : un entier supérieur à $1$ est premier s'il n'admet pas d'autres diviseurs que $1$ et lui-même.)

## Hints

1. Écris tous les entiers de $2$ à $49$, puis barre ceux qui ne sont pas premiers.
2. Les multiples de $2$ autres que $2$ ne sont pas premiers. Idem pour les multiples de $3$, de $5$, de $7$.
3. Faut-il continuer avec les multiples de $11$ ? Si un nombre inférieur à $50$ n'est pas premier, quel est son plus petit facteur premier au maximum ?

## Solution

**Étape 1. Écrire la liste et barrer les multiples.**

On part des entiers de $2$ à $49$ et on procède comme dans le crible d'Ératosthène.

- On garde $2$, et on barre tous les autres nombres pairs : $4, 6, 8, \ldots, 48$.
- On garde $3$, et on barre les multiples de $3$ restants : $9, 15, 21, 27, 33, 39, 45$.
- On garde $5$, et on barre les multiples de $5$ restants : $25, 35$.
- On garde $7$, et on barre les multiples de $7$ restants : $49$.

**Étape 2. Savoir quand s'arrêter.**

Inutile d'aller plus loin. Si un entier $n$ compris entre $2$ et $49$ n'est pas premier, il s'écrit $n = d \times d'$ avec $1 < d \leq d'$. Alors $d \times d \leq d \times d' = n < 50$, et comme $8 \times 8 = 64$ dépasse $50$, on a $d \leq 7$.

Ce diviseur $d$ est lui-même divisible par un nombre premier $p$, et $p \leq d \leq 7$, donc $p$ vaut $2$, $3$, $5$ ou $7$. Comme $p$ divise $d$ qui divise $n$, le nombre $p$ divise $n$, et $n > p$ puisque $n = d \times d' \geq 2d \geq 2p$. Donc $n$ est un multiple de $2$, $3$, $5$ ou $7$ autre que $2$, $3$, $5$, $7$ lui-même : il a déjà été barré.

**Étape 3. Lire ce qui reste.**

**Conclusion.** Les nombres premiers inférieurs à $50$ sont

$$2,\; 3,\; 5,\; 7,\; 11,\; 13,\; 17,\; 19,\; 23,\; 29,\; 31,\; 37,\; 41,\; 43,\; 47.$$

Il y en a $15$.

## Going further

1. Jusqu'à quel nombre premier faut-il barrer les multiples pour trouver tous les nombres premiers inférieurs à $100$ ? Et à $200$ ?
2. Les couples de nombres premiers qui diffèrent de $2$ s'appellent des nombres premiers jumeaux. Combien y en a-t-il dans ta liste ?
3. Entre $24$ et $28$, il n'y a aucun nombre premier. Trouve dans la liste le plus long « trou » entre deux nombres premiers consécutifs.
