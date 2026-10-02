---
id: "1405"
title: "Deux nombres tirés au hasard, lequel est le plus grand ?"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 25
tags: [loi-uniforme, probabilite-continue, aire, independance]
adapted_from: null
see_also: ["5914"]
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Introduction to Probability"
  reference: "Handout-3798-3429.pdf, problème 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3798-3429.pdf"
---

## Statement

Chloé choisit au hasard un nombre réel $X$ dans l'intervalle $[0\,;\,1000]$. Indépendamment d'elle, David choisit au hasard un nombre réel $Y$ dans l'intervalle $[0\,;\,2000]$.

Dans les deux cas, « au hasard » signifie que le tirage suit la loi uniforme sur l'intervalle.

Quelle est la probabilité que le nombre de David soit plus grand que celui de Chloé ?

## Hints

1. Le couple $(X, Y)$ est un point du rectangle $[0\,;\,1000] \times [0\,;\,2000]$. Le dessiner.
2. Comme les deux tirages sont uniformes et indépendants, ce point tombe uniformément dans le rectangle : la probabilité d'un événement est le rapport de son aire à l'aire du rectangle.
3. Quelle partie du rectangle correspond à l'événement $Y > X$ ? Tracer la droite d'équation $y = x$.
4. Il est plus simple de calculer l'aire de l'événement contraire $Y \leqslant X$ : c'est un triangle rectangle. Quels sont ses sommets ?

## Solution

**Mettre l'expérience dans un rectangle.**

Le résultat de l'expérience est le couple $(X, Y)$, avec $0 \leqslant X \leqslant 1000$ et $0 \leqslant Y \leqslant 2000$. Ce couple est un point du rectangle

$$R = [0\,;\,1000] \times [0\,;\,2000],$$

dont l'aire vaut $1000 \times 2000 = 2\,000\,000$.

Chaque coordonnée suit la loi uniforme sur son intervalle, et les deux tirages sont indépendants : le point $(X, Y)$ est donc réparti **uniformément** dans le rectangle. Pour une partie $D$ du rectangle,

$$P((X, Y) \in D) = \frac{\text{aire de } D}{\text{aire de } R}.$$

**Repérer l'événement.**

L'événement « David a le plus grand nombre » s'écrit $Y > X$. Dans le rectangle, il correspond à la partie située **au-dessus** de la droite d'équation $y = x$.

Il est plus rapide de traiter l'événement contraire $Y \leqslant X$, c'est-à-dire la partie située sous la droite. Un point $(x, y)$ du rectangle y appartient lorsque $0 \leqslant y \leqslant x$, avec $x$ variant de $0$ à $1000$ ; comme $x \leqslant 1000 \leqslant 2000$, la condition $y \leqslant 2000$ ne rogne rien. Cette partie est donc le triangle rectangle de sommets

$$(0, 0), \qquad (1000, 0), \qquad (1000, 1000),$$

dont l'aire vaut

$$\frac{1000 \times 1000}{2} = 500\,000 .$$

**Conclure.**

$$P(Y \leqslant X) = \frac{500\,000}{2\,000\,000} = \frac14 ,$$

donc

$$P(Y > X) = 1 - \frac14 = \frac34 .$$

(Le cas d'égalité $Y = X$ correspond à un segment, d'aire nulle : il est de probabilité nulle, et il ne change rien au résultat.)

**Conclusion.** La probabilité que le nombre de David dépasse celui de Chloé vaut $\boxed{\dfrac34}$, soit 0,75.

**Pourquoi ce n'est pas $\dfrac12$ ni $\dfrac23$.** On pourrait croire, en regardant les longueurs $1000$ et $2000$, que la réponse est $\frac23$. C'est faux : ce n'est pas le rapport des longueurs qui compte, mais l'aire de la région $Y > X$. On peut le voir autrement : avec probabilité $\frac12$, David tire un nombre au-dessus de $1000$, et il a alors gagné à coup sûr ; avec probabilité $\frac12$ il tire en dessous de $1000$, et il se retrouve à égalité de chances avec Chloé, donc il gagne une fois sur deux. Au total $\frac12 + \frac12 \times \frac12 = \frac34$.

## Going further

1. Chloé tire dans $[0\,;\,a]$ et David dans $[0\,;\,b]$ avec $b \geqslant a$. Montrer que $P(Y > X) = 1 - \dfrac{a}{2b}$.
2. Que devient la réponse si $b < a$ ?
3. Chloé et David tirent tous les deux dans $[0\,;\,1000]$. Quelle est la probabilité que leurs deux nombres diffèrent de moins de $100$ ?
