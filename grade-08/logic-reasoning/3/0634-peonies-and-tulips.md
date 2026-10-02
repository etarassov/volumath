---
id: "0634"
title: "Les pivoines et les tulipes"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [raisonnement, comptage, ordre, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Ensembles. Géométrie »"
  reference: "Ensembles.Geometry.pdf, 22 septembre 2023, problème P 5, section « Problèmes divers », d'après A. V. Shapovalov"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Ensembles.Geometry.pdf"
---

## Statement

Sur le chemin qui relie la maison de Dunno à celle de Sineglazka, des fleurs poussent en une seule ligne, le long du chemin : $15$ pivoines et $15$ tulipes, mélangées dans un ordre quelconque.

En allant rendre visite à Dunno, Sineglazka arrose les fleurs une par une, dans l'ordre où elle les rencontre. Juste après avoir arrosé la dixième tulipe, elle n'a plus d'eau, et il reste encore dix plantes à arroser.

Le lendemain, en allant rendre visite à Sineglazka, Dunno cueille des fleurs pour faire un bouquet : il coupe toutes les fleurs qu'il rencontre sur son chemin, sans en laisser une seule. Après la sixième tulipe, il décide qu'il a assez de fleurs pour son bouquet et il s'arrête.

Combien de fleurs reste-t-il au bord du chemin ?

## Hints

1. Il y a $30$ fleurs en tout. Combien Sineglazka en a-t-elle arrosé avant de manquer d'eau ?
2. Quelle place occupe, dans l'ordre où Sineglazka avance, la dernière fleur qu'elle a arrosée ? Et cette fleur, c'est une pivoine ou une tulipe ?
3. Combien y a-t-il de tulipes parmi les dix fleurs qu'elle n'a pas pu arroser ?
4. Dunno fait le chemin dans l'autre sens. Quelles fleurs rencontre-t-il en premier ?
5. Après ces dix premières fleurs, il ne lui manque plus qu'une seule tulipe. Quelle est la fleur suivante sur sa route ?

## Solution

**Ce que fait Sineglazka.**

Il y a en tout $15 + 15 = 30$ fleurs. Sineglazka s'arrête en laissant dix plantes non arrosées : elle en a donc arrosé

$$30 - 10 = 20.$$

La dernière qu'elle a arrosée est la vingtième dans son sens de marche, et c'est la dixième tulipe.

Numérotons les fleurs de $1$ à $30$ **dans le sens de marche de Sineglazka**. Alors :

- la fleur numéro $20$ est une tulipe ;
- parmi les fleurs $1$ à $20$ il y a exactement $10$ tulipes ;
- donc parmi les fleurs $21$ à $30$, celles qu'elle n'a pas arrosées, il y a

$$15 - 10 = 5 \text{ tulipes}.$$

**Ce que fait Dunno.**

Dunno part de chez lui, donc de l'autre bout du chemin : il rencontre les fleurs dans l'ordre $30, 29, 28, \ldots$ Il coupe tout sur son passage.

Les dix premières fleurs qu'il coupe sont les fleurs $30, 29, \ldots, 21$, c'est-à-dire exactement celles que Sineglazka n'a pas arrosées. Elles contiennent $5$ tulipes. Après ces dix fleurs, Dunno a donc cinq tulipes dans les mains : il lui en manque encore une.

La fleur suivante sur sa route est la fleur numéro $20$. Or on sait que c'est une tulipe, puisque c'était la dixième tulipe de Sineglazka. C'est donc la sixième tulipe de Dunno : il la coupe et il s'arrête aussitôt.

**Le compte final.**

Dunno a coupé les fleurs numéros $30, 29, \ldots, 21$, puis la fleur $20$, soit

$$10 + 1 = 11 \text{ fleurs}.$$

Il reste au bord du chemin

$$30 - 11 = 19 \text{ fleurs}.$$

**Conclusion.** Il reste $19$ fleurs au bord du chemin.

Remarquons que l'on n'a jamais eu besoin de savoir dans quel ordre exact les pivoines et les tulipes étaient plantées : la réponse est la même pour tous les mélanges possibles.

## Going further

1. Parmi les $19$ fleurs qui restent, combien y a-t-il de tulipes ? Et de pivoines ?
2. Et si Dunno s'était arrêté après la cinquième tulipe au lieu de la sixième, combien de fleurs resterait-il ? Attention : cette fois la réponse dépend-elle de l'ordre des fleurs ?
3. Reprends le problème avec $n$ pivoines et $n$ tulipes, Sineglazka s'arrêtant après la $k$-ième tulipe avec $p$ plantes non arrosées. À quelle condition la réponse ne dépend-elle pas du mélange ?
