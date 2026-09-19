---
id: "0683"
title: "Des crayons et des classeurs"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [systeme, equations, prix, decimaux]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 22, d'après la Coupe Animath de printemps 2019"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

J'ai acheté $10$ crayons et $6$ classeurs pour 13,6 euros. Mon frère a acheté $3$ crayons et $5$ classeurs pour 9,2 euros.

Combien coûte l'achat de $8$ crayons et $8$ classeurs, en euros ?

## Hints

1. Appelle $c$ le prix d'un crayon et $k$ le prix d'un classeur. Traduis chacun des deux achats par une équation.
2. Tu obtiens un système de deux équations à deux inconnues. Une méthode possible : multiplier chaque équation par un nombre bien choisi pour que les $k$ disparaissent quand tu soustrais.
3. Une fois $c$ trouvé, remplace-le dans l'une des deux équations pour obtenir $k$.
4. La question ne demande pas $c$ et $k$ séparément, mais $8c + 8k = 8(c + k)$.

## Solution

**Étape 1. Mettre en équations.**

Notons $c$ le prix d'un crayon et $k$ le prix d'un classeur, en euros. L'énoncé donne

$$10c + 6k = \text{13,6} \qquad \text{et} \qquad 3c + 5k = \text{9,2}.$$

**Étape 2. Éliminer $k$.**

Multiplions la première équation par $5$ et la seconde par $6$, pour avoir $30k$ dans les deux :

$$50c + 30k = 68 \qquad \text{et} \qquad 18c + 30k = \text{55,2}.$$

En soustrayant la seconde de la première :

$$32c = 68 - \text{55,2} = \text{12,8}, \qquad \text{donc} \qquad c = \frac{\text{12,8}}{32} = \text{0,4}.$$

**Étape 3. Trouver $k$.**

Reportons dans la deuxième équation de départ :

$$3 \times \text{0,4} + 5k = \text{9,2},$$
$$\text{1,2} + 5k = \text{9,2},$$
$$5k = 8, \qquad \text{donc} \qquad k = \text{1,6}.$$

Un crayon coûte donc 0,40 euro et un classeur 1,60 euro.

**Étape 4. Répondre à la question.**

$$8c + 8k = 8 \times (\text{0,4} + \text{1,6}) = 8 \times 2 = 16.$$

**Vérification.** Premier achat : $10 \times \text{0,4} + 6 \times \text{1,6} = 4 + \text{9,6} = \text{13,6}$. Deuxième achat : $3 \times \text{0,4} + 5 \times \text{1,6} = \text{1,2} + 8 = \text{9,2}$. Les deux correspondent bien à l'énoncé.

**Conclusion.** L'achat de $8$ crayons et $8$ classeurs coûte $16$ euros.

## Going further

1. Il existe un raccourci : cherche deux nombres $\lambda$ et $\mu$ tels que $\lambda \times (10c + 6k) + \mu \times (3c + 5k)$ soit exactement $8c + 8k$. On trouve $\lambda = \frac{1}{2}$ et $\mu = 1$, d'où le prix cherché $\frac{1}{2} \times \text{13,6} + \text{9,2} = \text{6,8} + \text{9,2} = 16$ euros, sans jamais calculer $c$ ni $k$. Vérifie que ce choix de $\lambda$ et $\mu$ convient.
2. Avec les mêmes prix de départ, peut-on connaître le prix de $7$ crayons et $9$ classeurs sans calculer $c$ et $k$ ? Et celui de $5$ crayons seuls ?
