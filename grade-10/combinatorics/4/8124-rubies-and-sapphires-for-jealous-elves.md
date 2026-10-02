---
id: "8124"
title: "Des rubis et des saphirs pour des lutins jaloux"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-de-l-extremum, denombrement, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 5"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Un sorcier possède une réserve inépuisable de rubis et de saphirs. Il reçoit des lutins et veut donner à chacun un certain nombre de rubis et un certain nombre de saphirs (des nombres entiers, éventuellement nuls).

Mais les lutins sont très jaloux. Dès qu'un lutin voit un autre lutin qui a **au moins autant de rubis que lui et au moins autant de saphirs que lui**, les deux se battent.

Montrer que le sorcier peut contenter tous ses lutins si et seulement si ceux-ci sont en nombre fini.

## Hints

1. Il y a deux choses à montrer : que le sorcier réussit quand les lutins sont en nombre fini, et qu'il échoue forcément quand ils sont en nombre infini.
2. Commence par le plus facile : avec $n$ lutins, essaie de donner beaucoup de rubis à ceux à qui tu donnes peu de saphirs.
3. Pour l'autre sens, remarque d'abord que deux lutins ne peuvent jamais recevoir le même nombre de rubis. Pourquoi ?
4. Regarde ensuite le lutin qui a le moins de saphirs. Que doivent vérifier tous les autres, par rapport à lui, du côté des rubis ?

## Solution

Disons qu'un partage est **pacifique** si aucun couple de lutins ne se bat, c'est-à-dire si pour deux lutins distincts quelconques, celui qui a le plus de rubis a strictement moins de saphirs que l'autre.

### Avec un nombre fini de lutins, c'est possible

Supposons qu'il y ait $n$ lutins, numérotés de $1$ à $n$. Le sorcier donne au lutin numéro $i$ :

$$i \text{ rubis} \qquad \text{et} \qquad n - i \text{ saphirs}.$$

Ce sont bien des nombres entiers positifs ou nuls.

Prenons deux lutins $i$ et $j$ avec $i < j$. Alors le lutin $j$ a plus de rubis ($j > i$), mais moins de saphirs ($n - j < n - i$). Aucun des deux n'a « au moins autant » des deux pierres que l'autre : ils ne se battent pas.

Le partage est donc pacifique.

### Avec un nombre infini de lutins, c'est impossible

Supposons que le sorcier ait réussi un partage pacifique. Montrons qu'alors les lutins sont forcément en nombre fini.

**Premier point : tous les nombres de rubis sont différents.**

Supposons que deux lutins $A$ et $B$ aient le même nombre de rubis. L'un des deux a au moins autant de saphirs que l'autre, disons $A$. Alors $A$ a au moins autant de rubis et au moins autant de saphirs que $B$ : ils se battent. Contradiction.

Donc deux lutins distincts n'ont jamais le même nombre de rubis. (Le même raisonnement vaut pour les saphirs.)

**Deuxième point : le lutin le moins riche en saphirs borne tout le monde.**

Parmi les lutins, il y en a un qui a le plus petit nombre de saphirs — s'il y en avait plusieurs à égalité, ils se battraient d'après le premier point, donc il est unique. Appelons-le $M$, et notons $n$ son nombre de rubis.

Soit $X$ un autre lutin. Comme $M$ a strictement le moins de saphirs, $X$ a strictement plus de saphirs que $M$. Si en plus $X$ avait au moins autant de rubis que $M$, alors $X$ aurait au moins autant des deux pierres que $M$ : ils se battraient.

Donc $X$ a strictement moins de $n$ rubis : son nombre de rubis appartient à

$$\{0,\ 1,\ 2,\ \ldots,\ n-1\}.$$

**Conclusion du deuxième point.**

Tous les lutins autres que $M$ ont un nombre de rubis dans cet ensemble de $n$ valeurs, et d'après le premier point ces nombres sont deux à deux différents. Il y a donc au plus $n$ lutins autres que $M$, c'est-à-dire au plus $n+1$ lutins en tout.

Les lutins sont donc en nombre fini.

### Conclusion

Le sorcier peut contenter tous ses lutins exactement quand ils sont en nombre fini.
