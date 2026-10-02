---
id: "3806"
title: "Les coffres et les pièces d'or"
grade: 8
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, mise-en-equation, division-euclidienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 5, d'après AMC 8 2017, problème 17 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Un pirate possède un certain nombre de pièces d'or et un certain nombre de coffres vides.

Il essaie d'abord de mettre $9$ pièces dans chaque coffre : il y arrive, mais $2$ coffres restent alors vides.

Il recommence en mettant $6$ pièces dans chaque coffre : cette fois tous les coffres sont servis, et il lui reste $3$ pièces dans la main.

Combien le pirate a-t-il de pièces d'or ?

## Hints

1. Appelle $c$ le nombre de coffres. Combien de coffres reçoivent des pièces dans le premier essai ?
2. Écris le nombre de pièces de deux façons, une pour chaque essai.
3. Les deux expressions décrivent le même nombre de pièces : égale-les et résous l'équation.

## Solution

**L'idée : compter les pièces deux fois, une fois par essai, et écrire que les deux comptes sont égaux.**

Notons $c$ le nombre de coffres.

**Étape 1. Le premier essai.**

Deux coffres restent vides, donc $c - 2$ coffres reçoivent chacun $9$ pièces, et il ne reste rien. Le nombre de pièces est donc

$$9(c - 2).$$

**Étape 2. Le deuxième essai.**

Les $c$ coffres reçoivent chacun $6$ pièces, et il reste $3$ pièces. Le nombre de pièces est donc

$$6c + 3.$$

**Étape 3. On résout.**

C'est le même trésor dans les deux cas :

$$9(c - 2) = 6c + 3.$$

On développe :

$$9c - 18 = 6c + 3.$$

On retire $6c$ des deux côtés, puis on ajoute $18$ :

$$3c = 21, \qquad c = 7.$$

**Étape 4. On revient aux pièces.**

$$9 \times (7 - 2) = 9 \times 5 = 45.$$

**Vérification.** Avec $7$ coffres et $45$ pièces : $45 = 9 \times 5$, donc cinq coffres pleins et $2$ coffres vides. Et $45 = 6 \times 7 + 3$, donc $6$ pièces par coffre et $3$ pièces restantes. Tout concorde.

**Conclusion.** Le pirate a $45$ pièces d'or (et $7$ coffres).

## Going further

1. Reprends le problème si, avec $9$ pièces par coffre, ce sont $3$ coffres qui restent vides.
2. Le pirate veut maintenant répartir ses $45$ pièces en parts égales sans qu'il en reste. Quels nombres de coffres peut-il utiliser ?
