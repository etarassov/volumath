---
id: "0454"
title: "Le carré 2017 × 2017 découpé en rectangles"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [parite, perimetre, aire, decoupage, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, Математический кружок (8 класс), сост. А. Л. Канунников"
  reference: "Kan2017.pdf, листок 6, задача 5"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Un carré quadrillé de $2017$ cases sur $2017$ cases est découpé en plusieurs rectangles, en suivant les lignes du quadrillage.

Montrer qu'au moins un de ces rectangles a un périmètre divisible par $4$.

## Hints

1. Un rectangle dont les côtés mesurent $a$ et $b$ cases a pour périmètre $2(a+b)$. À quelle condition sur $a$ et sur $b$ ce périmètre est-il divisible par $4$ ?
2. Tu cherches donc un rectangle dont les deux côtés ont la même parité. Cherche-le parmi ceux dont les deux côtés sont impairs. Que peut-on dire de l'aire d'un tel rectangle ?
3. Il reste à montrer qu'un rectangle d'aire impaire existe forcément. Raisonne par l'absurde : si toutes les aires étaient paires, que vaudrait leur somme ? Et à quoi cette somme est-elle égale ?

## Solution

**Étape 1. Traduire « périmètre divisible par $4$ ».**

Un rectangle du découpage a des côtés entiers, disons $a$ et $b$ cases. Son périmètre vaut $2(a+b)$.

$$2(a+b) \ \text{divisible par } 4 \iff a+b \ \text{est pair} \iff a \ \text{et} \ b \ \text{ont la même parité}$$

(Deux nombres de même parité ont une somme paire ; deux nombres de parités différentes ont une somme impaire.)

Il suffit donc de trouver **un** rectangle dont les deux côtés sont tous les deux pairs, ou tous les deux impairs.

**Étape 2. On part à la chasse au rectangle à deux côtés impairs.**

Pourquoi ce cas plutôt que l'autre ? Parce qu'il se lit directement sur l'aire :

$$a \ \text{et} \ b \ \text{impairs} \iff ab \ \text{impair}$$

En effet, le produit de deux nombres impairs est impair ; et dès que l'un des deux facteurs est pair, le produit est pair.

Tout revient donc à ceci : **montrer qu'au moins un rectangle du découpage a une aire impaire.**

**Étape 3. On raisonne par l'absurde.**

Supposons que non, c'est-à-dire que tous les rectangles du découpage ont une aire paire.

Les rectangles recouvrent le carré sans trou ni chevauchement, donc la somme de leurs aires est exactement l'aire du carré :

$$\text{somme des aires des rectangles} = 2017 \times 2017$$

À gauche, une somme de nombres pairs : elle est paire.

À droite, le produit de deux nombres impairs : il est impair.

Un nombre pair ne peut pas être égal à un nombre impair. Contradiction.

Notre supposition était donc fausse : **au moins un rectangle du découpage a une aire impaire.**

**Conclusion.**

Prenons ce rectangle. Son aire $ab$ est impaire, donc ses deux côtés $a$ et $b$ sont impairs, donc $a+b$ est pair, donc son périmètre $2(a+b)$ est le double d'un nombre pair : il est divisible par $4$.

Quel que soit le découpage, il existe toujours un rectangle dont le périmètre est divisible par $4$.

## Going further

1. Montrer que le nombre de rectangles d'aire impaire est lui-même impair. En particulier il y en a toujours au moins un, ce qui redonne le résultat.
2. Pour un carré de $2018$ cases sur $2018$, la conclusion peut être fausse. Trouver un découpage où aucun rectangle n'a un périmètre divisible par $4$.
3. Pour quels entiers $n$ la propriété est-elle vraie quel que soit le découpage du carré $n \times n$ ?
