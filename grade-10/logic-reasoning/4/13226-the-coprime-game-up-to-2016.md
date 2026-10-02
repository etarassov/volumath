---
id: "13226"
title: "Le jeu des nombres premiers entre eux jusqu'à 2016"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie, nombres-premiers-entre-eux, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices lycée, exercice 7 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Le nombre $3$ est écrit au tableau. Alice et Bernard jouent au jeu suivant. Chacun à son tour, si $n$ est le nombre écrit au tableau, le joueur le remplace par un entier $m$ tel que

- $n < m < n^2$ ;
- $m$ et $n$ n'ont pas d'autre diviseur commun que $1$.

Le premier joueur qui écrit un nombre supérieur ou égal à $2016$ perd la partie. Alice commence.

Lequel des deux joueurs peut gagner à coup sûr ? Décrire sa stratégie.

## Hints

1. Un joueur a-t-il toujours le droit de jouer ? Pense à $m = n + 1$. La partie peut-elle durer indéfiniment ?
2. Si Bernard reçoit un multiple de $5$, peut-il répondre par un multiple de $5$ ?
3. Alice cherche à toujours écrire un multiple de $5$. Essaie les nombres $5$, $25$, $125$ au début.
4. À la fin, décompose $2005$ et $2015$ en facteurs premiers. Si $n$ n'est pas un multiple de $5$, peut-il avoir un diviseur commun à la fois avec $2005$ et avec $2015$ ?

## Solution

**La partie se termine toujours.** Depuis un nombre $n \geqslant 2$, on peut toujours jouer $m = n + 1$ : on a bien $n < n + 1 < n^2$, et un diviseur commun de $n$ et $n + 1$ divise leur différence $1$. Comme les nombres écrits augmentent à chaque coup, un joueur finit par écrire un nombre supérieur ou égal à $2016$ : il y a toujours un perdant.

**La stratégie d'Alice : écrire toujours un multiple de $5$.** Si Bernard reçoit un multiple de $5$, il ne peut pas répondre par un multiple de $5$, car son nombre aurait le diviseur commun $5$ avec celui du tableau. Il suffit donc de montrer que, chaque fois qu'Alice reçoit un nombre $n < 2016$ qui n'est pas un multiple de $5$, elle peut écrire un multiple de $5$ inférieur à $2016$, en respectant la règle. Elle ne perd alors jamais, et c'est Bernard qui finira par dépasser $2016$.

Voici son choix, selon le nombre $n$ reçu (qui n'est jamais un multiple de $5$).

- **$n = 3$ (le départ) :** elle écrit $5$. On a $3 < 5 < 9$, et $5$ est premier avec $3$.
- **$5 < n < 25$ :** elle écrit $25$. On a $n \geqslant 6$, donc $n^2 \geqslant 36 > 25$. Le seul nombre premier qui divise $25$ est $5$, et $5$ ne divise pas $n$ : ils sont premiers entre eux.
- **$25 < n < 125$ :** elle écrit $125$, pour la même raison ($n^2 \geqslant 26^2 > 125$, et $125 = 5^3$).
- **$125 < n < 2005$ :** on a $n^2 \geqslant 126^2 > 2016$, donc tout nombre entre $n$ et $2016$ est permis côté taille. On utilise les décompositions
  $$2005 = 5 \times 401 \qquad \text{et} \qquad 2015 = 5 \times 13 \times 31.$$
  Le nombre $n$ ne peut pas avoir à la fois un facteur premier commun avec $2005$ (ce serait $401$) et un avec $2015$ (ce serait $13$ ou $31$), car il serait alors un multiple de $13 \times 401 = 5213$ ou de $31 \times 401$, qui dépassent tous deux $2016$. Donc $n$ est premier avec $2005$ ou avec $2015$, et Alice écrit celui des deux qui convient.
- **$2005 < n < 2015$ :** elle écrit $2015$. En effet, $2015 - n$ est entre $1$ et $9$. Un facteur premier commun à $n$ et $2015$ diviserait $2015 - n$, donc serait au plus $9$ : ce serait $5$, qui ne divise pas $n$. Donc $n$ et $2015$ sont premiers entre eux, et $n < 2015 < n^2$.

Ces cas couvrent toutes les situations. En effet, Bernard reçoit toujours un multiple de $5$, donc le nombre $n$ qu'il écrit n'est jamais $5$, $25$, $125$, $2005$ ou $2015$. Et s'il écrit un nombre $n \geqslant 2016$, il a perdu.

**Conclusion.** Alice gagne à coup sûr : elle écrit d'abord $5$, puis à chaque coup un multiple de $5$ choisi parmi $25$, $125$, $2005$ et $2015$, comme ci-dessus. Bernard, qui reçoit toujours un multiple de $5$, est le premier à atteindre $2016$.
