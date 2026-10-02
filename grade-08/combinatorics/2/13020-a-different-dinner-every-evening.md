---
id: "13020"
title: "Un dîner différent chaque soir"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [denombrement, principe-multiplicatif, carres, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, test de rentrée (Coupe Animath d'automne) du 1er octobre 2014"
  reference: "2017-09_coupe_automne_2014.pdf, exercices collégiens, exercice 1 ; corrigé 2017-09_coupe_automne_2014_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2014.pdf"
---

## Statement

Un restaurant propose trois desserts, et exactement deux fois plus d'entrées que de plats principaux. Un dîner se compose d'une entrée, d'un plat principal et d'un dessert.

Quel est le plus petit nombre de plats principaux que le restaurant doit proposer pour qu'un client puisse manger un dîner différent chaque soir d'une année de $365$ jours ?

## Hints

1. Essaie d'abord avec $2$ plats principaux. Combien y a-t-il alors d'entrées ? Combien de dîners différents peut-on composer ?
2. Avec $p$ plats principaux, il y a $2p$ entrées. Pour chaque choix d'entrée, combien de façons y a-t-il de choisir le plat, puis le dessert ?
3. Il faut que le nombre de dîners soit au moins $365$. Cherche le plus petit entier $p$ qui convient.

## Solution

**Compter les dîners.** Notons $p$ le nombre de plats principaux. Il y a alors $2p$ entrées et $3$ desserts.

Pour composer un dîner, on choisit l'entrée ($2p$ possibilités), puis, pour chacune, le plat ($p$ possibilités), puis, pour chacun de ces couples, le dessert ($3$ possibilités). Le nombre de dîners différents est donc
$$2p \times p \times 3 = 6p^2 .$$
Par exemple, avec $p = 2$ : $4$ entrées, $2$ plats et $3$ desserts donnent $4 \times 2 \times 3 = 24$ dîners.

**Le nombre de dîners nécessaire.** Pour manger un dîner différent chaque soir de l'année, il faut au moins $365$ dîners différents. On cherche donc le plus petit entier $p$ tel que
$$6p^2 \geqslant 365 .$$

**On essaie les valeurs.** Quand $p$ augmente, $6p^2$ augmente.

- Pour $p = 7$ : $6 \times 49 = 294$, ce qui est moins que $365$. Ce n'est pas assez.
- Pour $p = 8$ : $6 \times 64 = 384$, ce qui est au moins $365$. Cela suffit.

Pour $p \leqslant 7$, on a $6p^2 \leqslant 294 < 365$, donc aucun nombre plus petit que $8$ ne convient.

**Conclusion.** Le restaurant doit proposer au moins $8$ plats principaux (et donc $16$ entrées). Il a alors $384$ dîners différents, assez pour toute l'année.

## Going further

1. Une année bissextile compte $366$ jours. La réponse change-t-elle ?
2. Le restaurant décide de proposer autant de desserts que de plats principaux, et toujours deux fois plus d'entrées que de plats. Combien de plats principaux lui faut-il au minimum ?
