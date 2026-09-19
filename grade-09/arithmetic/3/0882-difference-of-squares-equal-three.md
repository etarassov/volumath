---
id: "0882"
title: "Une différence de carrés qui vaudrait 3"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [identites remarquables, equations entieres, nombres premiers, restes]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 5, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Trouver tous les couples $(x, y)$ d'entiers naturels tels que

$$x^2 - 4y^2 = 3.$$

## Hints

1. À gauche, $4y^2$ est aussi un carré : $4y^2 = (2y)^2$. Que peux-tu faire d'une différence de deux carrés ?
2. Tu obtiens un produit de deux entiers qui vaut $3$. Or $3$ est un nombre premier : de combien de façons s'écrit-il comme produit de deux entiers ?
3. Une fois que tu connais $x - 2y$ et $x + 2y$, additionne puis soustrais les deux égalités.
4. Une autre route, tout aussi sûre : regarde le reste de $x^2$ dans la division par $4$, en traitant séparément le cas où $x$ est pair et le cas où $x$ est impair.

## Solution

**La réponse : il n'existe aucun couple $(x, y)$ d'entiers naturels qui convienne.**

Voici deux démonstrations, chacune complète.

### Première démonstration : on factorise

Comme $4y^2 = (2y)^2$, le membre de gauche est une différence de deux carrés :

$$x^2 - 4y^2 = x^2 - (2y)^2 = (x - 2y)(x + 2y).$$

L'équation devient

$$(x - 2y)(x + 2y) = 3.$$

Les deux facteurs sont des entiers (relatifs) et leur produit vaut $3$, qui est positif : ils sont donc tous les deux positifs, ou tous les deux négatifs. Mais $x$ et $y$ sont des entiers naturels, donc $x + 2y \geqslant 0$ : le cas « tous les deux négatifs » est impossible. Les deux facteurs sont donc des entiers naturels, et comme $y \geqslant 0$,

$$x - 2y \leqslant x + 2y.$$

Or $3$ est un nombre premier : la seule façon de l'écrire comme produit de deux entiers naturels est $3 = 1 \times 3$. Le plus petit facteur est $x - 2y$, donc

$$x - 2y = 1 \qquad \text{et} \qquad x + 2y = 3.$$

En additionnant ces deux égalités : $2x = 4$, donc $x = 2$. En les soustrayant : $4y = 2$, donc $y = \dfrac{1}{2}$.

Ce n'est pas un entier. **Aucun couple d'entiers naturels ne convient.**

### Deuxième démonstration : on regarde les restes dans la division par 4

L'équation se réécrit

$$x^2 = 4y^2 + 3.$$

Le nombre $4y^2$ est un multiple de $4$, donc $x^2$ laisse le reste $3$ dans la division par $4$.

Regardons maintenant quels restes un carré peut laisser dans la division par $4$.

- Si $x$ est pair, $x = 2k$, alors $x^2 = 4k^2$ : le reste est $0$.
- Si $x$ est impair, $x = 2k+1$, alors $x^2 = 4k^2 + 4k + 1 = 4(k^2 + k) + 1$ : le reste est $1$.

**Un carré ne laisse donc jamais le reste $3$ dans la division par $4$**, et l'équation n'a aucune solution.

**Conclusion : l'équation $x^2 - 4y^2 = 3$ n'a pas de solution en entiers naturels.**

## Going further

La deuxième démonstration est plus puissante qu'il n'y paraît : elle montre du même coup qu'aucune des équations $x^2 - 4y^2 = 3$, $x^2 - 4y^2 = 7$, $x^2 - 4y^2 = 11$, … n'a de solution, car le membre de droite laisse à chaque fois le reste $3$ dans la division par $4$. En revanche $x^2 - 4y^2 = 5$ en a : $3^2 - 4 \times 1^2 = 5$.
