---
id: "3811"
title: "Le chien, le chat et la saucisse"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [systeme, mise-en-equation, masse]
adapted_from: null
see_also: []
same_as: ["0629"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Problem Solving: Think Outside the Box"
  reference: "Handout-4165-3921.pdf, problème 7 (réponse dans Handout-4188-3921.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4165-3921.pdf"
---

## Statement

Un chien et un chat tirent sur une même saucisse, chacun de son côté.

- Si le chien arrache une bouchée et s'enfuit, le chat se retrouve avec $300$ g de plus que ce que le chien a emporté.
- Si c'est le chat qui arrache une bouchée et s'enfuit, le chien se retrouve avec $500$ g de plus que ce que le chat a emporté.

Chacun des deux arrache finalement sa bouchée et s'enfuit. Quelle masse de saucisse reste-t-il par terre ?

## Hints

1. Donne un nom à trois quantités : la masse totale de la saucisse, la bouchée du chien, la bouchée du chat.
2. Écris chacune des deux situations sous forme d'une égalité.
3. Tu as deux équations et trois inconnues : tu ne pourras pas toutes les trouver. Mais ce n'est pas ce qu'on demande ! Cherche seulement la quantité « masse totale moins les deux bouchées ». Essaie d'additionner tes deux équations.

## Solution

**L'idée : on ne cherche pas chaque inconnue, mais une seule combinaison.**

Notons $S$ la masse de la saucisse entière, $c$ la bouchée du chien et $m$ la bouchée du chat, toutes en grammes.

**Étape 1. On met en équation.**

Si le chien emporte $c$ grammes et s'enfuit, il reste $S - c$ grammes pour le chat. Celui-ci a $300$ g de plus que le chien :

$$S - c = c + 300.$$

Si le chat emporte $m$ grammes et s'enfuit, il reste $S - m$ grammes pour le chien, qui a $500$ g de plus que le chat :

$$S - m = m + 500.$$

**Étape 2. On réécrit les deux égalités.**

$$S = 2c + 300 \qquad \text{et} \qquad S = 2m + 500.$$

**Étape 3. On additionne.**

$$2S = 2c + 2m + 800.$$

On divise par $2$ :

$$S = c + m + 400,$$

c'est-à-dire

$$S - c - m = 400.$$

Or $S - c - m$ est exactement ce qui reste quand le chien a emporté sa bouchée et le chat la sienne.

**Conclusion.** Il reste $400$ g de saucisse par terre.

**Remarque.** On ne peut pas connaître la masse de la saucisse : il y a une infinité de possibilités. Par exemple $S = 700$ g avec $c = 200$ g et $m = 100$ g, ou $S = 900$ g avec $c = 300$ g et $m = 200$ g. Dans les deux cas il reste bien $400$ g.

## Going further

1. Que se passe-t-il si les deux écarts sont $300$ g et $300$ g ? Et $0$ g et $0$ g ?
2. À quelle condition sur les deux écarts le problème a-t-il un sens, c'est-à-dire les deux bouchées peuvent-elles vraiment être positives ?
