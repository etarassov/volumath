---
id: "5210"
title: "Des plus et des moins tirés au hasard"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [probabilite, symetrie, parite, denombrement, equiprobabilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Tulsa Math Teachers' Circle, Counting Problems"
  reference: "Count-Me-In-Problem-Set.pdf, problème 22"
  url: "https://mathcircles.org/activity/count-me-in/"
  original_language: "en"
  local_copy: "sources/originals/namc/Count-Me-In-Problem-Set.pdf"
---

## Statement

Soit $n$ un entier $\geqslant 1$. On écrit les entiers $1, 2, \ldots, n$ et, devant chacun d'eux, on place au hasard le signe $+$ ou le signe $-$. Les deux signes sont équiprobables et les $n$ tirages sont indépendants. On note $S$ la somme obtenue.

Par exemple, pour $n = 3$, le tirage $(+, -, +)$ donne $S = 1 - 2 + 3 = 2$.

On note $P(n)$ la probabilité que $S$ soit strictement positive.

1. Calculer $P(1)$ et $P(2)$ en énumérant les tirages.
2. Montrer que $P(S > 0) = P(S < 0)$, et en déduire que
   $$P(n) = \frac{1 - P(S = 0)}{2} .$$
3. On pose $T = 1 + 2 + \cdots + n$. Montrer que $S$ et $T$ ont la même parité. En déduire que $P(n) = \frac12$ lorsque $T$ est impair, et préciser pour quels $n \leqslant 6$ c'est le cas.
4. Calculer $P(3)$ et $P(4)$.
5. En déduire la valeur exacte de $P(1) + P(2) + P(3) + P(4) + P(5) + P(6)$.

## Hints

1. Il y a $2^n$ tirages de signes, tous de même probabilité $\dfrac{1}{2^n}$. Compter une probabilité revient donc à compter des tirages.
2. Pour la question 2, à un tirage associez le tirage où **tous** les signes sont changés. Quelle est la somme obtenue ?
3. Pour la question 3, partez de $S = T - 2 \times (\text{somme des entiers affectés du signe } -)$.
4. Pour la question 4, il ne reste qu'à trouver $P(S = 0)$, c'est-à-dire à compter les parties de $\{1, 2, 3\}$, puis de $\{1, 2, 3, 4\}$, dont la somme vaut la moitié de $T$.

## Solution

L'univers est l'ensemble des $2^n$ suites de signes, toutes de même probabilité.

### 1. Les deux premiers cas

- $n = 1$ : les deux tirages donnent $S = 1$ et $S = -1$. Un seul est positif, donc $P(1) = \dfrac12$.
- $n = 2$ : les quatre tirages donnent $1 + 2 = 3$, $1 - 2 = -1$, $-1 + 2 = 1$, $-1 - 2 = -3$. Deux sont positifs, donc $P(2) = \dfrac24 = \dfrac12$.

### 2. La symétrie

À chaque tirage de signes, associons le tirage obtenu en **changeant tous les signes**. Cette transformation envoie l'univers sur lui-même, elle est sa propre réciproque, donc c'est une bijection de l'univers sur lui-même ; comme tous les tirages ont la même probabilité, elle conserve les probabilités.

Si un tirage donne la somme $S$, le tirage associé donne la somme $-S$. Donc un tirage vérifie $S > 0$ si et seulement si son associé vérifie $S < 0$, et par conséquent

$$P(S > 0) = P(S < 0) .$$

Comme les trois événements $\{S > 0\}$, $\{S < 0\}$ et $\{S = 0\}$ forment une partition de l'univers,

$$2\,P(S > 0) + P(S = 0) = 1, \qquad \text{d'où} \qquad P(n) = \frac{1 - P(S = 0)}{2} .$$

### 3. La parité

Notons $A$ l'ensemble des entiers qui reçoivent le signe $-$, et $\sigma$ leur somme. Alors

$$S = (T - \sigma) - \sigma = T - 2\sigma .$$

Donc $S$ et $T$ diffèrent d'un nombre pair : ils ont la même parité.

Si $T$ est impair, $S$ est impair pour tout tirage, donc $S \neq 0$ : on a $P(S = 0) = 0$ et, d'après la question 2,

$$P(n) = \frac12 .$$

Calculons $T = \dfrac{n(n+1)}{2}$ pour $n \leqslant 6$ :

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|
| $T$ | 1 | 3 | 6 | 10 | 15 | 21 |
| parité | impaire | impaire | paire | paire | impaire | impaire |

Donc $P(1) = P(2) = P(5) = P(6) = \dfrac12$. On retrouve au passage les résultats de la question 1.

### 4. Les cas $n = 3$ et $n = 4$

D'après la question 3, $S = T - 2\sigma$, donc $S = 0$ équivaut à $\sigma = \dfrac{T}{2}$.

**Cas $n = 3$.** Ici $T = 6$, et il faut $\sigma = 3$. Les parties de $\{1, 2, 3\}$ de somme $3$ sont $\{3\}$ et $\{1, 2\}$ : il y en a $2$, sur $2^3 = 8$ tirages. Donc

$$P(S = 0) = \frac{2}{8} = \frac14, \qquad P(3) = \frac{1 - \frac14}{2} = \frac{3}{8} .$$

**Cas $n = 4$.** Ici $T = 10$, et il faut $\sigma = 5$. Les parties de $\{1, 2, 3, 4\}$ de somme $5$ sont $\{1, 4\}$ et $\{2, 3\}$ : il y en a $2$, sur $2^4 = 16$ tirages. Donc

$$P(S = 0) = \frac{2}{16} = \frac18, \qquad P(4) = \frac{1 - \frac18}{2} = \frac{7}{16} .$$

### 5. La somme demandée

$$P(1) + P(2) + P(3) + P(4) + P(5) + P(6) = \frac12 + \frac12 + \frac38 + \frac{7}{16} + \frac12 + \frac12 .$$

Les quatre demis font $2$, et $\dfrac38 + \dfrac{7}{16} = \dfrac{6}{16} + \dfrac{7}{16} = \dfrac{13}{16}$. Donc

$$P(1) + \cdots + P(6) = 2 + \frac{13}{16} = \boxed{\frac{45}{16}} = \text{2,8125} .$$

## Going further

La symétrie de la question 2 sert bien au-delà de cet exercice : dès qu'une expérience aléatoire admet une transformation qui échange deux événements sans changer les probabilités, ces deux événements ont la même probabilité, et il ne reste plus qu'à traiter le cas d'égalité. Ici tout le travail s'est concentré sur $P(S = 0)$, et pour quatre valeurs de $n$ sur six, ce travail était nul.
