---
id: "0759"
title: "Une égalité de fractions, un rapport de carrés"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [produit-en-croix, fractions, calcul-litteral]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 24"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers naturels non nuls tels que

$$\frac{6x + 2y}{3x} = \frac{3x + 4y}{2y}.$$

Détermine $\dfrac{x^2}{y^2}$.

## Hints

1. Les deux dénominateurs ne sont pas nuls, puisque $x$ et $y$ ne le sont pas. Tu peux donc faire un produit en croix.
2. Développe les deux produits obtenus. Un terme est le même des deux côtés : il va disparaître.
3. Il te reste une égalité entre $4y^2$ et $9x^2$. Il n'y a plus qu'à la réécrire sous la forme d'un quotient.

## Solution

**Produit en croix.** Comme $x \neq 0$ et $y \neq 0$, les dénominateurs $3x$ et $2y$ ne sont pas nuls. L'égalité équivaut donc à

$$2y\,(6x + 2y) = 3x\,(3x + 4y).$$

**On développe les deux côtés :**

$$12xy + 4y^2 = 9x^2 + 12xy.$$

Le terme $12xy$ apparaît des deux côtés ; on l'enlève :

$$4y^2 = 9x^2.$$

**On en déduit le rapport demandé.** Comme $y \neq 0$, on divise les deux membres par $9y^2$ :

$$\frac{4}{9} = \frac{x^2}{y^2}.$$

**Vérification.** $\dfrac{x^2}{y^2} = \dfrac{4}{9}$ signifie $\dfrac{x}{y} = \dfrac{2}{3}$ (les nombres sont positifs). Prenons $x = 2$ et $y = 3$ :

$$\frac{6 \times 2 + 2 \times 3}{3 \times 2} = \frac{18}{6} = 3, \qquad \frac{3 \times 2 + 4 \times 3}{2 \times 3} = \frac{18}{6} = 3.$$

Les deux membres sont bien égaux. (En testant tous les couples d'entiers de $1$ à $60$, on ne trouve d'ailleurs que les couples où $\dfrac{x}{y} = \dfrac{2}{3}$, comme $(2\,;3)$, $(4\,;6)$, $(20\,;30)$.)

**Réponse.** $\dfrac{x^2}{y^2} = \dfrac{4}{9}$.
