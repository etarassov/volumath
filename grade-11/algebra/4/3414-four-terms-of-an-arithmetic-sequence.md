---
id: "3414"
title: "Quatre termes d'une suite arithmétique"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [suite-arithmetique, systeme, second-degre, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Algebra (ORMC AMC Packet 2)"
  reference: "Handout-5118-5603.pdf, problème 9, d'après AMC 10B 2003, problème 24 (réponse dans Handout-5124-5603.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5118-5603.pdf"
---

## Statement

Les quatre premiers termes d'une suite arithmétique sont, dans cet ordre,

$$x+y, \qquad x-y, \qquad xy, \qquad \frac{x}{y}.$$

Quel est le cinquième terme de cette suite ?

## Hints

1. Une suite arithmétique a une raison constante. Calcule-la à partir des deux premiers termes : elle ne dépend que de $y$.
2. La raison vaut $r = -2y$. Écris alors que le troisième terme est le deuxième plus $r$, et que le quatrième est le troisième plus $r$.
3. Tu obtiens $xy = x - 3y$ et $\dfrac{x}{y} = x - 5y$.
4. Multiplie la seconde égalité par $y$ pour éliminer le dénominateur, puis remplace $xy$ par $x - 3y$.
5. Tu tombes sur une équation en $y$ seul. Attention : $y \neq 0$, sinon le quatrième terme n'existerait pas.

## Solution

**L'idée : la raison de la suite s'exprime tout de suite en fonction de $y$ seul, et le reste n'est plus qu'un système.**

**Étape 1. La raison.**

La raison $r$ est la différence entre deux termes consécutifs :

$$r = (x-y) - (x+y) = -2y.$$

**Étape 2. Deux équations.**

Le troisième terme vaut le deuxième plus $r$ :
$$xy = (x-y) + (-2y) = x - 3y. \qquad (1)$$

Le quatrième terme vaut le troisième plus $r$ :
$$\frac{x}{y} = xy + (-2y) = xy - 2y. \qquad (2)$$

Notons au passage que $y \neq 0$, sinon $\dfrac{x}{y}$ n'aurait pas de sens.

**Étape 3. On élimine $x$.**

Multiplions l'équation $(2)$ par $y$ :

$$x = xy \times y - 2y^2 = (xy)\,y - 2y^2.$$

Remplaçons $xy$ par $x - 3y$, grâce à $(1)$ :

$$x = (x - 3y)\,y - 2y^2 = xy - 3y^2 - 2y^2 = xy - 5y^2.$$

Et en remplaçant une seconde fois $xy$ par $x-3y$ :

$$x = (x - 3y) - 5y^2, \qquad \text{donc} \qquad 0 = -3y - 5y^2 = -y\,(3 + 5y).$$

Comme $y \neq 0$, il reste $3 + 5y = 0$, soit

$$y = -\frac{3}{5}.$$

**Étape 4. On trouve $x$.**

Reprenons $(1)$ : $xy = x - 3y$, c'est-à-dire

$$-\frac35 x = x + \frac95.$$

En rassemblant les $x$ : $-\dfrac35 x - x = \dfrac95$, soit $-\dfrac85 x = \dfrac95$, d'où

$$x = -\frac98.$$

**Étape 5. Le cinquième terme.**

Il vaut le quatrième plus $r$, c'est-à-dire $\dfrac{x}{y} + (-2y)$. Or $\dfrac{x}{y} = x - 5y$, donc le cinquième terme vaut

$$x - 5y - 2y = x - 7y = -\frac98 + 7 \times \frac35 = -\frac98 + \frac{21}{5} = \frac{-45 + 168}{40} = \frac{123}{40}.$$

**Vérification.** Avec $x = -\dfrac98$ et $y = -\dfrac35$, les quatre premiers termes valent

$$x+y = -\frac{69}{40}, \qquad x-y = -\frac{21}{40}, \qquad xy = \frac{27}{40}, \qquad \frac{x}{y} = \frac{75}{40}.$$

Les écarts successifs valent tous $\dfrac{48}{40} = \dfrac65$, ce qui est bien $-2y$. Le cinquième terme vaut donc $\dfrac{75}{40} + \dfrac{48}{40} = \dfrac{123}{40}$.

**Conclusion : le cinquième terme vaut $\dfrac{123}{40}$.**
