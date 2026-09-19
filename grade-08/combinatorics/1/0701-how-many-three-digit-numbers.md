---
id: "0701"
title: "Combien de nombres ont trois chiffres ?"
grade: 8
theme: combinatorics
difficulty: 1
duration_min: 5
tags: [denombrement, chiffres, comptage]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Combinatoire », niveau collège - débutants"
  reference: "Combinatoire.Invariants.pdf, exercice 2"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Combinatoire.Invariants.pdf"
---

## Statement

Combien existe-t-il d'entiers naturels qui s'écrivent avec trois chiffres ?

## Hints

1. Quel est le plus petit nombre qui s'écrit avec trois chiffres ? Quel est le plus grand ?
2. Pour compter les entiers de $100$ à $999$, il ne suffit pas de calculer $999 - 100$. Essaie d'abord sur un tout petit exemple : combien y a-t-il d'entiers de $5$ à $9$ ?
3. Il existe une deuxième route : choisir les chiffres un par un, en partant de celui des centaines. Attention, un nombre ne commence jamais par $0$.

## Solution

**Première route : on encadre.**

Le plus petit nombre à trois chiffres est $100$, le plus grand est $999$. Il s'agit donc de compter les entiers

$$100,\ 101,\ 102,\ \ldots,\ 999$$

Pour compter les entiers de $1$ à $999$, la réponse est $999$. Parmi eux, ceux qui sont plus petits que $100$, c'est-à-dire $1, 2, \ldots, 99$, ne conviennent pas : il y en a $99$. Il reste donc

$$999 - 99 = 900$$

nombres à trois chiffres.

**Deuxième route : on choisit les chiffres un par un.**

Un nombre à trois chiffres s'écrit $\overline{abc}$, où $a$ est le chiffre des centaines, $b$ celui des dizaines et $c$ celui des unités.

- Pour $a$, il y a $9$ possibilités : $1, 2, \ldots, 9$. Le chiffre $0$ est interdit, sinon le nombre n'aurait que deux chiffres.
- Pour $b$, il y a $10$ possibilités : $0, 1, \ldots, 9$.
- Pour $c$, il y a également $10$ possibilités.

Chaque choix de $a$ peut être complété par chacun des choix de $b$, puis par chacun des choix de $c$. Cela fait

$$9 \times 10 \times 10 = 900$$

nombres.

Les deux routes donnent la même réponse, ce qui est rassurant.

**Réponse : il y a $900$ nombres à trois chiffres.**

## Going further

Combien y a-t-il de nombres à quatre chiffres ? À cinq chiffres ? Et à $n$ chiffres ?

On trouve $9\,000$, puis $90\,000$, et plus généralement $9 \times 10^{n-1}$ : le premier chiffre a $9$ possibilités et chacun des $n-1$ autres en a $10$.
