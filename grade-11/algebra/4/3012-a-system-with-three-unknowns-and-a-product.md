---
id: "3012"
title: "Un système à trois inconnues où seul z est demandé"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [systeme, somme-et-produit, second-degre, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Equations"
  reference: "Handout-3218-2798.pdf, exercice 7 (réponse dans Handout-3227-2798.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3218-2798.pdf"
---

## Statement

Les réels $x$, $y$ et $z$ vérifient les trois égalités

$$x^2 + y^2 + 3z^2 = 37, \qquad x + y + 3z = 11, \qquad xy = -3.$$

Quelles sont toutes les valeurs possibles de $z$ ?

## Hints

1. On ne te demande ni $x$ ni $y$ : cherche à les éliminer. Que connais-tu de $x$ et $y$ ? Leur somme et leur produit.
2. Rappelle-toi l'identité $x^2 + y^2 = (x+y)^2 - 2xy$.
3. La deuxième égalité donne $x + y = 11 - 3z$. Remplace tout dans la première : il ne reste que $z$.
4. Tu obtiens une équation du second degré en $z$. N'oublie pas de vérifier à la fin que des réels $x$ et $y$ existent vraiment pour chaque valeur trouvée.

## Solution

**Éliminer x et y.**

De la deuxième égalité, $x + y = 11 - 3z$. Avec $xy = -3$ et l'identité
$x^2 + y^2 = (x+y)^2 - 2xy$ :

$$x^2 + y^2 = (11 - 3z)^2 - 2 \times (-3) = (11-3z)^2 + 6.$$

La première égalité devient alors

$$(11 - 3z)^2 + 6 + 3z^2 = 37.$$

**Résoudre en z.**

$$121 - 66z + 9z^2 + 6 + 3z^2 = 37,$$
$$12z^2 - 66z + 90 = 0.$$

On divise par $6$ :

$$2z^2 - 11z + 15 = 0.$$

Le discriminant vaut $\Delta = 121 - 120 = 1$, donc

$$z = \frac{11 - 1}{4} = \frac{5}{2} \qquad \text{ou} \qquad z = \frac{11 + 1}{4} = 3.$$

On peut aussi factoriser directement : $2z^2 - 11z + 15 = (2z - 5)(z - 3)$.

**Vérifier que x et y existent.**

Pour chaque valeur de $z$, les nombres $x$ et $y$ sont les racines de
$u^2 - (x+y)u + xy = 0$, c'est-à-dire $u^2 - (11-3z)u - 3 = 0$. Son discriminant est
$(11-3z)^2 + 12$, somme d'un carré et de $12$ : il est toujours strictement positif. Deux
réels $x$ et $y$ existent donc dans les deux cas.

- $z = 3$ : $x + y = 2$ et $xy = -3$, donc $\{x, y\} = \{3, -1\}$.
  Vérification : $9 + 1 + 27 = 37$ et $3 - 1 + 9 = 11$.
- $z = \dfrac{5}{2}$ : $x + y = \dfrac{7}{2}$ et $xy = -3$, donc
  $u^2 - \dfrac{7}{2}u - 3 = 0$, de discriminant $\dfrac{49}{4} + 12 = \dfrac{97}{4} > 0$.

**Conclusion.**

Les valeurs possibles de $z$ sont $\dfrac{5}{2}$ et $3$.
