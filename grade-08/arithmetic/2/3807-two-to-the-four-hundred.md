---
id: "3807"
title: "Deux puissance 400 contre trois puissance 200"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [puissances, comparaison, exposants]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Big Numbers"
  reference: "Handout-4306-4113.pdf, problème 1.3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4306-4113.pdf"
---

## Statement

Lequel des deux nombres suivants est le plus grand ?

$$2^{400} \qquad \text{et} \qquad 3^{200}$$

Aucune calculatrice ne peut afficher ces nombres : il faut trouver un argument.

## Hints

1. Les deux exposants ne sont pas les mêmes, mais l'un est le double de l'autre. Peux-tu t'arranger pour qu'ils deviennent égaux ?
2. Rappelle-toi que $(a^m)^n = a^{m \times n}$. Essaie d'écrire $2^{400}$ sous la forme $(\text{quelque chose})^{200}$.
3. Une fois les deux nombres écrits avec le même exposant $200$, il ne reste plus qu'à comparer les bases.

## Solution

**L'idée : ramener les deux nombres au même exposant.**

**Étape 1. On réécrit $2^{400}$.**

Comme $400 = 2 \times 200$, on peut écrire

$$2^{400} = 2^{2 \times 200} = \left(2^{2}\right)^{200} = 4^{200}.$$

**Étape 2. On compare.**

Il s'agit maintenant de comparer

$$4^{200} \qquad \text{et} \qquad 3^{200}.$$

Les deux nombres ont le même exposant $200$. Or, quand on multiplie entre eux $200$ facteurs tous égaux à $4$, on obtient plus que si tous les facteurs valaient $3$ : à chaque place, $4 > 3$, et tous les nombres en jeu sont positifs.

Donc

$$4^{200} > 3^{200}.$$

**Conclusion.** $2^{400}$ est plus grand que $3^{200}$.

## Going further

1. Compare $2^{600}$ et $3^{400}$. (Indication : cette fois, écris les deux nombres avec l'exposant $200$.)
2. Compare $3^{100}$ et $10^{50}$.
3. Compare $2^{100}$ et $3^{60}$. Laquelle des deux méthodes précédentes s'adapte le mieux ?
