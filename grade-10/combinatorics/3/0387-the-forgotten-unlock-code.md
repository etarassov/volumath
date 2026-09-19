---
id: "0387"
title: "Le code oublié"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chiffres, code, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 8 «Сложить или умножить?», задача 7"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

Nicolas a protégé son téléphone par un code de déverrouillage de quatre chiffres, puis il l'a oublié.

Il se souvient seulement de ceci : dans son code, on pouvait lire le nombre $23$ et on pouvait aussi lire le nombre $37$. Autrement dit, quelque part dans le code un $2$ était immédiatement suivi d'un $3$, et quelque part aussi un $3$ était immédiatement suivi d'un $7$.

Combien d'essais faut-il à Nicolas, dans le pire des cas, pour être sûr de retrouver son code ? (Un code peut commencer par un $0$.)

## Hints

1. Combien faut-il de chiffres, au minimum, pour pouvoir lire à la fois $23$ et $37$ ?
2. Le $3$ de $23$ et le $3$ de $37$ peuvent être le même chiffre du code, ou bien deux chiffres différents. Sépare ces deux cas.
3. Premier cas : le code contient la suite $237$. Où cette suite de trois chiffres peut-elle se placer dans un code de quatre chiffres ?
4. Deuxième cas : le code utilise alors quatre chiffres, $2$, $3$, $3$ et $7$, et les deux blocs $23$ et $37$ se suivent. Dans quel ordre peuvent-ils venir ?
5. Avant de conclure, vérifie qu'aucun code n'a été compté deux fois.

## Solution

**Pourquoi la réponse n'est pas $2$.**

La première idée qui vient est de coller les deux blocs : $2337$ et $3723$. Mais ce n'est pas la seule façon de lire $23$ et $37$ dans un même code : le chiffre $3$ peut servir **deux fois**, une fois comme fin de $23$ et une fois comme début de $37$. C'est ce qui se passe dans un code comme $2375$.

Il faut donc séparer deux cas.

**Cas 1 : le $3$ de $23$ et le $3$ de $37$ sont le même chiffre.**

Le code contient alors la suite $237$, qui occupe trois places voisines. Dans un code de quatre chiffres, cette suite peut se placer de deux façons :

- aux places $1$, $2$, $3$ : le code s'écrit $237\ast$, et le dernier chiffre est libre, ce qui donne $10$ codes ;
- aux places $2$, $3$, $4$ : le code s'écrit $\ast237$, et le premier chiffre est libre, ce qui donne encore $10$ codes.

Ces deux familles n'ont aucun code en commun : dans la première, le deuxième chiffre est un $3$ ; dans la seconde, c'est un $2$. Un même code ne peut pas avoir les deux.

Cela fait $10 + 10 = 20$ codes.

**Cas 2 : ce sont deux chiffres $3$ différents.**

Le code contient alors quatre chiffres distincts par leur place : le $2$, son $3$, l'autre $3$ et le $7$. Comme le code n'a que quatre chiffres, il est fait exactement de ces quatre-là, et il est donc formé des deux blocs $23$ et $37$ mis bout à bout. Deux possibilités :

- le bloc $23$ d'abord : $2337$ ;
- le bloc $37$ d'abord : $3723$.

Cela fait $2$ codes de plus. Aucun des deux n'apparaît dans le cas 1, car ni $2337$ ni $3723$ ne contient la suite $237$.

**Le compte.**

$$20 + 2 = 22 .$$

**Conclusion.** Il y a exactement $22$ codes compatibles avec les souvenirs de Nicolas. Dans le pire des cas, il lui faut donc $22$ essais, et au bout du vingt-deuxième il est certain d'avoir déverrouillé son téléphone.

## Going further

1. Reprendre la question si Nicolas se souvient que son code contenait les nombres $23$ et $45$. Pourquoi la réponse est-elle si différente ?
2. Nicolas se rappelle en plus que son code ne comportait aucun $0$. Combien d'essais lui faut-il alors ?
3. Combien y a-t-il de codes de quatre chiffres dans lesquels on peut lire le nombre $23$, sans rien exiger de plus ? (Attention, un code peut le contenir deux fois.)
