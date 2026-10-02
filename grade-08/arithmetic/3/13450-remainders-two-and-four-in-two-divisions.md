---
id: "13450"
title: "Des restes 2 et 4 dans deux divisions euclidiennes"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [division-euclidienne, restes, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve collège, exercice 4 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Hadrien a choisi deux nombres entiers $a$ et $b$ strictement positifs.

- Dans la division euclidienne de $a$ par $b$, le reste est $2$.
- Dans la division euclidienne de $b$ par $a$, le reste est $4$.

Quelles sont toutes les valeurs possibles de $b$ ?

## Hints

1. Rappel : dans la division euclidienne de $a$ par $b$, on écrit $a = bq + r$ avec $q$ entier et $0 \leqslant r < b$. Le reste est toujours plus petit que le diviseur.
2. Cherche un exemple qui marche, en essayant des petites valeurs.
3. Quel est le reste de la division euclidienne de $3$ par $7$ ? Plus généralement, que se passe-t-il quand on divise un nombre par un nombre plus grand que lui ?
4. Sépare trois cas : $a > b$, $a < b$ et $a = b$.

## Solution

Rappelons que dans la division euclidienne d'un entier $u$ par un entier $v > 0$, on écrit $u = v \times q + r$, où le quotient $q$ est un entier et où le reste $r$ vérifie $0 \leqslant r < v$.

**Une remarque.** Si $u < v$, alors $u = v \times 0 + u$ avec $0 \leqslant u < v$ : le quotient est $0$ et **le reste est $u$ lui-même**. Par exemple, le reste de la division de $3$ par $7$ est $3$.

On sépare trois cas.

**Cas 1 : $a = b$.** Alors $a = b \times 1 + 0$, et le reste de la division de $a$ par $b$ est $0$, pas $2$. Ce cas est impossible.

**Cas 2 : $a < b$.** D'après la remarque, le reste de la division de $a$ par $b$ est $a$. Donc $a = 2$. Mais alors le reste de la division de $b$ par $a = 2$ est $0$ ou $1$, car un reste est toujours plus petit que le diviseur. Il ne peut pas valoir $4$. Ce cas est impossible.

**Cas 3 : $a > b$.** D'après la remarque, le reste de la division de $b$ par $a$ est $b$. Donc $b = 4$.

**Un exemple.** Il reste à vérifier que $b = 4$ est vraiment possible. Prenons $a = 6$ :

- $6 = 4 \times 1 + 2$, et $0 \leqslant 2 < 4$ : le reste de la division de $6$ par $4$ est bien $2$ ;
- $4 = 6 \times 0 + 4$, et $0 \leqslant 4 < 6$ : le reste de la division de $4$ par $6$ est bien $4$.

**Conclusion.** La seule valeur possible de $b$ est $4$.

## Going further

Avec $b = 4$, trouver toutes les valeurs possibles de $a$.
