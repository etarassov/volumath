---
id: "1801"
title: "Une somme de trois en trois"
grade: 12
theme: algebra
difficulty: 1
duration_min: 15
tags: [recurrence, somme, suite-arithmetique]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction in Algebra"
  reference: "Handout-1485-1439.pdf, exercice 1"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1485-1439.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. Démontrer par récurrence que

$$2 + 5 + 8 + \ldots + (3n - 1) = \frac{3n^2 + n}{2}.$$

## Hints

1. Assure-toi d'abord de bien lire le membre de gauche : le premier terme est $2$, le deuxième $5$, le troisième $8$, et le $k$-ième vaut $3k - 1$. La somme s'arrête au terme d'indice $n$.
2. Teste la formule à la main pour $n = 1$, $n = 2$ et $n = 3$ avant de rédiger quoi que ce soit.
3. Appelle $P(n)$ la propriété à démontrer et écris proprement les deux étapes : l'initialisation, puis l'hérédité.
4. Pour l'hérédité, le terme que l'on ajoute en passant de $n$ à $n+1$ est celui d'indice $n+1$, c'est-à-dire $3(n+1) - 1 = 3n + 2$.
5. Il ne reste plus qu'à vérifier que $\dfrac{3n^2 + n}{2} + (3n+2)$ et $\dfrac{3(n+1)^2 + (n+1)}{2}$ sont bien le même nombre. Développe les deux.

## Solution

Notons, pour $n \ge 1$,

$$S_n = 2 + 5 + 8 + \ldots + (3n-1),$$

et notons $P(n)$ la propriété « $S_n = \dfrac{3n^2+n}{2}$ ».

**Initialisation.**

Pour $n = 1$, la somme se réduit à son premier terme : $S_1 = 3 \times 1 - 1 = 2$. De l'autre côté,

$$\frac{3 \times 1^2 + 1}{2} = \frac{4}{2} = 2.$$

Les deux nombres coïncident, donc $P(1)$ est vraie.

**Hérédité.**

Soit $n \ge 1$ un entier pour lequel $P(n)$ est vraie, c'est-à-dire $S_n = \dfrac{3n^2+n}{2}$.

En passant de $n$ à $n+1$ on ajoute un seul terme, celui d'indice $n+1$, qui vaut $3(n+1) - 1 = 3n + 2$. Donc

$$S_{n+1} = S_n + (3n+2) = \frac{3n^2+n}{2} + (3n+2).$$

Mettons tout sur le dénominateur $2$ :

$$S_{n+1} = \frac{3n^2 + n + 6n + 4}{2} = \frac{3n^2 + 7n + 4}{2}.$$

Calculons maintenant ce que la formule annonce au rang $n+1$ :

$$\frac{3(n+1)^2 + (n+1)}{2} = \frac{3(n^2 + 2n + 1) + n + 1}{2} = \frac{3n^2 + 6n + 3 + n + 1}{2} = \frac{3n^2 + 7n + 4}{2}.$$

C'est le même nombre. Donc $P(n+1)$ est vraie.

**Conclusion.**

$P(1)$ est vraie et $P$ est héréditaire, donc d'après le principe de récurrence, $P(n)$ est vraie pour tout entier $n \ge 1$ :

$$2 + 5 + 8 + \ldots + (3n-1) = \frac{3n^2+n}{2}.$$

**Vérification rapide.** Pour $n = 4$ : $2+5+8+11 = 26$, et $\dfrac{3 \times 16 + 4}{2} = \dfrac{52}{2} = 26$.

## Going further

1. Retrouve la formule sans récurrence, en écrivant la somme deux fois, une fois à l'endroit et une fois à l'envers, puis en additionnant terme à terme.
2. Démontre de la même façon que $1 + 4 + 7 + \ldots + (3n-2) = \dfrac{n(3n-1)}{2}$.
