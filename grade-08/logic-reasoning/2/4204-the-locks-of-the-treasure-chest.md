---
id: "4204"
title: "Les cadenas du coffre au trésor"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [optimisation, denombrement, strategie]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Tricky Percents"
  reference: "Handout-2354-2086.pdf, exercice 19 (problème Kangourou)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2354-2086.pdf"
---

## Statement

Un coffre au trésor contient $5$ cassettes. Chaque cassette contient $3$ boîtes, et chaque boîte
contient $10$ pièces d'or.

Le coffre, chacune des cassettes et chacune des boîtes sont fermés par un cadenas.

Combien de cadenas faut-il ouvrir, au minimum, pour récupérer $50$ pièces d'or ?

## Hints

1. Les pièces ne sortent que par boîtes entières de $10$. Combien de boîtes faut-il donc ouvrir ?
2. Ces boîtes sont enfermées dans des cassettes qui contiennent $3$ boîtes chacune. Combien de
   cassettes faut-il ouvrir au minimum pour atteindre le nombre de boîtes voulu ?
3. N'oublie pas le coffre lui-même.

## Solution

**Combien de boîtes ?** Chaque boîte contient $10$ pièces. Pour obtenir $50$ pièces, il faut
ouvrir au moins $50 \div 10 = 5$ boîtes.

**Combien de cassettes ?** Chaque cassette ne contient que $3$ boîtes. Avec une seule cassette
ouverte on n'atteint que $3$ boîtes, ce qui est insuffisant. Avec $2$ cassettes ouvertes on
atteint $6$ boîtes, ce qui suffit pour en ouvrir $5$. Il faut donc ouvrir au moins $2$ cassettes.

**Et le coffre.** Les cassettes sont dans le coffre, il faut donc aussi ouvrir le coffre :
$1$ cadenas.

Au total, il faut ouvrir au minimum
$$1 + 2 + 5 = 8$$
cadenas.

**Et c'est réalisable :** on ouvre le coffre, puis deux cassettes, puis $3$ boîtes de la
première cassette et $2$ boîtes de la seconde. Cela fait bien $8$ cadenas et
$5 \times 10 = 50$ pièces.

**Conclusion.** Il faut ouvrir $\mathbf{8}$ cadenas.

## Going further

Combien de cadenas faudrait-il ouvrir pour récupérer **toutes** les pièces du coffre ?
(Réponse : $1 + 5 + 15 = 21$, pour $150$ pièces.)
