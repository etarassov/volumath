---
id: "5217"
title: "Déchirer une feuille en trois ou en cinq"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [parite, invariant, morceaux]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par_extra.pdf, « More Parity problems », problème 2"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par_extra.pdf"
---

## Statement

Jean et Pierre posent trois feuilles de papier sur la table.

Puis, à tour de rôle et autant de fois qu'ils le veulent, l'un d'eux prend un des morceaux posés sur la table et le déchire :

- Jean déchire toujours le morceau qu'il prend en $3$ morceaux plus petits ;
- Pierre déchire toujours le morceau qu'il prend en $5$ morceaux plus petits.

Tous les morceaux obtenus restent sur la table.

**Peut-il y avoir, à un moment, exactement $100$ morceaux sur la table ?**

## Hints

1. Comptez combien de morceaux la table gagne à chaque déchirure. Attention : le morceau déchiré disparaît.
2. Quand Jean déchire un morceau en $3$, la table perd $1$ morceau et en gagne $3$ : le total augmente de $2$.
3. Faites le même calcul pour Pierre, puis regardez la **parité** du nombre de morceaux.
4. Combien de morceaux y a-t-il au départ ? Est-ce pair ou impair ?

## Solution

Comptons comment varie le nombre de morceaux posés sur la table.

- **Jean** enlève $1$ morceau et en pose $3$ : le total augmente de $3 - 1 = 2$.
- **Pierre** enlève $1$ morceau et en pose $5$ : le total augmente de $5 - 1 = 4$.

Dans les deux cas, le nombre de morceaux augmente d'un nombre **pair**. Sa parité ne change donc jamais.

Au départ, il y a $3$ morceaux, et $3$ est impair. Donc, à tout instant, le nombre de morceaux sur la table est impair.

Or $100$ est pair.

**Il ne peut donc jamais y avoir exactement $100$ morceaux sur la table.**

*(En revanche $101$ est possible : il suffit que Jean déchire $49$ fois, ce qui donne $3 + 49 \times 2 = 101$ morceaux.)*
