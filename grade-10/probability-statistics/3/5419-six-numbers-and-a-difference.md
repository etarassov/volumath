---
id: "5419"
title: "Six nombres et une différence multiple de 5"
grade: 10
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [probabilite, evenement-certain, tiroirs, restes, divisibilite]
adapted_from: null
see_also: ["4601"]
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « But Who's Counting? », problème 4"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

On choisit au hasard six entiers, tous différents, parmi les entiers de $1$ à $2006$.

Quelle est la probabilité que, parmi ces six nombres, il en existe deux dont la différence soit un multiple de $5$ ?

## Hints

1. Avant de compter quoi que ce soit, essayez : prenez six nombres au hasard et regardez si cela marche. Recommencez. Que constatez-vous ?
2. Quand la différence de deux entiers est-elle un multiple de $5$ ? Regardez leurs restes dans la division par $5$.
3. Combien y a-t-il de restes possibles dans la division par $5$ ?
4. Six nombres, cinq restes possibles : que peut-on en conclure ?

## Solution

### Traduire la condition

Effectuons la division euclidienne de chacun des six nombres par $5$ : le reste obtenu est $0$, $1$, $2$, $3$ ou $4$.

**Deux entiers ont une différence multiple de $5$ si et seulement s'ils ont le même reste dans la division par $5$.**

En effet, écrivons $a = 5q + r$ et $b = 5q' + r'$, avec $r$ et $r'$ compris entre $0$ et $4$.

- Si $r = r'$, alors $a - b = 5(q - q')$ est un multiple de $5$.
- Réciproquement, si $a - b$ est un multiple de $5$, alors $r - r' = (a - 5q) - (b - 5q') = (a-b) - 5(q - q')$ est un multiple de $5$. Or $r - r'$ est compris entre $-4$ et $4$ : le seul multiple de $5$ dans cet intervalle est $0$, donc $r = r'$.

La question devient donc : quelle est la probabilité que, parmi les six nombres choisis, il y en ait deux qui aient le même reste dans la division par $5$ ?

### Le principe des tiroirs

Imaginons cinq tiroirs, étiquetés $0$, $1$, $2$, $3$, $4$, et rangeons chacun des six nombres dans le tiroir portant son reste.

Six nombres, cinq tiroirs : si chaque tiroir contenait au plus un nombre, il y aurait au plus cinq nombres en tout. C'est absurde, donc un tiroir contient au moins deux nombres.

Ces deux-là ont le même reste, donc leur différence est un multiple de $5$.

### La probabilité

Ce raisonnement ne dépend pas du tirage : **quels que soient** les six entiers choisis, deux d'entre eux ont une différence multiple de $5$. L'événement est donc **certain**, et

$$p = 1 .$$

**Conclusion.** La probabilité vaut $1$.

**Ce qu'il faut retenir.** Il y avait un piège : la question demande une probabilité, ce qui invite à compter des cas favorables et des cas possibles. Mais ici le comptage est inutile, parce qu'il n'y a pas de cas défavorable. Le nombre $2006$ de l'énoncé ne sert à rien non plus, sinon à garantir qu'il y a bien de quoi choisir six nombres différents.

## Going further

1. Et avec **cinq** nombres au lieu de six ? Donnez un exemple où la conclusion est fausse.
2. Toujours avec cinq nombres, quelle est cette fois la probabilité que deux d'entre eux aient une différence multiple de $5$ ? (Comptez d'abord combien d'entiers de $1$ à $2006$ donnent chaque reste : attention, les cinq classes n'ont pas la même taille.)
3. Combien de nombres faut-il choisir pour être certain que deux d'entre eux aient une différence multiple de $7$ ?
