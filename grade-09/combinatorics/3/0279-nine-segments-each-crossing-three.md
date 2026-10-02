---
id: "0279"
title: "Neuf segments qui se croisent"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [segments, double-comptage, parite, impossibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 7, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

Peut-on tracer dans le plan $9$ segments de telle sorte que chacun d'eux coupe exactement $3$ des autres ?

## Hints

1. Essayez de dessiner. Vous n'y arriverez pas : cherchez plutôt à montrer que c'est impossible.
2. Intéressez-vous au nombre total de croisements de la figure, et essayez de le calculer de deux façons différentes.
3. Passez en revue les $9$ segments, et pour chacun comptez combien il en coupe. Que vaut la somme de ces $9$ nombres ?
4. Dans cette somme, un croisement entre deux segments $A$ et $B$ est compté deux fois : une fois pour $A$, une fois pour $B$. Que peut-on en déduire sur la parité de la somme ?

## Solution

**L'idée : compter les croisements de deux façons.**

Supposons qu'une telle figure existe et raisonnons par l'absurde.

Appelons **croisement** une paire de segments qui se coupent, et notons $N$ le nombre total de croisements de la figure. Ce nombre $N$ est bien sûr un entier.

**Premier comptage : segment par segment.**

Passons en revue les $9$ segments un par un. Pour chacun, l'énoncé nous dit qu'il coupe exactement $3$ autres segments. En additionnant ces $9$ nombres, on trouve

$$\underbrace{3 + 3 + \dots + 3}_{9 \text{ termes}} = 9 \times 3 = 27.$$

**Que compte vraiment cette somme ?**

Prenons un croisement de la figure, formé de deux segments $A$ et $B$ qui se coupent. Il apparaît deux fois dans la somme :

- une fois quand on passe en revue $A$, car $B$ fait partie des $3$ segments que $A$ coupe ;
- une fois quand on passe en revue $B$, car $A$ fait partie des $3$ segments que $B$ coupe.

Et il n'apparaît pas ailleurs, car les autres segments ne sont ni $A$ ni $B$. Donc **chaque croisement est compté exactement deux fois** dans la somme, et cette somme vaut $2N$.

**La contradiction.**

On obtient

$$2N = 27.$$

Mais $2N$ est un nombre pair, alors que $27$ est impair. Un nombre pair ne peut pas être égal à un nombre impair.

Autrement dit, il faudrait $N = \dfrac{27}{2} = \text{13,5}$ croisements, ce qui n'a pas de sens : on ne peut pas avoir un demi-croisement.

**Conclusion.** Non, il est impossible de tracer $9$ segments dont chacun coupe exactement $3$ autres.

**Ce qu'il faut retenir.** Quand on compte des objets qui relient deux choses (des croisements, des poignées de main, des routes entre villes), la somme des comptes vus « depuis chaque objet » vaut toujours le double du nombre de liens. Cette somme est donc toujours paire.

## Going further

1. Montrer qu'avec $9$ segments dont chacun coupe exactement $2$ autres, c'est possible. Indication : trois segments qui se coupent deux à deux forment déjà un petit paquet où chacun en coupe $2$.
2. Montrer qu'avec $8$ segments dont chacun coupe exactement $3$ autres, c'est possible.
3. On veut $n$ segments dont chacun coupe exactement $k$ autres. Pour quels couples $(n, k)$ le raisonnement ci-dessus interdit-il la figure ?
