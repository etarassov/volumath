---
id: "3802"
title: "La moyenne des trois derniers"
grade: 8
theme: probability-statistics
difficulty: 1
duration_min: 5
tags: [moyenne, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate 1, Mid-Quarter Competition"
  reference: "Handout-4070-3775.pdf, problème 7, d'après AMC 8 2004, problème 9 (corrigé dans Handout-4071-3775.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4070-3775.pdf"
---

## Statement

Une liste contient cinq nombres. Leur moyenne est $54$.

La moyenne des deux premiers nombres de la liste est $48$.

Quelle est la moyenne des trois derniers ?

## Hints

1. Une moyenne, c'est une somme divisée par un effectif. Peux-tu retrouver la somme des cinq nombres ?
2. Retrouve de la même façon la somme des deux premiers.
3. La somme des trois derniers est ce qui reste quand on enlève la somme des deux premiers à la somme des cinq.

## Solution

**L'idée : passer des moyennes aux sommes, car les sommes s'additionnent, pas les moyennes.**

**Étape 1. La somme des cinq nombres.**

La moyenne des cinq nombres vaut $54$, donc leur somme vaut

$$5 \times 54 = 270.$$

**Étape 2. La somme des deux premiers.**

La moyenne des deux premiers vaut $48$, donc leur somme vaut

$$2 \times 48 = 96.$$

**Étape 3. La somme des trois derniers.**

Les cinq nombres se partagent en « les deux premiers » et « les trois derniers ». Donc

$$270 = 96 + (\text{somme des trois derniers}),$$

d'où

$$\text{somme des trois derniers} = 270 - 96 = 174.$$

**Étape 4. On revient à une moyenne.**

$$174 \div 3 = 58.$$

**Conclusion.** La moyenne des trois derniers nombres est $58$.

## Going further

1. La moyenne des trois derniers ($58$) est plus grande que celle des cinq ($54$), elle-même plus grande que celle des deux premiers ($48$). Était-ce prévisible ?
2. Une liste de dix nombres a pour moyenne $20$. On ajoute un onzième nombre et la moyenne devient $21$. Quel est ce onzième nombre ?
