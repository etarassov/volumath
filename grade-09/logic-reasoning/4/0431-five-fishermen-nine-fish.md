---
id: "0431"
title: "Cinq pêcheurs et neuf poissons"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 25
tags: [maximum, majoration, inegalites, optimisation]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, «Математический кружок (8 класс)», сост. А. Л. Канунников, 2017"
  reference: "Kan2017.pdf, листок 1 «Логика», задача 6"
  url: "https://mmmf.msu.ru/for_schools/Kan2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Cinq pêcheurs comparent leurs prises à la fin de la journée. Ils remarquent que, si l'on en prend deux au hasard, ces deux-là ont pêché ensemble au plus $9$ poissons.

Quel est le plus grand nombre de poissons que les cinq pêcheurs peuvent avoir pêchés en tout ?

Attention : il faut donner un exemple qui atteint ce nombre, **et** prouver qu'on ne peut pas faire mieux.

## Hints

1. Cherche d'abord un bon exemple. Si un pêcheur en a pris beaucoup, cela limite tous les autres : essaie plutôt de répartir les prises de façon assez équilibrée.
2. Un exemple à $21$ poissons existe. Trouve-le, et vérifie bien que deux pêcheurs quelconques n'en ont jamais plus de $9$ à eux deux.
3. Pour montrer qu'on ne peut pas dépasser $21$, range les pêcheurs du plus chanceux au moins chanceux : $a_1 \geqslant a_2 \geqslant a_3 \geqslant a_4 \geqslant a_5$.
4. Que se passerait-il si le **deuxième** pêcheur avait pris $5$ poissons ou plus ? Regarde alors $a_1 + a_2$.
5. Coupe la somme totale en deux morceaux : $(a_1 + a_2)$ d'un côté, $a_3 + a_4 + a_5$ de l'autre. Tu sais majorer chacun des deux.

## Solution

**Un exemple à 21 poissons.**

Supposons que les prises soient
$$5, \quad 4, \quad 4, \quad 4, \quad 4$$

Vérifions la condition. Deux pêcheurs pris au hasard ont pêché ensemble soit $5 + 4 = 9$ poissons, soit $4 + 4 = 8$ poissons. Dans les deux cas, c'est bien au plus $9$.

Le total vaut alors
$$5 + 4 + 4 + 4 + 4 = 21$$

**Pourquoi on ne peut pas faire mieux.**

Rangeons les cinq pêcheurs du plus chanceux au moins chanceux, et notons leurs prises
$$a_1 \geqslant a_2 \geqslant a_3 \geqslant a_4 \geqslant a_5$$

*Premier point : $a_2 \leqslant 4$.*

Raisonnons par l'absurde et supposons $a_2 \geqslant 5$. Comme $a_1 \geqslant a_2$, on aurait aussi $a_1 \geqslant 5$, et donc

$$a_1 + a_2 \geqslant 5 + 5 = 10$$

Ces deux pêcheurs-là auraient plus de $9$ poissons à eux deux, ce que l'énoncé interdit. Donc $a_2 \leqslant 4$.

*Deuxième point : les trois derniers ont au plus $4$ poissons chacun.*

En effet $a_3 \leqslant a_2 \leqslant 4$, et de même $a_4 \leqslant 4$ et $a_5 \leqslant 4$.

*On majore le total.*

Coupons la somme en deux morceaux :

$$a_1 + a_2 + a_3 + a_4 + a_5 = \underbrace{(a_1 + a_2)}_{\leqslant\, 9} + \underbrace{a_3 + a_4 + a_5}_{\leqslant\, 4 + 4 + 4}$$

Le premier morceau est au plus $9$ : c'est exactement la condition de l'énoncé appliquée aux deux premiers pêcheurs. Le second est au plus $12$ d'après le point précédent. Donc

$$a_1 + a_2 + a_3 + a_4 + a_5 \leqslant 9 + 12 = 21$$

**Conclusion.** Le total ne dépasse jamais $21$ poissons, et $21$ est atteint, par exemple avec $5, 4, 4, 4, 4$. La pêche totale la plus grande possible est donc de $21$ poissons.

**Ce qu'il faut retenir.** Pour un problème de maximum, il faut toujours deux choses : un exemple qui atteint la valeur annoncée, et une majoration qui prouve qu'on ne peut pas aller plus haut. Ranger les nombres dans l'ordre décroissant est souvent ce qui rend la majoration facile.

## Going further

1. Même question si deux pêcheurs quelconques ont pêché ensemble au plus $10$ poissons.
2. Même question avec la condition de départ (au plus $9$ poissons pour deux pêcheurs), mais avec $n$ pêcheurs au lieu de $5$.
3. Retour à cinq pêcheurs, mais la condition change : **trois** pêcheurs quelconques ont pêché ensemble au plus $9$ poissons. Quel est le total maximal ?
