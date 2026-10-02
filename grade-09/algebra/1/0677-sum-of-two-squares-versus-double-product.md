---
id: "0677"
title: "La somme de deux carrés et leur double produit"
grade: 9
theme: algebra
difficulty: 1
duration_min: 5
tags: [inegalite, identites-remarquables, carres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 5"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Démontrer que pour tous nombres réels $a$ et $b$, on a

$$a^2 + b^2 \geq 2ab.$$

## Hints

1. Une inégalité $A \geq B$ revient à dire que $A - B$ est positif ou nul. Calcule $a^2 + b^2 - 2ab$.
2. Ce que tu obtiens est une identité remarquable.

## Solution

Pour comparer les deux membres, on regarde leur différence :

$$a^2 + b^2 - 2ab = (a - b)^2.$$

C'est l'identité remarquable $(a - b)^2 = a^2 - 2ab + b^2$, lue de droite à gauche.

Or le carré d'un nombre réel n'est jamais négatif, donc $(a - b)^2 \geq 0$, c'est-à-dire

$$a^2 + b^2 - 2ab \geq 0.$$

En ajoutant $2ab$ aux deux membres, on obtient bien

$$a^2 + b^2 \geq 2ab.$$

**Conclusion.** L'inégalité est vraie pour tous réels $a$ et $b$. De plus, il y a égalité exactement quand $(a - b)^2 = 0$, c'est-à-dire quand $a = b$.

## Going further

1. Vérifie sur quelques valeurs : $a = 3$, $b = 5$ ; puis $a = -3$, $b = 5$ ; puis $a = 4$, $b = 4$.
2. En remplaçant $a$ par $a^2$ et $b$ par $b^2$, quelle inégalité obtiens-tu ?
3. Si $a$ et $b$ sont positifs, on peut poser $a = \sqrt{x}$ et $b = \sqrt{y}$. Quelle inégalité célèbre entre $\frac{x + y}{2}$ et $\sqrt{xy}$ retrouves-tu ?
