---
id: "3613"
title: "Exactement deux chiffres après la virgule"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [decimaux, fractions, multiples, denombrement]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 8 training, Berkeley mini Math Tournament 2025"
  reference: "Handout-5091-5540.pdf, problème 12 de l'Individual Round (corrigé dans Handout-5092-5540.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-5091-5540.pdf"
---

## Statement

On dit qu'un entier $n$ strictement positif est **sympathique** lorsque l'écriture décimale de $\dfrac{n}{250}$ comporte exactement deux chiffres après la virgule, sans compter les zéros inutiles à la fin.

Par exemple :

- $\dfrac{10}{250} = \text{0,04}$ a exactement deux chiffres après la virgule, donc $10$ est sympathique ;
- $\dfrac{100}{250} = \text{0,4}$ n'en a qu'un, donc $100$ n'est pas sympathique.

Combien y a-t-il d'entiers sympathiques $n$ vérifiant $1 \leqslant n < 250$ ?

## Hints

1. Un nombre décimal positif $x$ a au plus $k$ chiffres après la virgule si et seulement si $10^k \times x$ est un entier.
2. Écris ce que signifie « au plus deux chiffres » puis « au plus un chiffre » pour $\dfrac{n}{250}$, et simplifie les fractions obtenues.
3. Tu devrais tomber sur deux conditions de divisibilité très simples portant sur $n$. Il ne reste qu'à compter.

## Solution

**Étape 1. Traduire « au plus $k$ chiffres après la virgule ».**

Un nombre décimal positif $x$ s'écrit avec au plus $k$ chiffres après la virgule si et seulement si $10^k \times x$ est un entier. En effet, multiplier par $10^k$ déplace la virgule de $k$ rangs vers la droite.

Dire que $\dfrac{n}{250}$ a **exactement** deux chiffres après la virgule revient donc à dire qu'il en a au plus deux, mais pas au plus un, c'est-à-dire :

- $100 \times \dfrac{n}{250}$ est un entier ;
- $10 \times \dfrac{n}{250}$ n'est pas un entier.

**Étape 2. Simplifier les deux conditions.**

Première condition :

$$100 \times \frac{n}{250} = \frac{100n}{250} = \frac{2n}{5}$$

Ce nombre est entier si et seulement si $5$ divise $2n$. Comme $5$ ne divise pas $2$ et que $5$ est premier, cela revient à : $5$ divise $n$.

Seconde condition :

$$10 \times \frac{n}{250} = \frac{10n}{250} = \frac{n}{25}$$

Ce nombre ne doit pas être entier, c'est-à-dire : $25$ ne divise pas $n$.

**Conclusion partielle.** $n$ est sympathique si et seulement si $n$ est un multiple de $5$ mais pas un multiple de $25$.

**Étape 3. Compter.**

On cherche les $n$ tels que $1 \leqslant n \leqslant 249$.

Multiples de $5$ : ce sont $5, 10, 15, \ldots, 245$, c'est-à-dire $5 \times 1$ jusqu'à $5 \times 49$. Il y en a $49$.

Multiples de $25$ : ce sont $25, 50, \ldots, 225$, c'est-à-dire $25 \times 1$ jusqu'à $25 \times 9$. Il y en a $9$.

Tout multiple de $25$ étant un multiple de $5$, le nombre cherché est

$$49 - 9 = 40$$

**Réponse.** Il y a $40$ entiers sympathiques strictement inférieurs à $250$.

Vérification sur les plus petits : $5$ donne $\text{0,02}$ (deux chiffres, sympathique), $10$ donne $\text{0,04}$ (sympathique), $25$ donne $\text{0,1}$ (un seul chiffre, écarté, et c'est bien un multiple de $25$).

## Going further

Pourquoi $25$ et pas un autre nombre ? Parce que $250 = 2 \times 5^3$. En simplifiant, $\dfrac{n}{250}$ a un dénominateur qui ne contient que des $2$ et des $5$, donc l'écriture décimale est toujours finie ; le nombre de chiffres après la virgule dépend seulement de la quantité de facteurs $5$ qui restent au dénominateur après simplification.

Avec le même raisonnement, les entiers $n$ tels que $\dfrac{n}{250}$ ait exactement **trois** chiffres après la virgule sont ceux qui ne sont pas multiples de $5$ du tout : il y en a $249 - 49 = 200$ en dessous de $250$.
