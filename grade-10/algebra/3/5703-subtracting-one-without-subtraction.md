---
id: "5703"
title: "Retrancher 1 sans savoir retrancher"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [fractions-rationnelles, calcul-litteral, inverse, noeuds]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Conway's Rational Tangles (Kelley Barnes)"
  reference: "Rational-Tangles.pdf, moves T and R (question non posée telle quelle dans le document)"
  url: "https://mathcircles.org/activity/rational-tangles/"
  original_language: "en"
  local_copy: "sources/originals/namc/Rational-Tangles.pdf"
---

## Statement

Dans le jeu des enchevêtrements de Conway, un nœud fait avec deux cordes porte un nombre, et deux coups seulement sont autorisés :

- **$T$ (torsion)** : le nombre $x$ devient $x + 1$ ;
- **$R$ (rotation)** : le nombre $x$ devient $-\dfrac{1}{x}$.

Il n'y a **pas** de coup qui retranche $1$. On voudrait quand même y arriver.

1. Pars du nombre $2$ et cherche une suite de coups qui donne $1$.
2. Montre que la suite que tu as trouvée retranche $1$ à **n'importe quel** nombre $x$, et pas seulement à $2$.
3. Pour quelles valeurs de $x$ le calcul de la question 2 est-il impossible ? Que faire dans ces cas-là ?

## Hints

1. Avec une seule rotation on ne peut rien faire : $-\dfrac{1}{2}$ n'est pas $1$. Il faut donc alterner.
2. Essaie $R$, $T$ en partant de $2$, regarde où tu tombes, puis continue.
3. Une suite de cinq coups suffit, et elle commence et finit par $R$.
4. Pour la question 2, refais exactement le même calcul en remplaçant $2$ par la lettre $x$. Pour ajouter $1$ à $-\dfrac{x}{x-1}$, écris $1 = \dfrac{x-1}{x-1}$.

## Solution

**Question 1.** Partons de $2$ et jouons $R$, $T$, $R$, $T$, $R$ :

$$2 \ \xrightarrow{\ R\ } \ -\frac{1}{2} \ \xrightarrow{\ T\ } \ \frac{1}{2} \ \xrightarrow{\ R\ } \ -2 \ \xrightarrow{\ T\ } \ -1 \ \xrightarrow{\ R\ } \ 1 .$$

On est bien arrivé à $1 = 2 - 1$.

**Question 2.** Reprenons le même calcul avec la lettre $x$.

$$x \ \xrightarrow{\ R\ } \ -\frac{1}{x} .$$

Torsion :

$$-\frac{1}{x} + 1 = -\frac{1}{x} + \frac{x}{x} = \frac{x-1}{x} .$$

Rotation :

$$-\frac{1}{\ \dfrac{x-1}{x}\ } = -\frac{x}{x-1} .$$

Torsion :

$$-\frac{x}{x-1} + 1 = -\frac{x}{x-1} + \frac{x-1}{x-1} = \frac{-x + x - 1}{x-1} = -\frac{1}{x-1} .$$

Rotation :

$$-\frac{1}{\ -\dfrac{1}{x-1}\ } = x - 1 .$$

Les cinq coups $R$, $T$, $R$, $T$, $R$ transforment donc $x$ en $x - 1$, quel que soit $x$.

**Question 3.** Deux divisions apparaissent dans le calcul : par $x$ à la première rotation, et par $x - 1$ à la troisième. Le calcul demande donc

$$x \neq 0 \qquad \text{et} \qquad x \neq 1 .$$

Ce sont précisément les deux cas où l'on n'en a pas besoin.

- Si $x = 1$, on veut atteindre $0$ : deux coups suffisent, $R$ puis $T$, car $1 \to -1 \to 0$.
- Si $x = 0$, on veut atteindre $-1$ : une seule torsion de plus au départ aurait suffi, et de toute façon dans le jeu on part de $0$, donc on n'a jamais besoin de descendre plus bas.

**Conclusion.** Bien qu'aucun coup ne retranche $1$, la suite $R$, $T$, $R$, $T$, $R$ le fait, pour tout $x$ différent de $0$ et de $1$.

## Going further

On peut vérifier par ordinateur qu'aucune suite de quatre coups ou moins ne retranche $1$, et que $R$, $T$, $R$, $T$, $R$ est la seule suite de cinq coups qui y parvienne.

Une conséquence amusante : puisqu'on sait ajouter $1$ et retrancher $1$, et puisque deux rotations de suite ramènent au nombre de départ (car $-\dfrac{1}{-\dfrac{1}{x}} = x$), **tous les coups sont réversibles**. Le jeu n'a donc pas de position piège : de n'importe quel nœud on peut revenir à la position de départ, et de la position de départ on peut atteindre n'importe quel nœud.
