---
id: "0678"
title: "Cinq inégalités, une seule idée"
grade: 9
theme: algebra
difficulty: 2
duration_min: 20
tags: [inegalite, identites-remarquables, carres, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Inégalités. Égalités. Équations et systèmes d'équations », 3 novembre 2023"
  reference: "Inégalités.pdf, exercice 7"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Inégalités.pdf"
---

## Statement

Démontrer que pour tous nombres réels $a$ et $b$, on a :

1. $a^4 + b^4 \geq 2a^2b^2$
2. $a^4 + b^2 \geq 2a^2b$
3. $4a^2 + b^2 \geq 4ab$
4. $a^2b^2 + a^4b^4 \geq 2a^3b^3$
5. $a^2 + b^2 + 2 \geq 2a + 2b$

## Hints

1. Dans chaque cas, fais passer tout du même côté et cherche à reconnaître un carré.
2. Le modèle est toujours le même : $x^2 + y^2 - 2xy = (x - y)^2 \geq 0$. Il suffit de trouver qui est $x$ et qui est $y$.
3. Pour la première, essaie $x = a^2$ et $y = b^2$. Pour la troisième, remarque que $4a^2 = (2a)^2$.
4. La cinquième n'est pas de la même forme : $2$ se coupe en $1 + 1$, et $2a + 2b$ se coupe en $2a$ et $2b$. Tu obtiens deux carrés au lieu d'un.

## Solution

Toutes ces inégalités viennent de la même remarque : pour tous réels $x$ et $y$,

$$x^2 + y^2 - 2xy = (x - y)^2 \geq 0, \qquad \text{donc} \qquad x^2 + y^2 \geq 2xy.$$

Il ne reste qu'à choisir $x$ et $y$.

**1. $a^4 + b^4 \geq 2a^2b^2$.**

On prend $x = a^2$ et $y = b^2$. Alors $x^2 = a^4$, $y^2 = b^4$ et $2xy = 2a^2b^2$. Autrement dit,

$$a^4 + b^4 - 2a^2b^2 = (a^2 - b^2)^2 \geq 0.$$

**2. $a^4 + b^2 \geq 2a^2b$.**

On prend $x = a^2$ et $y = b$ :

$$a^4 + b^2 - 2a^2b = (a^2 - b)^2 \geq 0.$$

**3. $4a^2 + b^2 \geq 4ab$.**

On prend $x = 2a$ et $y = b$ : alors $x^2 = 4a^2$ et $2xy = 4ab$, donc

$$4a^2 + b^2 - 4ab = (2a - b)^2 \geq 0.$$

**4. $a^2b^2 + a^4b^4 \geq 2a^3b^3$.**

On prend $x = ab$ et $y = a^2b^2$ : alors $x^2 = a^2b^2$, $y^2 = a^4b^4$ et $2xy = 2 \times ab \times a^2b^2 = 2a^3b^3$, donc

$$a^2b^2 + a^4b^4 - 2a^3b^3 = (ab - a^2b^2)^2 \geq 0.$$

**5. $a^2 + b^2 + 2 \geq 2a + 2b$.**

Ici on sépare en deux morceaux. On écrit $2 = 1 + 1$ et on regroupe :

$$a^2 + b^2 + 2 - 2a - 2b = (a^2 - 2a + 1) + (b^2 - 2b + 1) = (a - 1)^2 + (b - 1)^2.$$

C'est une somme de deux carrés, donc c'est positif ou nul.

**Conclusion.** Les cinq inégalités sont vraies pour tous réels $a$ et $b$. Dans chaque cas, l'égalité a lieu quand le carré est nul : $a^2 = b^2$ pour la première, $b = a^2$ pour la deuxième, $b = 2a$ pour la troisième, $ab = a^2b^2$ pour la quatrième, et $a = b = 1$ pour la cinquième.

## Going further

1. Dans la quatrième inégalité, l'égalité a lieu quand $ab = a^2b^2$, c'est-à-dire $ab(1 - ab) = 0$. Quels couples $(a, b)$ cela donne-t-il ?
2. Démontrer que pour tous réels $a$, $b$, $c$ : $a^2 + b^2 + c^2 \geq ab + bc + ca$. (Indication : écris trois fois l'inégalité de base et additionne.)
