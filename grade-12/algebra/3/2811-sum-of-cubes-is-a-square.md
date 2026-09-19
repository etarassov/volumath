---
id: "2811"
title: "La somme des cubes est un carré"
grade: 12
theme: algebra
difficulty: 3
duration_min: 30
tags: [recurrence, somme, cubes, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I, Proofs using Induction"
  reference: "Handout-772-875.pdf, problème 1, question « Challenge »"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-772-875.pdf"
---

## Statement

1. Calculer $1^3 + 2^3$, puis $1^3 + 2^3 + 3^3$, puis $1^3 + 2^3 + 3^3 + 4^3$. Que remarque-t-on ?
2. Démontrer que pour tout entier $n \geqslant 1$ :

$$1^3 + 2^3 + 3^3 + \cdots + n^3 = \left(1 + 2 + 3 + \cdots + n\right)^2 .$$

## Hints

1. Pour la question 1, compare chaque résultat à la somme $1 + 2 + \cdots + n$ correspondante.
2. La démonstration se fait par récurrence sur $n$. Écris soigneusement la propriété $P(n)$ que tu veux démontrer.
3. Il est plus commode de remplacer $1 + 2 + \cdots + n$ par son expression en fonction de $n$. Laquelle ?
4. Dans l'étape d'hérédité, la somme des cubes jusqu'à $n+1$ vaut « la somme jusqu'à $n$ » plus $(n+1)^3$. Utilise l'hypothèse de récurrence pour remplacer le premier morceau.
5. Il reste à vérifier une égalité entre deux expressions polynomiales. Mets $(n+1)^2$ en facteur.

## Solution

**1. L'observation.**

$$1^3 = 1 = 1^2, \qquad 1^3 + 2^3 = 9 = 3^2, \qquad 1^3+2^3+3^3 = 36 = 6^2, \qquad 1^3+2^3+3^3+4^3 = 100 = 10^2 .$$

Les racines carrées obtenues sont $1, 3, 6, 10$ : ce sont exactement les sommes $1$, $1+2$, $1+2+3$, $1+2+3+4$. Cela suggère la formule de l'énoncé.

**2. La démonstration par récurrence.**

On sait que $1 + 2 + \cdots + n = \dfrac{n(n+1)}{2}$. La propriété à démontrer s'écrit donc, pour $n \geqslant 1$ :

$$P(n) : \quad 1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2 = \frac{n^2(n+1)^2}{4}.$$

**Initialisation.** Pour $n = 1$, le membre de gauche vaut $1^3 = 1$ et celui de droite $\dfrac{1^2 \times 2^2}{4} = 1$. Donc $P(1)$ est vraie.

**Hérédité.** Supposons $P(n)$ vraie pour un certain entier $n \geqslant 1$, c'est-à-dire

$$1^3 + 2^3 + \cdots + n^3 = \frac{n^2(n+1)^2}{4}.$$

Ajoutons $(n+1)^3$ aux deux membres :

$$1^3 + 2^3 + \cdots + n^3 + (n+1)^3 = \frac{n^2(n+1)^2}{4} + (n+1)^3 .$$

Mettons $(n+1)^2$ en facteur dans le membre de droite :

$$\frac{n^2(n+1)^2}{4} + (n+1)^3 = (n+1)^2\left(\frac{n^2}{4} + (n+1)\right) = (n+1)^2 \times \frac{n^2 + 4n + 4}{4}.$$

Or $n^2 + 4n + 4 = (n+2)^2$. Donc

$$1^3 + 2^3 + \cdots + (n+1)^3 = \frac{(n+1)^2 (n+2)^2}{4},$$

ce qui est exactement $P(n+1)$, puisque $\dfrac{(n+1)\big((n+1)+1\big)}{2} = \dfrac{(n+1)(n+2)}{2}$.

**Conclusion.** $P(1)$ est vraie et $P$ est héréditaire, donc par récurrence $P(n)$ est vraie pour tout entier $n \geqslant 1$ :

$$1^3 + 2^3 + \cdots + n^3 = \left(1 + 2 + \cdots + n\right)^2 = \frac{n^2(n+1)^2}{4}.$$

**Un exemple.** Pour $n = 10$ : $1 + 2 + \cdots + 10 = 55$, et la somme des dix premiers cubes vaut $55^2 = 3025$.

## Going further

1. Il existe une jolie preuve sans récurrence : montrer que $k^3 = \big(1+2+\cdots+k\big)^2 - \big(1+2+\cdots+(k-1)\big)^2$, puis additionner ces égalités pour $k = 1, 2, \ldots, n$ et observer le télescopage.
2. Démontrer de la même façon que $1 + 3 + 5 + \cdots + (2n-1) = n^2$.
3. La somme $1^4 + 2^4 + \cdots + n^4$ est-elle aussi une puissance d'une expression simple ? Tester sur $n = 1, 2, 3$.
