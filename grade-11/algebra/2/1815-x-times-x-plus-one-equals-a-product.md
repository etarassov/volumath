---
id: "1815"
title: "x(x + 1) = 2025 × 2026"
grade: 11
theme: algebra
difficulty: 2
duration_min: 20
tags: [second-degre, racines, somme-et-produit, grands-nombres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic Inequalities"
  reference: "Handout-1610-1516.pdf, nouveaux problèmes, exercice 3 (avec 2018 × 2019 dans l'original)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1610-1516.pdf"
---

## Statement

Résoudre dans $\mathbb{R}$ l'équation

$$x(x+1) = 2025 \times 2026.$$

On demande **toutes** les solutions, et une justification du fait qu'il n'y en a pas d'autres.

## Hints

1. Ne développe pas tout de suite $2025 \times 2026$. Regarde plutôt la forme du membre de droite : c'est un produit de deux entiers consécutifs, exactement comme le membre de gauche.
2. Une solution saute donc aux yeux. Laquelle ?
3. Est-ce la seule ? Développe pour obtenir une équation du second degré, et rappelle-toi combien de solutions une telle équation peut avoir au maximum.
4. Connaissant une racine, on peut obtenir l'autre sans calculer le discriminant : la somme des deux racines vaut $-\dfrac{b}{a}$.

## Solution

**Une solution évidente.**

Le membre de droite est le produit de deux entiers consécutifs, $2025$ et $2026$. Le membre de gauche est le produit des deux entiers consécutifs $x$ et $x+1$. Donc

$$x = 2025$$

est une solution.

**Mise sous forme d'équation du second degré.**

Posons $N = 2025 \times 2026 = 4\,102\,650$. L'équation s'écrit

$$x^2 + x - N = 0.$$

C'est une équation du second degré : elle a **au plus deux** solutions réelles.

**La seconde solution.**

Notons $x_1 = 2025$ et $x_2$ l'autre racine. La somme des racines d'une équation $ax^2+bx+c=0$ vaut $-\dfrac{b}{a}$. Ici $a = 1$ et $b = 1$, donc

$$x_1 + x_2 = -1, \qquad \text{d'où} \qquad x_2 = -1 - 2025 = -2026.$$

**Vérification.** $(-2026) \times (-2026+1) = (-2026) \times (-2025) = 2026 \times 2025$. C'est bien le membre de droite.

**Conclusion.** L'équation a exactement deux solutions :

$$\boxed{x = 2025 \qquad \text{et} \qquad x = -2026.}$$

**Autre méthode : le discriminant.** On a $\Delta = 1 + 4N = 1 + 4 \times 2025 \times 2026$. Cette expression est en fait un carré parfait :

$$4 \times 2025 \times 2026 + 1 = 4 \times 2025^2 + 4 \times 2025 + 1 = (2 \times 2025 + 1)^2 = 4051^2.$$

Donc $\sqrt{\Delta} = 4051$ et les racines sont

$$\frac{-1 - 4051}{2} = -2026 \qquad \text{et} \qquad \frac{-1 + 4051}{2} = 2025.$$

## Going further

1. Résous de la même façon $x(x+1) = n(n+1)$, où $n$ est un entier quelconque. Les deux solutions se devinent-elles toujours ?
2. Résous $x(x+1)(x+2) = 2024 \times 2025 \times 2026$. Cette fois, combien y a-t-il de solutions réelles ?
