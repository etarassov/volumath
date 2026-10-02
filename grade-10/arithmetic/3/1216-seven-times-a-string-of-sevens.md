---
id: "1216"
title: "Sept fois un nombre écrit avec des sept"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [multiplication-posee, retenues, somme-des-chiffres, ecriture-decimale]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.7 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

On multiplie $7$ par un nombre dont l'écriture décimale n'est faite que de chiffres $7$ :

$$7 \times \underbrace{77\ldots7}_{k \text{ chiffres}}.$$

La somme des chiffres du résultat vaut $2021$.

Combien y a-t-il de chiffres $7$ dans le second facteur ?

## Hints

1. Commencer par les petits cas : $7 \times 7$, $7 \times 77$, $7 \times 777$, $7 \times 7777$. Écrire les résultats les uns sous les autres.
2. Une régularité apparaît très vite. La décrire précisément : quel est le premier chiffre, quel est le dernier, et que trouve-t-on au milieu ?
3. Pour justifier la régularité, poser la multiplication à la main et suivre les retenues, colonne par colonne, de la droite vers la gauche.
4. Une fois la régularité établie, exprimer la somme des chiffres en fonction de $k$, puis résoudre une équation du premier degré.

## Solution

**Les petits cas.**

$$7 \times 7 = 49$$
$$7 \times 77 = 539$$
$$7 \times 777 = 5\,439$$
$$7 \times 7\,777 = 54\,439$$
$$7 \times 77\,777 = 544\,439$$

La règle saute aux yeux : pour $k \geqslant 2$, le résultat s'écrit

$$5 \; \underbrace{4\,4\ldots4}_{k-2 \text{ chiffres}} \; 3 \; 9.$$

**Pourquoi.**

Posons la multiplication et suivons les retenues, de la droite vers la gauche.

- Colonne des unités : $7 \times 7 = 49$. On écrit $9$, on retient $4$.
- Colonne suivante : $7 \times 7 + 4 = 53$. On écrit $3$, on retient $5$.
- Colonne suivante : $7 \times 7 + 5 = 54$. On écrit $4$, on retient $5$.
- Et à partir de là, tout se répète : la retenue vaut toujours $5$, et l'on écrit toujours $4$.
- À la fin, quand les $k$ chiffres $7$ sont épuisés, il reste la dernière retenue $5$, qu'on écrit en tête.

On obtient donc bien, pour $k \geqslant 2$ : un $9$, puis un $3$, puis $k-2$ chiffres $4$, puis un $5$ en tête.

**La somme des chiffres.**

$$S(k) = 9 + 3 + 4(k-2) + 5 = 4k + 9.$$

Vérifions : $S(2) = 17$, et $539$ a bien pour somme $5+3+9 = 17$. ✓ $S(5) = 29$, et $544\,439$ donne $5+4+4+4+3+9 = 29$. ✓

**Résoudre.**

$$4k + 9 = 2021 \quad \Longleftrightarrow \quad 4k = 2012 \quad \Longleftrightarrow \quad k = 503.$$

**Conclusion.** Le second facteur comporte $503$ chiffres $7$.

## Going further

1. Que vaut la somme des chiffres de $8 \times \underbrace{88\ldots8}_{k}$ ? Et de $9 \times \underbrace{99\ldots9}_{k}$ ? Cette dernière est très différente : pourquoi ?
2. Retrouver le résultat sans poser la multiplication, en écrivant $\underbrace{77\ldots7}_{k} = \dfrac{7\,(10^k - 1)}{9}$.
