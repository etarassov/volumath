---
id: "7625"
title: "Au moins deux nombres pairs"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carres, congruences, parite, modulo-4]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 19 (solution chapitre XI, résolue par Ilyes Hamdi)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Des entiers naturels $n_1, n_2, \ldots, n_{2012}$ vérifient

$$n_1^2 + n_2^2 + \cdots + n_{2011}^2 = n_{2012}^2 .$$

Démontrer qu'au moins **deux** de ces $2012$ nombres sont pairs.

## Hints

1. Commencez par le plus simple : les carrés des nombres impairs. Que valent-ils modulo $4$ ?
2. Supposez que $n_1, \ldots, n_{2011}$ soient tous impairs et calculez le membre de gauche modulo $4$. Comparez avec ce que peut valoir un carré modulo $4$.
3. Il reste le cas où exactement un des $2011$ premiers nombres est pair. Travaillez alors modulo $2$ seulement.

## Solution

**Un rappel : les carrés modulo $4$.**

Si $u$ est pair, $u = 2v$ et $u^2 = 4v^2 \equiv 0 \pmod 4$.
Si $u$ est impair, $u = 2v+1$ et $u^2 = 4v^2 + 4v + 1 = 4v(v+1) + 1 \equiv 1 \pmod 4$.

> **Un carré est toujours congru à $0$ ou à $1$ modulo $4$.** Il vaut $0$ si le nombre est pair, $1$ s'il est impair.

Notons maintenant $E$ le nombre de pairs parmi $n_1, \ldots, n_{2011}$ (on laisse $n_{2012}$ de côté pour l'instant). Trois cas.

**Cas 1 : $E = 0$, c'est-à-dire $n_1, \ldots, n_{2011}$ tous impairs.**

Chacun des $2011$ carrés du membre de gauche vaut $1$ modulo $4$, donc

$$n_1^2 + \cdots + n_{2011}^2 \equiv 2011 \pmod 4 .$$

Or $2011 = 4 \times 502 + 3$, donc le membre de gauche est congru à $3$ modulo $4$.

Mais ce membre de gauche vaut $n_{2012}^2$, qui est congru à $0$ ou à $1$ modulo $4$. Impossible.

Ce cas ne peut donc pas se produire : **au moins un des $2011$ premiers nombres est pair.**

**Cas 2 : $E = 1$, c'est-à-dire exactement un pair parmi $n_1, \ldots, n_{2011}$.**

Travaillons cette fois modulo $2$. Un carré a la même parité que le nombre lui-même. Le membre de gauche est donc la somme de $2010$ nombres impairs et d'un nombre pair :

$$n_1^2 + \cdots + n_{2011}^2 \equiv 2010 \times 1 + 0 \equiv 0 \pmod 2 .$$

Le membre de gauche est donc pair, donc $n_{2012}^2$ est pair, donc $n_{2012}$ est **pair**.

On compte alors deux nombres pairs : celui des $2011$ premiers, et $n_{2012}$.

**Cas 3 : $E \geqslant 2$.**

Il y a déjà au moins deux nombres pairs parmi $n_1, \ldots, n_{2011}$, et il n'y a rien à ajouter.

**Conclusion.** Dans tous les cas possibles, au moins deux des $2012$ nombres sont pairs.

## Going further

Le choix des modules n'est pas gratuit : modulo $4$, on distingue les carrés pairs des carrés impairs, ce qui donne une information fine ; modulo $2$, on ne voit plus que la parité, mais cela suffit pour le cas 2, où l'argument modulo $4$ ne conclut plus.

Le nombre $2011$ n'intervient que par son reste modulo $4$, qui vaut $3$. Le même énoncé vaut donc dès que le nombre de termes de gauche est congru à $3$ modulo $4$.

Une question pour continuer : le résultat est-il optimal ? Autrement dit, existe-t-il une famille $n_1, \ldots, n_{2012}$ vérifiant l'équation avec **exactement** deux nombres pairs ? Essayez déjà avec trois termes à gauche au lieu de $2011$ : $3^2 + 4^2 + 12^2 = 13^2$.
