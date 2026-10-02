---
id: "3601"
title: "Les deux nombres effacés"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [somme, entiers, pairs-impairs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 2 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

Benjamin écrit les cinq plus petits entiers impairs strictement positifs, puis il en efface un.

Clara écrit les cinq plus petits entiers pairs strictement positifs, puis elle en efface un.

Ils constatent alors que la somme des quatre nombres qui restent chez Benjamin est égale à la somme des quatre nombres qui restent chez Clara.

On note $B$ le nombre effacé par Benjamin et $K$ le nombre effacé par Clara.

Combien vaut $K - B$ ?

## Hints

1. Écris les deux listes de départ, avant que quiconque n'efface quoi que ce soit.
2. Calcule la somme de chaque liste complète.
3. Effacer un nombre, c'est retirer ce nombre de la somme. Écris l'égalité des deux sommes restantes.

## Solution

**Étape 1. Les deux listes.**

Benjamin écrit $1$, $3$, $5$, $7$, $9$. Clara écrit $2$, $4$, $6$, $8$, $10$.

**Étape 2. Les sommes complètes.**

$$1 + 3 + 5 + 7 + 9 = 25 \qquad\text{et}\qquad 2 + 4 + 6 + 8 + 10 = 30$$

**Étape 3. Traduire l'égalité.**

Après l'effacement, il reste $25 - B$ chez Benjamin et $30 - K$ chez Clara. L'énoncé dit que ces deux sommes sont égales :

$$25 - B = 30 - K$$

On ajoute $K$ des deux côtés, puis on enlève $25$ des deux côtés :

$$K - B = 30 - 25 = 5$$

**Réponse.** $K - B = 5$.

Remarquons qu'on n'a jamais eu besoin de savoir quels nombres ont été effacés : la question ne porte que sur leur différence.

## Going further

Quels effacements marchent vraiment ? Il faut $K = B + 5$, avec $B$ impair entre $1$ et $9$ et $K$ pair entre $2$ et $10$. Cela laisse trois possibilités : $(B, K) = (1, 6)$, $(3, 8)$ et $(5, 10)$. Dans les trois cas la somme commune vaut $24$, $22$ et $20$.
