---
id: "0609"
title: "La côte gravie à 30 km/h"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [vitesse-moyenne, duree, proportionnalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 39, d'après une préparation aux olympiades"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Un automobiliste gravit difficilement une côte de $1$ km à $30$ km/h. Il doit encore
effectuer une descente, de $1$ km également. Peut-il atteindre une vitesse moyenne de
$60$ km/h sur les $2$ km ?

## Hints

1. La vitesse moyenne sur le trajet entier n'est pas la moyenne des deux vitesses : c'est la distance totale divisée par le temps total.
2. Combien de temps faudrait-il, en tout, pour parcourir $2$ km à la vitesse moyenne de $60$ km/h ?
3. Combien de temps la montée a-t-elle déjà pris ? Compare avec la réponse précédente.

## Solution

Raisonnons en **temps**, et pas en vitesses.

**Le temps qu'il faudrait.** Rouler $2$ km à la vitesse moyenne de $60$ km/h, cela veut dire
mettre, en tout,

$$\frac{2}{60} \text{ heure} = \frac{1}{30} \text{ heure} = 2 \text{ minutes.}$$

**Le temps déjà dépensé.** La montée fait $1$ km parcouru à $30$ km/h, elle a donc pris

$$\frac{1}{30} \text{ heure} = 2 \text{ minutes.}$$

**Conclusion.** Les $2$ minutes autorisées pour tout le trajet sont déjà entièrement
consommées par la montée. Il ne reste plus une seconde pour la descente, qui fait pourtant
$1$ km. Même si l'automobiliste descendait à $200$ km/h, à $1000$ km/h, ou à n'importe
quelle vitesse, le temps total dépasserait $2$ minutes et la vitesse moyenne resterait
strictement inférieure à $60$ km/h.

**Réponse : non, c'est impossible.**

## Going further

Autre façon de le dire : si $v$ est la vitesse de la descente en km/h, le temps total vaut
$\frac{1}{30} + \frac{1}{v}$ heure et la vitesse moyenne vaut

$$\frac{2}{\frac{1}{30} + \frac{1}{v}}.$$

Comme $\frac{1}{v} > 0$, le dénominateur est strictement plus grand que $\frac{1}{30}$,
donc cette vitesse moyenne est strictement inférieure à $2 \div \frac{1}{30} = 60$.
Elle s'approche de $60$ km/h quand $v$ devient énorme, mais ne l'atteint jamais.
