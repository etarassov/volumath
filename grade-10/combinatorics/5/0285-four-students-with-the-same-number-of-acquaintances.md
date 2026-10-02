---
id: "0285"
title: "Quatre élèves qui ont autant de connaissances"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 40
tags: [principe-des-tiroirs, parite, double-comptage, raisonnement-par-labsurde]
adapted_from: null
see_also: ["4602"]
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 7, задача 7"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Dans un lycée, chacun des $102$ élèves connaît au moins $68$ des autres élèves. Se connaître est réciproque : si Alice connaît Bruno, alors Bruno connaît Alice.

Montrer qu'il existe quatre élèves qui ont exactement le même nombre de connaissances dans le lycée.

## Hints

1. Raisonnez par l'absurde : supposez qu'il n'existe pas quatre élèves ayant le même nombre de connaissances. Que peut-on dire alors du nombre d'élèves qui partagent une même valeur ?
2. Entre quelles bornes se trouve le nombre de connaissances d'un élève ? Combien de valeurs sont possibles en tout ?
3. Si chaque valeur est partagée par au plus trois élèves, combien d'élèves le lycée peut-il compter au maximum ? Comparez ce maximum à $102$.
4. Il n'y a donc aucune marge : chaque valeur est prise par exactement trois élèves. Comptez maintenant les élèves qui ont un nombre **impair** de connaissances.
5. Montrez d'abord que dans n'importe quel groupe, le nombre de personnes ayant un nombre impair de connaissances est pair. Pour cela, comptez de deux façons les paires d'élèves qui se connaissent.

## Solution

**Un outil : le lemme des poignées de main.**

Commençons par établir un résultat que nous utiliserons à la fin.

> Dans n'importe quel groupe, le nombre de personnes qui ont un nombre impair de connaissances est pair.

*Preuve.* Appelons $N$ le nombre de paires d'élèves qui se connaissent. Additionnons, pour tous les élèves, leur nombre de connaissances. Chaque paire d'élèves qui se connaissent est alors comptée exactement deux fois : une fois depuis chacun des deux. Donc

$$\text{(somme des nombres de connaissances)} = 2N,$$

qui est un nombre pair.

Or, dans une somme d'entiers, les termes pairs n'influencent pas la parité du total : c'est le nombre de termes impairs qui décide. Pour que la somme soit paire, il faut donc un nombre pair de termes impairs, c'est-à-dire un nombre pair d'élèves ayant un nombre impair de connaissances.

**Le raisonnement par l'absurde.**

Supposons qu'il **n'existe pas** quatre élèves ayant le même nombre de connaissances. Autrement dit, chaque valeur possible est partagée par **au plus trois** élèves.

*Combien de valeurs sont possibles ?*

Un élève connaît au moins $68$ autres élèves, et au plus $101$, puisqu'il y a $101$ autres élèves dans le lycée. Le nombre de connaissances d'un élève est donc l'un des nombres

$$68,\ 69,\ 70,\ \dots,\ 101,$$

ce qui fait $101 - 68 + 1 = 34$ valeurs possibles.

*Le comptage est exactement saturé.*

Chacune de ces $34$ valeurs est partagée par au plus $3$ élèves, donc le lycée compte au plus

$$34 \times 3 = 102 \text{ élèves.}$$

Or il y a exactement $102$ élèves. Il n'y a donc **aucune marge** : chaque valeur doit être atteinte par exactement trois élèves. Si une seule valeur était atteinte par moins de trois élèves, le total resterait en dessous de $102$.

*Comptons les élèves ayant un nombre impair de connaissances.*

Parmi les valeurs $68, 69, \dots, 101$, les valeurs impaires sont

$$69,\ 71,\ 73,\ \dots,\ 101.$$

Ce sont les impairs de $69$ à $101$, il y en a $\dfrac{101 - 69}{2} + 1 = 17$.

Chacune est atteinte par exactement trois élèves, donc le nombre d'élèves ayant un nombre impair de connaissances vaut

$$17 \times 3 = 51.$$

*La contradiction.*

Le nombre $51$ est impair. Mais le lemme des poignées de main affirme que ce nombre doit être pair. Contradiction.

**Conclusion.** Notre supposition était fausse : il existe bien quatre élèves du lycée qui ont exactement le même nombre de connaissances.

**Ce qu'il faut retenir.** Deux idées se combinent ici. D'abord un comptage de type « tiroirs » : $34$ valeurs pour $102$ élèves, à trois par valeur, cela tombe pile et ne laisse aucune liberté. Ensuite un argument de parité, qui vient contredire cette répartition trop rigide.

## Going further

1. Reprenez le problème en supposant que chaque élève connaît au moins $69$ autres élèves. Le raisonnement devient nettement plus court : pourquoi ?
2. Dans un groupe de $n$ personnes, avec $n \geqslant 2$, montrer qu'il y en a toujours au moins deux qui ont le même nombre de connaissances. Indication : les valeurs $0$ et $n-1$ peuvent-elles apparaître toutes les deux ?
3. Dans le lycée de l'énoncé, peut-il exister cinq élèves ayant le même nombre de connaissances ? Peut-on l'affirmer à coup sûr ?
