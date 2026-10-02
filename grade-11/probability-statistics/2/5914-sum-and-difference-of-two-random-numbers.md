---
id: "5914"
title: "Somme et différence de deux nombres tirés au hasard"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 25
tags: [probabilite, loi-uniforme, probabilite-geometrique, aire]
adapted_from: null
see_also: ["1405"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Probability (Elgin Johnston)"
  reference: "EJohnstonProbability.pdf, « Warm up problem »"
  url: "https://mathcircles.org/activity/probability/"
  original_language: "en"
  local_copy: "sources/originals/namc/EJohnstonProbability.pdf"
---

## Statement

Alice et Bruno choisissent chacun, au hasard et indépendamment l'un de l'autre, un nombre réel compris entre $0$ et $10$. Chacun suit la loi uniforme sur l'intervalle $[0, 10]$.

Notons $A$ le nombre d'Alice et $B$ celui de Bruno.

Calculer :

1. la probabilité que $A \leq B$ ;
2. la probabilité que $A + B \leq 7$ ;
3. la probabilité que $A - B \geq 7$.

## Hints

1. Le couple $(A, B)$ est un point tiré au hasard dans un carré du plan. Dessine ce carré et repère ses dimensions.
2. Comme le tirage est uniforme, la probabilité d'un événement est l'aire de la région correspondante divisée par l'aire du carré.
3. Pour la question 1, la région est délimitée par une droite très particulière du carré.
4. Pour la question 2, trace la droite d'équation $x + y = 7$ et regarde de quel côté se trouve la région cherchée. Attention : cette droite ne coupe pas le carré en son milieu.
5. Pour la question 3, la droite est $x - y = 7$. La région est petite : vérifie bien ses sommets.

## Solution

Le couple $(A, B)$ est un point tiré uniformément dans le carré
$$C = [0, 10] \times [0, 10],$$
dont l'aire vaut $10 \times 10 = 100$. Pour chaque question, la probabilité cherchée est
$$\frac{\text{aire de la région favorable}}{100}.$$

Dans tout ce qui suit, on note $x$ l'abscisse (la valeur de $A$) et $y$ l'ordonnée (la valeur de $B$).

### 1. Probabilité que $A \leq B$

La région est $\{(x, y) \in C \ : \ x \leq y\}$, c'est-à-dire la partie du carré située au-dessus de la diagonale qui joint $(0,0)$ à $(10,10)$.

Cette diagonale partage le carré en deux triangles de même aire, soit $50$ chacun. Donc
$$P(A \leq B) = \frac{50}{100} = \frac{1}{2}.$$

On pouvait aussi le voir sans calcul : $A$ et $B$ jouent exactement le même rôle, donc $P(A \leq B) = P(B \leq A)$, et ces deux événements se recouvrent seulement sur $A = B$, qui est de probabilité nulle.

### 2. Probabilité que $A + B \leq 7$

La région est $\{(x, y) \in C \ : \ x + y \leq 7\}$, c'est-à-dire la partie du carré située sous la droite d'équation $x + y = 7$.

Cette droite coupe les axes en $(7, 0)$ et $(0, 7)$, deux points qui sont bien dans le carré. La région favorable est donc le triangle rectangle de sommets $(0,0)$, $(7,0)$ et $(0,7)$, dont l'aire vaut
$$\frac{7 \times 7}{2} = \frac{49}{2}.$$

D'où
$$P(A + B \leq 7) = \frac{49/2}{100} = \frac{49}{200} = \text{0,245}.$$

### 3. Probabilité que $A - B \geq 7$

La région est $\{(x, y) \in C \ : \ x \geq y + 7\}$, c'est-à-dire la partie du carré située sous la droite d'équation $y = x - 7$.

Cette droite entre dans le carré en $(7, 0)$ et en sort en $(10, 3)$. La région favorable est donc le triangle de sommets $(7, 0)$, $(10, 0)$ et $(10, 3)$ : un triangle rectangle dont les côtés de l'angle droit mesurent $3$ et $3$. Son aire vaut
$$\frac{3 \times 3}{2} = \frac{9}{2}.$$

D'où
$$P(A - B \geq 7) = \frac{9/2}{100} = \frac{9}{200} = \text{0,045}.$$

### Conclusion

$$P(A \leq B) = \frac{1}{2}, \qquad P(A + B \leq 7) = \frac{49}{200}, \qquad P(A - B \geq 7) = \frac{9}{200}.$$

## Going further

1. Que vaut $P(|A - B| \geq 7)$ ? Peux-tu le déduire de la question 3 sans nouveau calcul ?
2. Que vaut $P(A + B \leq 13)$ ? Attention, la droite ne coupe plus les axes à l'intérieur du carré : la région favorable n'est plus un triangle.
3. Que vaut $P(A \times B \leq 10)$ ? Ici la frontière n'est plus une droite, et il faut une intégrale.
4. Quelle est la valeur moyenne de $|A - B|$ ?
