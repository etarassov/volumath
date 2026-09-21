---
id: "8125"
title: "Les pistolets à eau"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [principe-de-l-extremum, recurrence, distances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 7"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Un nombre **impair** d'élèves, au moins trois, se placent dans une cour. Toutes les distances entre deux élèves sont différentes les unes des autres : il n'y a jamais deux paires d'élèves séparées par la même distance.

Au signal, chaque élève arrose avec son pistolet à eau l'élève le plus proche de lui. On suppose que personne ne rate sa cible.

1. Montrer que deux élèves s'arrosent mutuellement.
2. Montrer qu'au moins un élève reste sec.

## Hints

1. Pour la question 1, regarde toutes les distances entre deux élèves. Il y en a un nombre fini : il y a donc une plus petite.
2. Question 2 : commence par le cas de trois élèves. Qui est arrosé, qui ne l'est pas ?
3. Question 2, cas général : raisonne par récurrence sur le nombre d'élèves, en retirant la paire d'élèves les plus proches.
4. Deux situations se présentent quand on retire cette paire. Ou bien un troisième élève tirait sur l'un des deux, ou bien personne. Dans le premier cas, compte les tirs reçus.

## Solution

Notons $2n+1$ le nombre d'élèves, avec $n \geq 1$.

### 1. Deux élèves s'arrosent mutuellement

Il y a un nombre fini de paires d'élèves, donc un nombre fini de distances. Parmi elles, il y en a une plus petite que toutes les autres. Soient $A$ et $B$ les deux élèves qui réalisent cette plus petite distance.

Pour l'élève $A$ : pour tout autre élève $X$ différent de $B$, la distance $AX$ est l'une des autres distances, donc $AX > AB$ (elle ne peut pas être égale, puisque toutes les distances sont différentes). L'élève le plus proche de $A$ est donc $B$, et $A$ arrose $B$.

Le même raisonnement pour $B$ montre que $B$ arrose $A$.

**Les élèves $A$ et $B$ s'arrosent mutuellement.**

### 2. Un élève reste sec

Raisonnons par récurrence sur $n$, avec la propriété

> $P(n)$ : « quels que soient $2n+1$ élèves placés à des distances deux à deux distinctes, l'un d'eux reste sec. »

**Initialisation : $P(1)$, c'est-à-dire trois élèves.**

Soient $A$ et $B$ les deux élèves les plus proches ; d'après la question 1, ils s'arrosent mutuellement. Le troisième élève $C$ arrose l'élève le plus proche de lui, qui est $A$ ou $B$. Donc les seuls tirs partis visaient $A$ ou $B$ : personne n'a visé $C$, et $C$ reste sec.

**Hérédité : $P(n) \Rightarrow P(n+1)$, pour $n \geq 1$.**

Donnons-nous $2n+3$ élèves. Soient $A$ et $B$ les deux élèves les plus proches ; ils s'arrosent mutuellement.

*Cas 1 : un autre élève arrose $A$ ou $B$.*

Alors $A$ et $B$ reçoivent ensemble au moins $3$ tirs : celui de $A$ sur $B$, celui de $B$ sur $A$, et celui de cet autre élève.

Or chaque élève tire exactement une fois : il y a en tout $2n+3$ tirs. Il en reste donc au plus $2n+3-3 = 2n$ pour les $2n+1$ élèves autres que $A$ et $B$. Comme $2n < 2n+1$, l'un d'eux au moins ne reçoit aucun tir : il reste sec.

*Cas 2 : aucun autre élève n'arrose $A$ ni $B$.*

Retirons $A$ et $B$ de la cour. Il reste $2n+1$ élèves. Pour chacun d'eux, l'élève le plus proche n'était ni $A$ ni $B$ (sinon il les aurait arrosés) : chacun continue donc d'arroser exactement la même personne qu'avant, et cette personne fait partie des $2n+1$ restants.

Par hypothèse de récurrence, l'un de ces $2n+1$ élèves reste sec parmi eux. Et il n'est pas arrosé par $A$ ni par $B$, puisque ceux-ci s'arrosent entre eux. Il reste donc sec dans la cour entière.

**Conclusion.**

Dans les deux cas, $P(n+1)$ est vraie. Par récurrence, quel que soit le nombre impair d'élèves (au moins trois), **au moins un élève reste sec**.

Remarque : le caractère impair du nombre d'élèves est essentiel au cas 1. Avec un nombre pair d'élèves, tout le monde peut être arrosé : il suffit de les placer par paires très éloignées les unes des autres, chaque paire s'arrosant en interne.
