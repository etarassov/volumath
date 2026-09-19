---
id: "0485"
title: "Chacun lié à exactement trois autres"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [graphe, parite, comptage, absurde]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 14, задача 1, с. 61"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

a) Peut-on trouver cinq mots tels que chacun ait au moins une lettre commune avec exactement
   trois des quatre autres ?
b) Peut-on tracer dans le plan neuf segments tels que chacun en coupe exactement trois autres ?
c) Peut-on placer sept dames sur un échiquier de telle sorte que chacune en attaque exactement
   trois autres ?

## Hints

1. Les trois questions se ressemblent beaucoup. Essaie de les poser toutes les trois de la même
   façon.
2. Dessine un point par objet (un point par mot, par segment, par dame) et relie deux points
   par un trait lorsque les deux objets sont « liés » : une lettre commune, un croisement, une
   attaque.
3. La question devient alors : peut-on dessiner cinq points (puis neuf, puis sept) de façon
   qu'il parte exactement trois traits de chaque point ?
4. Compte les extrémités des traits de deux façons : d'abord trait par trait, puis point par
   point. $5 \times 3 = 15$ : ce nombre peut-il être le double du nombre de traits ?

## Solution

**L'idée : les trois questions sont la même question déguisée, et on compte deux fois la même
chose.**

**Étape 1. Un dessin de points et de traits.**

Dans chacune des trois situations, traduisons l'énoncé de la même façon :

- on dessine un **point** pour chaque objet (chaque mot, chaque segment, chaque dame) ;
- on relie deux points par un **trait** lorsque les deux objets sont liés : les deux mots ont
  une lettre commune, les deux segments se coupent, les deux dames s'attaquent.

Ce codage est légitime parce que les trois relations sont **symétriques** : si le mot $M$ a une
lettre commune avec le mot $N$, alors $N$ a une lettre commune avec $M$ ; si un segment en
coupe un autre, l'autre le coupe aussi ; si une dame en attaque une autre, elle est attaquée en
retour. Un seul trait peut donc représenter le lien entre deux objets. Un tel dessin s'appelle
un **graphe** : les points sont ses sommets, les traits ses arêtes.

Les trois questions deviennent alors une seule et même question :

> peut-on dessiner $n$ points de façon qu'il parte exactement trois traits de chaque point,
> avec $n = 5$, puis $n = 9$, puis $n = 7$ ?

**Étape 2. On compte les extrémités des traits, de deux façons.**

*En comptant trait par trait.* Chaque trait a exactement deux extrémités. S'il y a $a$ traits,
le nombre total d'extrémités vaut donc $2a$ : c'est un nombre **pair**.

*En comptant point par point.* De chaque point partent exactement trois traits, et chacun de
ces traits y a une extrémité. Avec $n$ points, le nombre total d'extrémités vaut donc $3n$.

Les deux comptages portent sur la même chose, donc

$$3n = 2a$$

Autrement dit, $3n$ doit être un nombre pair.

**Étape 3. Les trois réponses.**

- a) $n = 5$ : $3 \times 5 = 15$, qui est impair. Impossible.
- b) $n = 9$ : $3 \times 9 = 27$, qui est impair. Impossible.
- c) $n = 7$ : $3 \times 7 = 21$, qui est impair. Impossible.

**Conclusion.**

Dans les trois cas, la réponse est **non**. Aucun dessin de ce genre ne peut exister, quels que
soient les mots choisis, la position des segments ou celle des dames.

**Ce qu'il faut retenir.** Dans n'importe quel graphe, la somme des nombres de traits partant
de chaque point vaut deux fois le nombre de traits : elle est donc paire. On en déduit que le
nombre de points d'où part un nombre **impair** de traits est toujours pair. C'est le **lemme
des poignées de main**.

## Going further

1. Montrer que, dans n'importe quel groupe de personnes qui se serrent la main, le nombre de
   personnes ayant serré un nombre impair de mains est pair.
2. Reprendre la question a) avec « exactement **deux** autres » à la place de « exactement
   trois autres ». Est-ce possible ? Essayer de trouver cinq mots qui conviennent.
3. Peut-on tracer **six** segments dont chacun en coupe exactement trois autres ?
