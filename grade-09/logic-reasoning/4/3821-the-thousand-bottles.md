---
id: "3821"
title: "Les mille bouteilles et les souris"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [information, binaire, puissances de deux, strategie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 23 (Challenge)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Tu as $1000$ bouteilles de jus de fruits pour une fête qui commence dans $20$ heures. On t'avertit qu'une bouteille, et une seule, contient un poison, mais on ne te dit pas laquelle.

Tu disposes de souris de laboratoire. Tu peux faire boire à une souris quelques gouttes d'autant de bouteilles que tu veux, mélangées ou non. Une souris qui a goûté au poison meurt exactement $18$ heures plus tard ; les autres ne montrent rien.

Comme il ne reste que $20$ heures, tu n'as le temps que d'une seule série de tests : toutes les souris boivent en même temps, et $18$ heures plus tard tu regardes lesquelles sont mortes.

Quel est le nombre minimal de souris qui te permet d'être sûr d'identifier la bouteille empoisonnée ?

## Hints

1. Avec une seule souris, que peux-tu distinguer ? Et avec deux ?
2. À la fin de l'expérience, la seule chose que tu observes est, pour chaque souris, « morte » ou « vivante ». Combien de résultats d'observation différents peux-tu obtenir avec $m$ souris ?
3. Pour être sûr, il faut que deux bouteilles différentes ne puissent jamais donner la même observation. Compare le nombre d'observations possibles à $1000$.
4. Pour construire la solution, numérote les bouteilles de $0$ à $999$ et écris chaque numéro en base $2$.

## Solution

**L'idée : chaque souris fournit exactement un bit d'information, mort ou vivante.**

**Étape 1. Un minorant : il faut au moins $10$ souris.**

Supposons qu'on utilise $m$ souris. Une fois l'expérience terminée, tout ce que l'on observe est, pour chacune des $m$ souris, un état parmi deux : morte ou vivante. Il y a donc au plus

$$2^m$$

observations différentes possibles.

Le plan de test (« quelle souris boit quelles bouteilles ») est choisi à l'avance. Si deux bouteilles différentes donnaient la même observation, on ne pourrait pas les distinguer, et on ne serait pas sûr de trouver la bonne. Il faut donc que les $1000$ bouteilles donnent $1000$ observations deux à deux différentes, d'où

$$2^m \geqslant 1000.$$

Or

$$2^9 = 512 < 1000 \qquad \text{et} \qquad 2^{10} = 1024 \geqslant 1000.$$

Neuf souris ne suffisent donc pas : il en faut au moins $10$.

**Étape 2. Dix souris suffisent.**

Numérotons les bouteilles de $0$ à $999$, et écrivons chaque numéro en base $2$ sur $10$ chiffres (des $0$ devant si besoin). Par exemple

$$37 = 0000100101_2.$$

Appelons les souris $S_1, S_2, \ldots, S_{10}$, la souris $S_k$ correspondant au $k$-ième chiffre binaire en partant de la droite.

**Plan de test.** La souris $S_k$ goûte à toutes les bouteilles dont le $k$-ième chiffre binaire vaut $1$.

Ainsi la bouteille $37$ est goûtée par $S_1$, $S_3$ et $S_6$, et par personne d'autre.

**Lecture du résultat.** Dix-huit heures plus tard, on forme le nombre écrit en base $2$ dont le $k$-ième chiffre vaut $1$ si $S_k$ est morte, et $0$ si elle est vivante.

La souris $S_k$ meurt exactement quand elle a goûté à la bouteille empoisonnée, c'est-à-dire exactement quand le $k$-ième chiffre du numéro de cette bouteille vaut $1$. Le nombre lu est donc exactement le numéro de la bouteille empoisonnée.

**Conclusion.** Il faut, et il suffit, de $10$ souris.

## Going further

1. Avec $10$ souris, jusqu'à combien de bouteilles pourrait-on traiter ?
2. Combien de souris faudrait-il pour $1\,000\,000$ de bouteilles ?
3. Et si l'on savait qu'il y a exactement **deux** bouteilles empoisonnées, le raisonnement de l'étape 1 donnerait-il encore le même minorant ? (On ne demande pas la réponse exacte, seulement de reprendre le comptage des observations.)
