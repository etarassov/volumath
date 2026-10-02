---
id: "3617"
title: "Combien de rectangles dans un quadrillage ?"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, quadrillage, combinaisons, paires]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), X26 AMC 8, Permutations and Combinations"
  reference: "Handout-5117-5589.pdf, problème 2.6"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5117-5589.pdf"
---

## Statement

On dessine un quadrillage de $4$ carreaux de haut sur $6$ carreaux de large.

Combien de rectangles ce dessin contient-il ?

On compte tous les rectangles dont les quatre côtés sont portés par des traits du quadrillage, quelle que soit leur taille : les petits carreaux, mais aussi tous les rectangles plus grands, y compris le quadrillage entier.

## Hints

1. Combien de traits horizontaux le dessin comporte-t-il ? Et combien de traits verticaux ?
2. Un rectangle est entièrement déterminé par le choix de deux traits horizontaux et de deux traits verticaux. Réciproquement, deux traits horizontaux et deux traits verticaux déterminent-ils toujours un rectangle ?
3. Compte le nombre de façons de choisir deux traits parmi les traits horizontaux, sans tenir compte de l'ordre.

## Solution

**Étape 1. Compter les traits.**

Un quadrillage de $4$ carreaux de haut est délimité par $4 + 1 = 5$ traits horizontaux.

Un quadrillage de $6$ carreaux de large est délimité par $6 + 1 = 7$ traits verticaux.

**Étape 2. Comprendre à quoi correspond un rectangle.**

Un rectangle du dessin a deux côtés horizontaux, portés par deux traits horizontaux différents, et deux côtés verticaux, portés par deux traits verticaux différents.

Inversement, si on choisit deux traits horizontaux distincts et deux traits verticaux distincts, leurs quatre points d'intersection sont les sommets d'un rectangle, et d'un seul.

Compter les rectangles revient donc exactement à compter les façons de choisir une paire de traits horizontaux et une paire de traits verticaux.

**Étape 3. Compter les paires de traits horizontaux.**

Il y a $5$ traits horizontaux. Pour en choisir deux :

- $5$ possibilités pour le premier, $4$ pour le second, soit $5 \times 4 = 20$ ;
- mais chaque paire a été comptée deux fois, une fois dans chaque ordre.

Il y a donc $\dfrac{5 \times 4}{2} = 10$ paires de traits horizontaux.

**Étape 4. Compter les paires de traits verticaux.**

De la même façon, avec $7$ traits verticaux :

$$\frac{7 \times 6}{2} = 21 \text{ paires}$$

**Étape 5. Multiplier.**

Chacune des $10$ paires horizontales peut être associée à chacune des $21$ paires verticales :

$$10 \times 21 = 210$$

**Réponse.** Le quadrillage contient $210$ rectangles.

## Going further

La même méthode donne le nombre de rectangles dans un quadrillage de $p$ carreaux de haut sur $q$ carreaux de large :

$$\frac{(p+1)p}{2} \times \frac{(q+1)q}{2}$$

Pour l'échiquier, $p = q = 8$, ce qui donne $36 \times 36 = 1296$ rectangles.

Attention : compter les **carrés** est une autre question, et elle ne se traite pas de la même manière. Dans le quadrillage $4 \times 6$, il y a $4 \times 6 = 24$ carrés de côté $1$, $3 \times 5 = 15$ carrés de côté $2$, $2 \times 4 = 8$ carrés de côté $3$ et $1 \times 3 = 3$ carrés de côté $4$, soit $50$ carrés en tout.
