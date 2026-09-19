---
id: "4809"
title: "Une probabilité qui vaut 1"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [probabilites, principe-des-tiroirs, restes, evenement-certain]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Essential Counting Strategies (Kevin Wang)"
  reference: "handoutId11-0.pdf, exercice 19"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/handoutId11-0.pdf"
---

## Statement

On choisit au hasard six entiers **distincts** entre $1$ et $2006$ (bornes comprises).

Quelle est la probabilité que, parmi ces six entiers, il en existe deux dont la différence est un multiple de $5$ ?

## Hints

1. Avant de calculer quoi que ce soit, essaie de trouver six entiers distincts pour lesquels **aucune** différence n'est un multiple de $5$. Y arrives-tu ?
2. Quand la différence $a - b$ est-elle un multiple de $5$ ? Repense à la division euclidienne par $5$.
3. Combien de restes différents une division par $5$ peut-elle donner ?
4. Six nombres, cinq restes possibles : range les nombres dans des tiroirs étiquetés par leur reste.

## Solution

**Traduire la condition.** Pour deux entiers $a$ et $b$, la différence $a - b$ est un multiple de $5$ si et seulement si $a$ et $b$ ont le **même reste** dans la division euclidienne par $5$.

En effet, si $a = 5q + r$ et $b = 5q' + r'$ avec $0 \leqslant r, r' \leqslant 4$, alors
$$a - b = 5(q - q') + (r - r'),$$
et comme $-4 \leqslant r - r' \leqslant 4$, le nombre $a-b$ est un multiple de $5$ exactement lorsque $r - r' = 0$.

**Le principe des tiroirs.** Les restes possibles dans la division par $5$ sont $0$, $1$, $2$, $3$ et $4$ : il y a donc **cinq** tiroirs.

Nos six entiers doivent se ranger dans ces cinq tiroirs. Comme $6 > 5$, deux d'entre eux au moins tombent dans le même tiroir : ils ont le même reste, donc leur différence est un multiple de $5$.

**Conclusion.** Cette situation se produit quel que soit le tirage. L'événement est donc **certain** :
$$\boxed{P = 1 .}$$

**Remarque.** Ni le nombre $2006$ ni le fait que le tirage soit « au hasard » ne jouent le moindre rôle. Tout six entiers distincts feraient l'affaire, et même six entiers non distincts. En revanche, avec **cinq** entiers seulement la réponse changerait : les cinq nombres $1, 2, 3, 4, 5$ ont des restes tous différents, et aucune de leurs différences n'est un multiple de $5$. La probabilité ne vaudrait alors plus $1$.

## Going further

1. On choisit cinq entiers distincts au hasard entre $1$ et $2005$. Quelle est cette fois la probabilité que deux d'entre eux aient une différence multiple de $5$ ? (Il y a exactement $401$ entiers de chaque reste, ce qui rend le calcul faisable.)
2. Combien d'entiers faut-il choisir au minimum pour être sûr que deux d'entre eux aient une différence multiple de $n$ ?
3. On choisit six entiers distincts entre $1$ et $2006$. Est-on sûr d'en trouver deux dont la **somme** est un multiple de $5$ ?
