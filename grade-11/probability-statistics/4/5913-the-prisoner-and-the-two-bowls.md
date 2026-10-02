---
id: "5913"
title: "Le prisonnier et les deux bols"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [probabilite, probabilite-conditionnelle, optimisation, strategie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Probability (Elgin Johnston)"
  reference: "EJohnstonProbability.pdf, problème 10"
  url: "https://mathcircles.org/activity/probability/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonProbability.pdf"
---

## Statement

Un prisonnier est condamné à mort, mais l'empereur lui laisse une chance.

On lui donne deux bols identiques, $100$ billes blanches et $100$ billes noires. Il répartit les $200$ billes entre les deux bols comme il veut, à condition qu'aucun bol ne reste vide.

Ensuite on lui bande les yeux et on mélange les bols, de sorte qu'il ne sait plus lequel est lequel. Il choisit alors un bol au hasard — chacun avec une chance sur deux — puis il tire une bille au hasard dans ce bol.

Si la bille est blanche, il est libre. Si elle est noire, il est exécuté.

Comment doit-il répartir les billes pour maximiser sa probabilité de survie ? Que vaut cette probabilité ?

## Hints

1. Essaie d'abord la répartition « naturelle » : $50$ blanches et $50$ noires dans chaque bol. Que vaut la probabilité de survie ? Cela ne dépend pas du bol choisi.
2. Essaie maintenant un cas extrême : toutes les blanches dans un bol, toutes les noires dans l'autre. Est-ce mieux ?
3. Essaie un cas encore plus déséquilibré : un seul bol contient très peu de billes. Que se passe-t-il si ce bol ne contient qu'une bille, et qu'elle est blanche ?
4. Pour démontrer que c'est le mieux possible : note $m$ le nombre de billes du bol le plus petit et $w$ le nombre de blanches qu'il contient. Écris la probabilité de survie en fonction de $m$ et de $w$.
5. À $m$ fixé, la probabilité est une fonction **affine** de $w$. Regarde le signe du coefficient de $w$ pour savoir s'il faut prendre $w$ le plus grand ou le plus petit possible.

## Solution

**Réponse : il met une seule bille blanche dans un bol et les $199$ autres billes dans l'autre. Sa probabilité de survie vaut alors**
$$\frac{1}{2} \times 1 + \frac{1}{2} \times \frac{99}{199} = \frac{149}{199} \approx 0{,}749,$$
**soit presque trois chances sur quatre, au lieu d'une sur deux.**

### La formule générale

Notons $m$ le nombre de billes du premier bol et $w$ le nombre de billes blanches qu'il contient. Le second bol contient alors $200 - m$ billes, dont $100 - w$ blanches.

Le prisonnier choisit un bol avec la probabilité $\tfrac12$, puis tire une bille au hasard dedans. D'après la formule des probabilités totales, sa probabilité de survie vaut
$$P(m, w) = \frac{1}{2}\cdot\frac{w}{m} \;+\; \frac{1}{2}\cdot\frac{100 - w}{200 - m}.$$

Comme les deux bols jouent le même rôle, on peut supposer $m \leq 100$.

### À taille fixée, on remplit le petit bol de blanches

Fixons $m$ et faisons varier $w$. La fonction
$$w \longmapsto P(m, w) = \frac{1}{2}\left(\frac{1}{m} - \frac{1}{200-m}\right) w \;+\; \frac{50}{200-m}$$
est affine en $w$, de coefficient directeur $\tfrac12\left(\tfrac{1}{m} - \tfrac{1}{200-m}\right)$.

- Si $m < 100$, alors $m < 200 - m$, donc $\tfrac{1}{m} > \tfrac{1}{200-m}$ : le coefficient est strictement positif, et $P$ **croît** avec $w$. Il faut donc prendre $w$ le plus grand possible, c'est-à-dire $w = m$ : **le petit bol ne contient que des billes blanches.**
- Si $m = 100$, le coefficient est nul et $P = \tfrac12$ quoi qu'on fasse.

### On choisit ensuite la taille du petit bol

Avec $w = m$ et $1 \leq m \leq 100$, la probabilité devient
$$P(m) = \frac{1}{2}\cdot 1 + \frac{1}{2}\cdot\frac{100-m}{200-m} = \frac{1}{2} + \frac{1}{2}\cdot\frac{100-m}{200-m}.$$

Écrivons $\dfrac{100-m}{200-m} = 1 - \dfrac{100}{200-m}$. Quand $m$ augmente de $1$ à $100$, le dénominateur $200-m$ diminue, donc $\dfrac{100}{200-m}$ augmente, donc $\dfrac{100-m}{200-m}$ diminue.

La probabilité est donc **décroissante** en $m$ : le mieux est $m = 1$.

$$P(1) = \frac{1}{2} + \frac{1}{2}\cdot\frac{99}{199} = \frac{199 + 99}{398} = \frac{298}{398} = \frac{149}{199} \approx 0{,}7487.$$

### Quelques répartitions, pour comparer

| Répartition | Probabilité de survie |
|---|---|
| $50$ blanches + $50$ noires dans chaque bol | $0{,}500$ |
| toutes les blanches d'un côté, toutes les noires de l'autre | $0{,}500$ |
| $10$ blanches seules d'un côté | $0{,}5 + 0{,}5 \times \tfrac{90}{190} \approx 0{,}737$ |
| $1$ blanche seule d'un côté | $0{,}7487$ |

### Conclusion

La meilleure stratégie est de placer **une seule bille blanche** dans un bol et tout le reste dans l'autre. La probabilité de survie vaut $\tfrac{149}{199} \approx 0{,}749$.

L'idée est simple à dire : un bol sur deux est un gain assuré, et dans l'autre bol on a quand même retiré une blanche seulement sur les cent, si bien qu'il reste presque la moitié de blanches.

## Going further

1. Avec $n$ billes blanches et $n$ billes noires, que vaut la probabilité optimale ? Vers quelle valeur tend-elle quand $n$ devient très grand ?
2. Et avec **trois** bols, toujours $100$ blanches et $100$ noires ? Le prisonnier choisit alors un bol sur trois au hasard.
3. On change la règle : le prisonnier voit les bols et choisit lui-même celui dans lequel il tire. Quelle est alors sa meilleure probabilité ?
4. On change encore : il y a $100$ billes blanches et $200$ billes noires. Quelle est la meilleure répartition dans deux bols ?
