---
id: "17828"
title: "Combien de fulls au poker ?"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, principe-multiplicatif, cartes]
adapted_from: null
see_also: ["8301"]
same_as: ["2409"]
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercice 2, p.67 ; solution p.67"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Un jeu de $52$ cartes comporte $13$ valeurs (as, $2$, $3$, …, $10$, valet, dame, roi) et, pour chaque valeur, $4$ cartes : une de chaque couleur (cœur, carreau, trèfle, pique).

Au poker, une main est formée de $5$ cartes, et l'ordre des cartes dans la main ne compte pas. Un **full** est une main formée de $3$ cartes d'une même valeur et de $2$ cartes d'une autre valeur, par exemple trois rois et deux $7$.

Combien y a-t-il de fulls différents ?

## Hints

1. Un full est décrit par deux choix de valeurs : celle du brelan (les trois cartes) et celle de la paire. Combien de façons de faire ces deux choix ?
2. Une fois la valeur du brelan choisie, combien y a-t-il de façons de prendre $3$ cartes parmi les $4$ de cette valeur ? Pensez à la carte qu'on laisse.
3. Combien y a-t-il de façons de prendre $2$ cartes parmi $4$ ? Faites la liste des paires de couleurs.

## Solution

On construit un full en quatre choix successifs, et l'on multiplie les nombres de possibilités.

**1. La valeur des trois cartes.** Il y a $13$ choix.

**2. La valeur des deux cartes.** Elle doit être différente de la première : il reste $12$ choix. L'ordre de ces deux valeurs compte ici, car « trois rois et deux $7$ » n'est pas la même main que « trois $7$ et deux rois ».

**3. Les trois cartes de la première valeur.** Il faut prendre $3$ cartes parmi les $4$ de cette valeur. Cela revient à choisir la carte qu'on laisse : $4$ choix.

**4. Les deux cartes de la seconde valeur.** Il faut prendre $2$ cartes parmi $4$. En notant les couleurs C, K, T, P, les paires possibles sont

$$\text{CK},\ \text{CT},\ \text{CP},\ \text{KT},\ \text{KP},\ \text{TP},$$

soit $6$ choix.

Chaque full est obtenu exactement une fois par cette suite de choix. Le nombre de fulls est donc

$$13 \times 12 \times 4 \times 6 = 3\,744 .$$

**Conclusion : il y a $3\,744$ fulls différents.**

## Going further

Il y a en tout $2\,598\,960$ mains de $5$ cartes. Un full sort donc environ une fois sur $700$. Combien y a-t-il de mains formées de $4$ cartes de la même valeur et d'une cinquième carte quelconque ? Est-ce plus rare ou plus fréquent qu'un full ?
