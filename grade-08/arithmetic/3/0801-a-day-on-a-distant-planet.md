---
id: "0801"
title: "Une journée sur une planète lointaine"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [diviseurs, decomposition, nombres-premiers]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers. Démonstrations par coloriage »"
  reference: "Moscou.Coloriage.pdf, exercice 1, d'après Mathematical Olympiads for Middle School (Moscou), 2012"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Moscou.Coloriage.pdf"
---

## Statement

Les habitants d'une planète éloignée divisent une journée en plusieurs heures, une heure en plusieurs minutes et une minute en plusieurs secondes.

Nous savons qu'il y a $77$ minutes dans une journée et $91$ secondes dans une heure.

Combien y a-t-il de secondes dans une journée sur cette planète éloignée ?

## Hints

1. Donne un nom à ce que tu cherches : $h$ le nombre d'heures dans une journée, $m$ le nombre de minutes dans une heure, $s$ le nombre de secondes dans une minute.
2. Écris avec ces lettres les deux renseignements de l'énoncé.
3. Tu obtiens $h \times m = 77$ et $m \times s = 91$. Que peut-on dire du nombre $m$ vis-à-vis de $77$ et de $91$ ?
4. Décompose $77$ et $91$ en produits de nombres premiers, et cherche les diviseurs communs.
5. « Plusieurs » veut dire au moins deux. Cela élimine un des cas.

## Solution

**Réponse : $1001$ secondes.**

**Étape 1. Nommer les trois inconnues.**

Appelons :

- $h$ le nombre d'heures dans une journée ;
- $m$ le nombre de minutes dans une heure ;
- $s$ le nombre de secondes dans une minute.

Ces trois nombres sont des entiers, et comme une journée contient *plusieurs* heures, une heure *plusieurs* minutes et une minute *plusieurs* secondes, chacun d'eux vaut au moins $2$.

**Étape 2. Traduire l'énoncé.**

Une journée contient $h$ heures, et chaque heure contient $m$ minutes : une journée contient donc $h \times m$ minutes. L'énoncé dit :
$$h \times m = 77.$$

De même, une heure contient $m$ minutes de $s$ secondes chacune, donc
$$m \times s = 91.$$

**Étape 3. Trouver $m$.**

Le nombre $m$ divise $77$ et il divise aussi $91$. Or
$$77 = 7 \times 11 \qquad \text{et} \qquad 91 = 7 \times 13.$$

Les diviseurs de $77$ sont $1$, $7$, $11$, $77$ ; ceux de $91$ sont $1$, $7$, $13$, $91$. Les seuls diviseurs communs sont $1$ et $7$.

Le cas $m = 1$ est exclu : une heure serait faite d'une seule minute, alors que l'énoncé dit *plusieurs* minutes. Il reste donc
$$m = 7.$$

On en déduit $h = 77 : 7 = 11$ et $s = 91 : 7 = 13$. Ces deux nombres valent bien au moins $2$, tout est cohérent : sur cette planète, une journée fait $11$ heures, une heure fait $7$ minutes, une minute fait $13$ secondes.

**Étape 4. Compter les secondes d'une journée.**

$$h \times m \times s = 11 \times 7 \times 13 = 1001.$$

On peut aussi le voir ainsi : une journée fait $77$ minutes, et chaque minute fait $13$ secondes, donc $77 \times 13 = 1001$ secondes. Ou encore : une journée fait $11$ heures de $91$ secondes, soit $11 \times 91 = 1001$ secondes.

**Conclusion.** Une journée dure $1001$ secondes sur cette planète.

## Going further

1. Le nombre $1001 = 7 \times 11 \times 13$ est célèbre. Calcule $1001 \times 437$ et regarde le résultat : comprends-tu pourquoi multiplier un nombre de trois chiffres par $1001$ revient à l'écrire deux fois de suite ?
2. Sur une autre planète, il y a $60$ minutes dans une journée et $90$ secondes dans une heure. Cette fois, combien de réponses sont possibles ?
