---
id: "0781"
title: "Le rectangle 65 sur 72 est-il pythagoricien ?"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [pythagore, diagonales, carre-parfait, rectangle]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 8, questions 1 et 2, d'après Olympiades académiques de Versailles, 2007"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

Une unité de longueur est donnée dans le plan. Un rectangle est dit **pythagoricien** lorsque les longueurs de ses côtés et celle de sa diagonale sont toutes les trois des nombres entiers.

1. Les côtés d'un rectangle ont pour longueurs $3$ et $4$. Est-il pythagoricien ?
2. Les côtés d'un rectangle ont pour longueurs $65$ et $72$. Est-il pythagoricien ?

## Hints

1. Une diagonale partage le rectangle en deux triangles rectangles dont elle est l'hypoténuse. Quel théorème donne alors sa longueur ?
2. Tu n'as pas besoin de calculer la racine carrée. Il suffit de savoir si le carré de la diagonale est le carré d'un nombre entier.
3. Pour la question 2, commence par encadrer : $90^2 = 8100$ et $100^2 = 10\,000$.
4. Le carré cherché se termine par le chiffre $9$. Quels chiffres des unités peut avoir un entier dont le carré se termine par $9$ ?

## Solution

Dans un rectangle, une diagonale partage la figure en deux triangles rectangles dont elle est l'hypoténuse. Si $d$ est la longueur de la diagonale et si les côtés mesurent $a$ et $b$, le théorème de Pythagore donne

$$d^2 = a^2 + b^2$$

Le rectangle est pythagoricien exactement quand $a$, $b$ sont entiers et quand $a^2 + b^2$ est le carré d'un entier.

**Question 1.**

$$d^2 = 3^2 + 4^2 = 9 + 16 = 25 = 5^2$$

donc $d = 5$, qui est un entier. **Le rectangle de côtés $3$ et $4$ est pythagoricien**, sa diagonale mesure $5$.

**Question 2.**

$$d^2 = 65^2 + 72^2 = 4225 + 5184 = 9409$$

Le nombre $9409$ est-il un carré parfait ? Encadrons :

$$90^2 = 8100 < 9409 < 10\,000 = 100^2$$

donc $d$ est compris entre $90$ et $100$. De plus $9409$ se termine par $9$, et un carré ne se termine par $9$ que si le nombre lui-même se termine par $3$ ou par $7$. Il ne reste que deux candidats :

$$93^2 = 8649 \qquad 97^2 = 9409$$

Le second convient : $9409 = 97^2$, donc $d = 97$, qui est un entier.

**Conclusion.** Les deux rectangles sont pythagoriciens : celui de côtés $3$ et $4$ a une diagonale de $5$, celui de côtés $65$ et $72$ a une diagonale de $97$.

## Going further

Le rectangle de côtés $5$ et $6$ est-il pythagoricien ? Et celui de côtés $9$ et $12$ ?
