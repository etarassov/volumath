---
id: "3816"
title: "Le reste du trajet"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [vitesse moyenne, equation, proportionnalite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 4, d'après AMC 8 2019, problème 16 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Quentin roule $15$ km à la vitesse moyenne de $30$ km/h.

Combien de kilomètres doit-il encore rouler, à la vitesse de $55$ km/h, pour que sa vitesse moyenne sur la totalité du trajet soit de $50$ km/h ?

## Hints

1. Une vitesse moyenne n'est pas la moyenne des vitesses : c'est la distance totale divisée par le temps total.
2. Calcule d'abord le temps mis pour les $15$ premiers kilomètres.
3. Appelle $d$ la distance qui reste à parcourir. Exprime le temps de cette deuxième partie, puis écris que la distance totale divisée par le temps total vaut $50$.

## Solution

**L'idée : revenir à la définition, vitesse moyenne = distance totale ÷ temps total.**

**Étape 1. La première partie du trajet.**

$$t_1 = \frac{15}{30} = \text{0,5} \text{ h}.$$

**Étape 2. La deuxième partie.**

Notons $d$ la distance qui reste à parcourir, en kilomètres, à $55$ km/h. Elle prend

$$t_2 = \frac{d}{55} \text{ h}.$$

**Étape 3. On écrit la condition.**

La distance totale vaut $15 + d$ et le temps total vaut $\text{0,5} + \dfrac{d}{55}$. On veut

$$\frac{15 + d}{\text{0,5} + \dfrac{d}{55}} = 50.$$

**Étape 4. On résout.**

On multiplie les deux membres par le dénominateur :

$$15 + d = 50 \times \left( \text{0,5} + \frac{d}{55} \right) = 25 + \frac{50d}{55} = 25 + \frac{10d}{11}.$$

On retire $\dfrac{10d}{11}$ et $15$ des deux côtés :

$$d - \frac{10d}{11} = 10, \qquad \text{c'est-à-dire} \qquad \frac{d}{11} = 10.$$

Donc

$$d = 110.$$

**Vérification.** Distance totale : $15 + 110 = 125$ km. Temps total : $\text{0,5} + \dfrac{110}{55} = \text{0,5} + 2 = \text{2,5}$ h. Et $\dfrac{125}{\text{2,5}} = 50$ km/h. C'est bien cela.

**Conclusion.** Quentin doit encore rouler $110$ km.

## Going further

1. Remarque que la vitesse moyenne demandée ($50$ km/h) est très proche de la vitesse de la deuxième partie ($55$ km/h). Qu'est-ce que cela impose à la longueur de cette deuxième partie ?
2. Quelle vitesse moyenne Quentin obtiendrait-il s'il roulait exactement $15$ km de plus à $55$ km/h ?
3. Existe-t-il une distance $d$ qui lui permettrait d'atteindre une vitesse moyenne de $56$ km/h ? Explique.
