---
id: "10837"
title: "Les nombres sympathiques"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 35
tags: [divisibilite, factorisation, nombres-premiers, identite-remarquable, decomposition-en-facteurs-premiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

On dit qu'un entier $d \geqslant 1$ est **sympathique** si, pour tous entiers $x$ et $y$,

$$d \text{ divise } (x + y)^5 - x^5 - y^5 \quad \text{si et seulement si} \quad d \text{ divise } (x + y)^7 - x^7 - y^7 .$$

1. Montrer qu'il existe une infinité de nombres sympathiques.
2. Les nombres $2017$ et $2018$ sont-ils sympathiques ?

## Hints

1. Développe $(x + y)^5$ et simplifie $(x + y)^5 - x^5 - y^5$. Mets en facteur tout ce que tu peux : tu dois trouver $5xy(x + y)$ fois un polynôme de degré $2$.
2. Fais de même avec la puissance $7$. Tu dois retrouver les mêmes facteurs.
3. Si un nombre premier divise un produit, il divise l'un des facteurs. Quels nombres premiers sont sympathiques ?
4. Pour $2018$, remarque que $2018 = 2 \times 1009$. Si $a$ et $b$ n'ont aucun facteur premier commun, quand $a \times b$ divise-t-il un nombre ?

## Solution

**Réponse : tous les nombres premiers autres que $5$ et $7$ sont sympathiques, et il y en a une infinité. Les nombres $2017$ et $2018$ sont sympathiques.**

Notons $E_5 = (x + y)^5 - x^5 - y^5$ et $E_7 = (x + y)^7 - x^7 - y^7$.

### Étape 1 : on factorise

En multipliant plusieurs fois par $(x + y)$, on obtient
$$(x + y)^5 = x^5 + 5x^4y + 10x^3y^2 + 10x^2y^3 + 5xy^4 + y^5 .$$
Donc
$$E_5 = 5x^4y + 10x^3y^2 + 10x^2y^3 + 5xy^4 = 5xy\left(x^3 + 2x^2y + 2xy^2 + y^3\right) .$$
Or, en développant, $(x + y)\left(x^2 + xy + y^2\right) = x^3 + 2x^2y + 2xy^2 + y^3$. Notons
$$Q = x^2 + xy + y^2 \qquad \text{et} \qquad P = xy\,(x + y)\,Q .$$
On a donc $E_5 = 5P$.

De la même façon,
$$(x + y)^7 = x^7 + 7x^6y + 21x^5y^2 + 35x^4y^3 + 35x^3y^4 + 21x^2y^5 + 7xy^6 + y^7,$$
$$E_7 = 7xy\left(x^5 + 3x^4y + 5x^3y^2 + 5x^2y^3 + 3xy^4 + y^5\right) .$$
On vérifie en développant que $Q^2 = x^4 + 2x^3y + 3x^2y^2 + 2xy^3 + y^4$, puis que $(x + y)\,Q^2$ est exactement la grande parenthèse. Ainsi
$$E_5 = 5 \times x \times y \times (x + y) \times Q, \qquad E_7 = 7 \times x \times y \times (x + y) \times Q \times Q .$$

### Étape 2 : les nombres premiers autres que $5$ et $7$

On utilise la propriété suivante : **si un nombre premier divise un produit, il divise l'un des facteurs.** Cela se voit sur la décomposition en facteurs premiers du produit, qui est formée des décompositions des facteurs.

Soit $p$ un nombre premier différent de $5$ et de $7$, et soient $x$, $y$ deux entiers.

- Si $p$ divise $E_5$, il divise l'un des facteurs $5$, $x$, $y$, $x + y$, $Q$. Ce n'est pas $5$, donc c'est l'un des quatre autres. Chacun d'eux est aussi un facteur de $E_7$, donc $p$ divise $E_7$.
- Si $p$ divise $E_7$, il divise l'un des facteurs $7$, $x$, $y$, $x + y$, $Q$. Ce n'est pas $7$, donc c'est l'un des quatre autres, qui sont aussi des facteurs de $E_5$. Donc $p$ divise $E_5$.

**Tout nombre premier différent de $5$ et de $7$ est donc sympathique.** Comme il existe une infinité de nombres premiers, **il existe une infinité de nombres sympathiques.**

### Étape 3 : le nombre $2017$

Le nombre $2017$ est premier : $44^2 = 1936 < 2017 < 2025 = 45^2$, et on vérifie qu'aucun des nombres premiers $2, 3, 5, 7, \ldots, 43$ ne le divise. Par exemple $2017 = 7 \times 288 + 1$ et $2017 = 13 \times 155 + 2$. Comme il est différent de $5$ et de $7$, **$2017$ est sympathique.**

### Étape 4 : le nombre $2018$

On a $2018 = 2 \times 1009$, et $1009$ est premier (aucun nombre premier jusqu'à $31$ ne le divise, et $32^2 = 1024 > 1009$). D'après l'étape 2, $2$ et $1009$ sont sympathiques.

Comme $2$ et $1009$ n'ont aucun facteur premier commun, un entier $N$ est divisible par $2018$ exactement quand il est divisible par $2$ et par $1009$. Donc, pour tous entiers $x$ et $y$,
$$2018 \text{ divise } E_5 \iff 2 \text{ et } 1009 \text{ divisent } E_5 \iff 2 \text{ et } 1009 \text{ divisent } E_7 \iff 2018 \text{ divise } E_7 .$$
L'équivalence du milieu vient de ce que $2$ et $1009$ sont sympathiques. **Donc $2018$ est sympathique.**

## Going further

1. Montre que $5$ et $7$ ne sont pas sympathiques. *Indication : essaie $x = y = 1$.*
2. Montre que $9$ n'est pas sympathique. *Indication : pour $x = y = 1$, calcule $E_5$ et $E_7$.*
