---
id: "2417"
title: "La somme et l'écart"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 30
tags: [variable-aleatoire, loi-de-probabilite, esperance, variance, independance]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Random Variables"
  reference: "Handout-505-598.pdf, exercices 4 et 8 (réponses dans Handout-506-598.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-505-598.pdf"
---

## Statement

Xavier et Yasmine choisissent chacun, au hasard et indépendamment l'un de l'autre, un nombre dans $\{1\,;2\,;3\}$. Ils peuvent tomber sur le même nombre.

On note $X$ le nombre choisi par Xavier et $Y$ celui choisi par Yasmine. On pose ensuite

$$Z = X + Y \qquad \text{et} \qquad W = |X - Y| .$$

1. Donner la loi de $X$, puis calculer $E(X)$ et $V(X)$.
2. Donner la loi de $Z$ sous forme de tableau, puis calculer $E(Z)$ et $V(Z)$.
3. Donner la loi de $W$, puis calculer $E(W)$.
4. Comparer $E(Z)$ à $E(X) + E(Y)$. Comparer $V(Z)$ à $V(X) + V(Y)$.

## Hints

1. Comme les deux choix sont indépendants, chacun des $9$ couples $(X\,;Y)$ a la même probabilité. Laquelle ?
2. Dresse un tableau à $3$ lignes et $3$ colonnes donnant la valeur de $Z$, puis compte combien de cases portent chaque valeur.
3. Fais de même pour $W$. Attention, $W$ prend la valeur $0$ quand les deux nombres sont égaux.
4. Rappels : $E(X) = \sum_k k\,P(X=k)$ et $V(X) = E(X^2) - E(X)^2$.

## Solution

Les deux choix étant indépendants et chacun uniforme sur $\{1\,;2\,;3\}$, les $9$ couples $(X\,;Y)$ sont équiprobables, chacun de probabilité $\dfrac{1}{9}$.

### 1. La loi de $X$

$$P(X=1) = P(X=2) = P(X=3) = \frac{1}{3} .$$

$$E(X) = \frac{1+2+3}{3} = 2 , \qquad E(X^2) = \frac{1+4+9}{3} = \frac{14}{3} ,$$

$$V(X) = E(X^2) - E(X)^2 = \frac{14}{3} - 4 = \frac{2}{3} .$$

La variable $Y$ a exactement la même loi, donc $E(Y) = 2$ et $V(Y) = \dfrac{2}{3}$.

### 2. La loi de $Z = X+Y$

Tableau des valeurs de $Z$ selon $X$ (lignes) et $Y$ (colonnes) :

| $X \backslash Y$ | $1$ | $2$ | $3$ |
|---|---|---|---|
| $1$ | $2$ | $3$ | $4$ |
| $2$ | $3$ | $4$ | $5$ |
| $3$ | $4$ | $5$ | $6$ |

En comptant les cases :

| $k$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|
| $P(Z=k)$ | $\tfrac{1}{9}$ | $\tfrac{2}{9}$ | $\tfrac{3}{9}$ | $\tfrac{2}{9}$ | $\tfrac{1}{9}$ |

$$E(Z) = \frac{2 \times 1 + 3\times 2 + 4\times 3 + 5\times 2 + 6\times 1}{9} = \frac{2+6+12+10+6}{9} = \frac{36}{9} = 4 .$$

$$E(Z^2) = \frac{4\times 1 + 9\times 2 + 16\times 3 + 25\times 2 + 36\times 1}{9} = \frac{4+18+48+50+36}{9} = \frac{156}{9} = \frac{52}{3} ,$$

$$V(Z) = \frac{52}{3} - 16 = \frac{4}{3} .$$

### 3. La loi de $W = |X-Y|$

Tableau des valeurs de $W$ :

| $X \backslash Y$ | $1$ | $2$ | $3$ |
|---|---|---|---|
| $1$ | $0$ | $1$ | $2$ |
| $2$ | $1$ | $0$ | $1$ |
| $3$ | $2$ | $1$ | $0$ |

| $k$ | $0$ | $1$ | $2$ |
|---|---|---|---|
| $P(W=k)$ | $\tfrac{3}{9}$ | $\tfrac{4}{9}$ | $\tfrac{2}{9}$ |

$$E(W) = \frac{0\times 3 + 1\times 4 + 2\times 2}{9} = \frac{8}{9} \approx \text{0,89} .$$

En moyenne, les deux nombres choisis diffèrent donc d'un peu moins de $1$.

### 4. Les deux comparaisons

$$E(X) + E(Y) = 2 + 2 = 4 = E(Z) .$$

L'espérance de la somme est la somme des espérances. C'est toujours vrai, que les variables soient indépendantes ou non.

$$V(X) + V(Y) = \frac{2}{3} + \frac{2}{3} = \frac{4}{3} = V(Z) .$$

Ici aussi l'égalité a lieu, mais pour une autre raison : elle vient de l'**indépendance** de $X$ et $Y$. Elle tomberait en défaut sans cette hypothèse : par exemple, si Yasmine copiait systématiquement Xavier, on aurait $Z = 2X$, donc $V(Z) = 4V(X) = \dfrac{8}{3}$, bien plus que $\dfrac{4}{3}$.

## Going further

1. Vérifier que $E(W) \ne |E(X) - E(Y)|$. Pourquoi n'y a-t-il aucune raison que ces deux nombres coïncident ?
2. Calculer $V(W)$.
3. Reprendre l'exercice avec des nombres choisis dans $\{1\,;2\,;\ldots\,;n\}$ : que valent $E(Z)$ et $V(Z)$ ?
