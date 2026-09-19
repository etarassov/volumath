---
id: "2408"
title: "La couleur et la quinte au poker"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 30
tags: [probabilite, denombrement, cartes, coefficient-binomial, equiprobabilite]
adapted_from: null
see_also: ["2409"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced Circle, Probability"
  reference: "Handout-487-575.pdf, exercice 4a et 4b (réponses dans Handout-488-575.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-487-575.pdf"
---

## Statement

On distribue $5$ cartes d'un jeu de $52$ cartes bien battu. L'ordre dans lequel les cartes arrivent ne compte pas : une *main* est un ensemble de $5$ cartes.

Le jeu comporte $13$ hauteurs ($2, 3, \ldots, 10$, valet, dame, roi, as) et $4$ couleurs (cœur, carreau, trèfle, pique).

1. Combien y a-t-il de mains possibles ?
2. Quelle est la probabilité d'obtenir une **couleur**, c'est-à-dire cinq cartes de la même couleur ?
3. Quelle est la probabilité d'obtenir une **quinte**, c'est-à-dire cinq hauteurs qui se suivent ? Les suites autorisées vont de $\mathrm{A}, 2, 3, 4, 5$ jusqu'à $10, \mathrm{V}, \mathrm{D}, \mathrm{R}, \mathrm{A}$ : l'as peut servir de carte la plus basse ou de carte la plus haute.

## Hints

1. Toutes les mains sont équiprobables, donc chaque probabilité est un quotient : nombre de mains favorables sur nombre de mains possibles.
2. Pour la couleur : choisis d'abord la couleur commune aux cinq cartes, puis les cinq hauteurs.
3. Pour la quinte : combien y a-t-il de suites de cinq hauteurs consécutives ? Compte-les en regardant la hauteur la plus basse.
4. Une fois les cinq hauteurs de la quinte fixées, chaque carte peut encore être de n'importe laquelle des quatre couleurs, indépendamment des autres.

## Solution

**1. Le nombre de mains.**

Une main est un choix de $5$ cartes parmi $52$, sans ordre :

$$\binom{52}{5} = \frac{52 \times 51 \times 50 \times 49 \times 48}{5 \times 4 \times 3 \times 2 \times 1} = 2\,598\,960 .$$

Le jeu étant bien battu, ces $2\,598\,960$ mains sont équiprobables.

**2. La couleur.**

Pour construire une couleur, on fait deux choix successifs :

* la couleur commune aux cinq cartes : $4$ possibilités ;
* les cinq hauteurs parmi les $13$ disponibles dans cette couleur : $\binom{13}{5} = 1287$ possibilités.

Cela donne $4 \times 1287 = 5148$ mains, d'où

$$P(\text{couleur}) = \frac{5148}{2\,598\,960} = \frac{33}{16\,660} \approx \text{0,00198} ,$$

soit environ une main sur $505$.

**3. La quinte.**

Une quinte est déterminée par ses cinq hauteurs consécutives, puis par la couleur de chacune des cinq cartes.

*Les suites de hauteurs.* Une suite est repérée par sa hauteur la plus basse, qui peut être $\mathrm{A}$, $2$, $3$, …, $10$ : cela fait $10$ suites possibles, de $\mathrm{A}2345$ à $10\mathrm{VDRA}$.

*Les couleurs.* Les cinq hauteurs étant fixées et toutes différentes, on choisit librement et indépendamment la couleur de chacune des cinq cartes : $4^5 = 1024$ possibilités.

Cela donne $10 \times 1024 = 10\,240$ mains, d'où

$$P(\text{quinte}) = \frac{10\,240}{2\,598\,960} = \frac{128}{32\,487} \approx \text{0,00394} ,$$

soit environ une main sur $254$.

**Remarque.** La quinte est donc environ deux fois plus fréquente que la couleur, ce qui explique qu'au poker la couleur batte la quinte.

## Going further

1. Combien y a-t-il de **quintes couleur**, c'est-à-dire de mains qui sont à la fois une quinte et une couleur ? En déduire la probabilité d'obtenir une quinte qui ne soit pas une couleur.
2. Quelle est la probabilité d'obtenir un **carré**, c'est-à-dire quatre cartes de la même hauteur (et une cinquième quelconque) ?
3. Quelle est la probabilité d'obtenir un **brelan**, c'est-à-dire exactement trois cartes de la même hauteur, les deux autres étant de deux hauteurs différentes entre elles et différentes de la première ?
