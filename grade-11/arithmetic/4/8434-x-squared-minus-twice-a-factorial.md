---
id: "8434"
title: "x² − 2 × y! = 2021"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [factorielle, congruences, carres, equation-en-entiers, cas-a-traiter]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Modulos & factorisation » (Théo Lenoir et Angela Xue), exercice 11"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

On rappelle que $y!$ désigne le produit $1 \times 2 \times 3 \times \cdots \times y$, avec la convention $0! = 1$.

Déterminer tous les couples $(x, y)$ d'entiers positifs ou nuls tels que

$$x^2 - 2 \times y! = 2021.$$

## Hints

1. Une factorielle grandit très vite. Cela suggère de séparer les petites valeurs de $y$, à traiter à la main, des grandes, à éliminer d'un coup.
2. Dès que $y$ est assez grand, $y!$ est divisible par $8$. À partir de quelle valeur de $y$ ?
3. Pour ces grandes valeurs, regarde l'équation modulo $8$. Quels restes un carré peut-il laisser modulo $8$ ? Et quel reste laisse $2021$ ?
4. Il ne reste alors que quelques valeurs de $y$ à examiner une par une. Pour chacune, il suffit de voir si un certain nombre est un carré parfait.

## Solution

### Étape 1. Éliminer les grandes valeurs de $y$

Pour $y \geqslant 4$, la factorielle $y!$ contient le facteur $4! = 24$, donc $y!$ est un multiple de $24$, donc de $8$. A fortiori $2 \times y!$ est un multiple de $8$.

L'équation donne alors

$$x^2 = 2021 + 2 \times y! \equiv 2021 \pmod 8.$$

Or $2021 = 8 \times 252 + 5$, donc $x^2 \equiv 5 \pmod 8$.

Mais un carré est toujours congru à $0$, $1$ ou $4$ modulo $8$ :

| $x \bmod 8$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ |
|---|---|---|---|---|---|---|---|---|
| $x^2 \bmod 8$ | $0$ | $1$ | $4$ | $1$ | $0$ | $1$ | $4$ | $1$ |

Le reste $5$ est impossible. **Il n'y a donc aucune solution avec $y \geqslant 4$.**

### Étape 2. Examiner les valeurs $y = 0, 1, 2, 3$

Pour chacune, on calcule $x^2 = 2021 + 2 \times y!$ et on regarde si c'est un carré parfait. Il est utile de noter que $44^2 = 1936$, $45^2 = 2025$ et $46^2 = 2116$.

| $y$ | $y!$ | $x^2 = 2021 + 2\,y!$ | carré parfait ? |
|---|---|---|---|
| $0$ | $1$ | $2023$ | non, car $1936 < 2023 < 2025$ |
| $1$ | $1$ | $2023$ | non, pour la même raison |
| $2$ | $2$ | $2025$ | oui, $2025 = 45^2$ |
| $3$ | $6$ | $2033$ | non, car $2025 < 2033 < 2116$ |

### Conclusion

L'unique couple solution est

$$\boxed{(x, y) = (45, 2)}.$$

**Vérification :** $45^2 - 2 \times 2! = 2025 - 4 = 2021$.

## Going further

La structure de cet exercice revient très souvent dans les problèmes mêlant factorielles et congruences :

1. **une majorité de cas éliminée d'un coup**, parce que $y!$ finit par être divisible par ce qu'on veut ;
2. **une poignée de cas restants traités à la main.**

Le choix du modulo se fait à l'envers : on veut que le terme en $y!$ disparaisse pour $y$ grand, tout en gardant une contrainte forte sur $x^2$. Le nombre $8$ remplit les deux conditions, puisque $4!$ en est déjà un multiple et que les carrés y sont très contraints.
