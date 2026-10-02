---
id: "3815"
title: "Le devoir de Chloé et de Zoé"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [pourcentages, moyenne-ponderee, mise-en-equation]
adapted_from: null
see_also: []
same_as: ["4004"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 3, d'après AMC 8 2017, problème 14 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Chloé et Zoé sont dans la même classe et ont le même devoir à faire.

Hier soir, chacune a d'abord traité **seule** la moitié des exercices. Puis elles ont traité **ensemble** l'autre moitié, en rendant toutes les deux les mêmes réponses pour cette moitié-là.

Chloé a eu juste à $80\ \%$ des exercices qu'elle a traités seule. Au total, $88\ \%$ de ses réponses sont justes.

Zoé a eu juste à $90\ \%$ des exercices qu'elle a traités seule.

Quel pourcentage des réponses de Zoé est juste au total ?

## Hints

1. Le nombre d'exercices n'est pas donné. Choisis-le toi-même : appelle-le $2n$, de sorte que chaque moitié compte $n$ exercices. (Tu peux aussi essayer avec $100$ exercices pour voir.)
2. Pour Chloé, écris le nombre de bonnes réponses de deux façons : d'un côté « seule + ensemble », de l'autre « $88\ \%$ du total ».
3. Cela te donne le score de la partie faite ensemble, qui est le même pour les deux filles. Sers-t'en pour Zoé.

## Solution

**L'idée : la partie faite ensemble est commune aux deux, et Chloé permet de la calculer.**

Notons $2n$ le nombre total d'exercices : chacune en a traité $n$ seule et $n$ à deux.

**Étape 1. Le score de Chloé sur la partie commune.**

Chloé a juste à $80\ \%$ de ses $n$ exercices faits seule, soit

$$\text{0,80} \times n = \text{0,8}\,n \text{ bonnes réponses.}$$

Au total elle a juste à $88\ \%$ des $2n$ exercices, soit

$$\text{0,88} \times 2n = \text{1,76}\,n \text{ bonnes réponses.}$$

La partie faite à deux lui a donc rapporté

$$\text{1,76}\,n - \text{0,8}\,n = \text{0,96}\,n \text{ bonnes réponses sur } n.$$

Autrement dit, **la moitié faite ensemble est juste à $96\ \%$**.

**Étape 2. Le total de Zoé.**

Zoé a exactement les mêmes réponses que Chloé sur la partie commune : elle y a donc aussi $\text{0,96}\,n$ bonnes réponses.

Sur sa partie faite seule, elle a juste à $90\ \%$, soit $\text{0,9}\,n$ bonnes réponses.

Son total est donc

$$\text{0,9}\,n + \text{0,96}\,n = \text{1,86}\,n \text{ bonnes réponses sur } 2n.$$

**Étape 3. On repasse en pourcentage.**

$$\frac{\text{1,86}\,n}{2n} = \text{0,93} = 93\ \%.$$

**Vérification sur un exemple.** Avec $100$ exercices au total, $50$ faits seule et $50$ à deux : Chloé a $40$ bonnes réponses seule et $88$ au total, donc $48$ sur la partie commune. Zoé a $45$ bonnes réponses seule et $48$ sur la partie commune, soit $93$ sur $100$.

**Conclusion.** Au total, $93\ \%$ des réponses de Zoé sont justes.

## Going further

1. Pourquoi le résultat ne dépend-il pas du nombre d'exercices du devoir ?
2. Si Chloé avait eu $84\ \%$ au total au lieu de $88\ \%$, quel aurait été le score de Zoé ?
3. Chloé peut-elle avoir $75\ \%$ au total ? Explique ce que cela imposerait à la partie faite ensemble.
