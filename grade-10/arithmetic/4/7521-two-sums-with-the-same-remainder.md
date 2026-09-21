---
id: "7521"
title: "Deux sommes de même reste"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, tiroirs, permutation, somme, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 62 (une étoile ; solution p. 248, résolu par Étienne Duclos)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On dispose de $2n$ places, numérotées de $1$ à $2n$, et des $2n$ entiers $1, 2, \ldots, 2n$.

On pose les entiers sur les places, un par place, dans un ordre quelconque. Puis, sur chaque place, on ajoute à l'entier posé le numéro de la place : on obtient ainsi $2n$ sommes.

Montrer que deux de ces sommes ont le même reste dans la division par $2n$.

## Hints

1. Essaie avec $n = 2$, donc $4$ places. Quel que soit l'ordre choisi, tu devrais toujours trouver deux sommes de même reste modulo $4$.
2. Raisonne par l'absurde : suppose que les $2n$ restes sont tous différents. Combien de restes possibles y a-t-il ? Que sont alors ces restes, pris tous ensemble ?
3. Une quantité se calcule facilement de deux façons : la somme de toutes les sommes. Fais-le d'abord directement, puis en utilisant l'hypothèse absurde.
4. Attention, on ne compare pas des nombres mais des **restes** : les deux calculs doivent coïncider modulo $2n$, pas exactement.

## Solution

**Étape 1. On raisonne par l'absurde.**

Notons $a_1, a_2, \ldots, a_{2n}$ les entiers posés : c'est la liste $1, 2, \ldots, 2n$ dans un certain ordre. La somme lue sur la place $i$ vaut $a_i + i$.

Supposons que les $2n$ restes de ces sommes dans la division par $2n$ soient **tous différents**.

Il n'y a que $2n$ restes possibles, à savoir $0, 1, 2, \ldots, 2n-1$. Comme il y a $2n$ sommes et que leurs restes sont deux à deux différents, ces restes sont exactement $0, 1, \ldots, 2n-1$, chacun une fois.

**Étape 2. Premier calcul de la somme totale.**

Additionnons toutes les sommes :

$$S = \sum_{i=1}^{2n} (a_i + i) = \sum_{i=1}^{2n} a_i \;+\; \sum_{i=1}^{2n} i.$$

Les $a_i$ sont les entiers $1$ à $2n$ dans le désordre, donc les deux sommes valent la même chose :

$$S = 2 \times \big(1 + 2 + \cdots + 2n\big) = 2 \times \frac{2n\,(2n+1)}{2} = 2n\,(2n+1).$$

C'est un multiple de $2n$, donc

$$S \equiv 0 \pmod{2n}.$$

**Étape 3. Second calcul, avec l'hypothèse absurde.**

Chaque somme est congrue à son reste modulo $2n$, et d'après l'étape 1 ces restes sont $0, 1, \ldots, 2n-1$, chacun une fois. Donc

$$S \equiv 0 + 1 + 2 + \cdots + (2n-1) = \frac{(2n-1)\,2n}{2} = n\,(2n-1) \pmod{2n}.$$

Or $n(2n-1) = 2n^2 - n = n \times 2n - n$, donc

$$S \equiv -n \equiv n \pmod{2n}.$$

**Étape 4. La contradiction.**

Les deux calculs donnent $S \equiv 0$ et $S \equiv n$ modulo $2n$, donc $2n$ divise $n$. C'est impossible, car $0 < n < 2n$.

**Conclusion.** L'hypothèse était absurde : deux des sommes ont bien le même reste dans la division par $2n$.

## Going further

Le nombre de places est-il vraiment obligé d'être pair ? Non : avec un nombre **impair** de places, le résultat devient faux. Par exemple avec $3$ places, posons $1$, $2$, $3$ dans cet ordre : les sommes valent $2$, $4$, $6$, de restes $2$, $1$, $0$ modulo $3$. Ils sont tous différents.

Plus généralement, avec $m$ places et $m$ impair, la disposition « chaque entier sur sa propre place » donne les sommes $2, 4, \ldots, 2m$, dont les restes modulo $m$ sont ceux de $2 \times 1, 2\times 2, \ldots, 2 \times m$. Comme $2$ et $m$ sont premiers entre eux, ces restes sont tous différents.

On voit bien dans la démonstration où la parité intervient : l'étape 3 donne le reste $n$, qui est non nul précisément parce que $2n$ est pair. Une disposition où toutes les sommes ont des restes distincts s'appelle un **rangement complet**, et on vient de montrer qu'il n'en existe pas pour un nombre pair d'éléments.
