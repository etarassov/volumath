---
id: "0134"
title: "L'angle des aiguilles à 3 h 05"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [angles, horloge, fractions, degres]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017.pdf, листок 14, задача 5"
  url: "https://mmmf.msu.ru/for_schools/Ast2017.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017.pdf"
---

## Statement

Une horloge possède une aiguille des heures et une aiguille des minutes, qui avancent toutes les deux de façon régulière.

Quel angle forment ces deux aiguilles à $3$ h $05$ ?

## Hints

1. Le cadran est partagé en $12$ intervalles égaux, d'une graduation horaire à la suivante. Combien mesure l'angle correspondant à un de ces intervalles ?
2. À $3$ h $05$, où se trouve exactement l'aiguille des minutes ?
3. Attention au piège : à $3$ h $05$, l'aiguille des heures n'est plus exactement sur le $3$. En $60$ minutes elle parcourt un intervalle entier. Quelle fraction d'intervalle parcourt-elle en $5$ minutes ?

## Solution

**Étape 1. La valeur d'un intervalle du cadran.**

Le cadran est partagé en $12$ intervalles égaux, du $12$ au $1$, du $1$ au $2$, et ainsi de suite. Un tour complet vaut $360°$, donc chaque intervalle correspond à un angle de

$$360° : 12 = 30°.$$

**Étape 2. La position de l'aiguille des minutes.**

En $5$ minutes, l'aiguille des minutes passe du $12$ au $1$, c'est-à-dire un intervalle. Elle se trouve donc à $30°$ de la position « midi », dans le sens des aiguilles d'une montre.

**Étape 3. La position de l'aiguille des heures.**

C'est là qu'il faut être attentif : l'aiguille des heures ne saute pas d'une graduation à l'autre, elle avance sans arrêt. Elle met $60$ minutes pour parcourir un intervalle complet, soit $30°$.

En $5$ minutes, c'est-à-dire pendant le douzième d'une heure, elle parcourt donc le douzième d'un intervalle :

$$30° : 12 = \text{2,5}°.$$

À $3$ h précises, l'aiguille des heures est sur le $3$, à $3 \times 30° = 90°$ de la position « midi ». À $3$ h $05$, elle se trouve donc à

$$90° + \text{2,5}° = \text{92,5}°.$$

**Étape 4. L'angle entre les deux aiguilles.**

Les deux aiguilles sont repérées à partir de la même position « midi ». L'angle qu'elles forment est la différence :

$$\text{92,5}° - 30° = \text{62,5}°.$$

**Conclusion.**

À $3$ h $05$, les deux aiguilles forment un angle de $\text{62,5}°$, c'est-à-dire $62°30'$.

Remarquons que la réponse $60°$, qui vient tout de suite à l'esprit en comptant deux intervalles de $30°$, est fausse : elle oublie que l'aiguille des heures a, elle aussi, un peu avancé.

## Going further

1. Quel angle forment les aiguilles à $3$ h $30$ ?
2. Entre $3$ h et $4$ h, à quel moment exactement les deux aiguilles sont-elles superposées ?
3. Combien de fois par jour les deux aiguilles se superposent-elles ?
