---
id: "0760"
title: "La somme égale au produit"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, entiers, equation, double-distributivite]
adapted_from: null
see_also: ["0864"]
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 6"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Trouve tous les couples d'entiers naturels $(a\,;b)$ tels que

$$a + b = ab.$$

(On rappelle que $0$ est un entier naturel.)

## Hints

1. Commence par essayer à la main : $a = 0$, puis $a = 1$, puis $a = 2$, puis $a = 3$. Que se passe-t-il quand $a$ devient grand ?
2. Pour démontrer qu'il n'y a pas d'autres solutions, fais passer tout du même côté : $ab - a - b = 0$.
3. Développe $(a-1)(b-1)$. Tu retrouves presque $ab - a - b$ : il ne manque qu'un $+1$. Ajoute donc $1$ aux deux membres de l'égalité.
4. Tu obtiens $(a-1)(b-1) = 1$. Quels sont les couples d'**entiers** dont le produit vaut $1$ ?

## Solution

**L'idée : transformer l'égalité en un produit connu.**

L'égalité $a + b = ab$ s'écrit

$$ab - a - b = 0.$$

Le membre de gauche ressemble à un produit. En effet, en développant :

$$(a-1)(b-1) = ab - a - b + 1.$$

Il ne manque donc qu'un $+1$. Ajoutons $1$ aux deux membres :

$$ab - a - b + 1 = 1, \qquad \text{c'est-à-dire} \qquad (a-1)(b-1) = 1.$$

**On cherche les entiers dont le produit vaut 1.**

$a$ et $b$ sont des entiers naturels, donc $a-1$ et $b-1$ sont des entiers (éventuellement négatifs, car $a$ peut valoir $0$). Deux entiers dont le produit vaut $1$ sont forcément tous les deux égaux à $1$, ou tous les deux égaux à $-1$.

- Si $a - 1 = 1$ et $b - 1 = 1$, alors $a = 2$ et $b = 2$.
- Si $a - 1 = -1$ et $b - 1 = -1$, alors $a = 0$ et $b = 0$.

**Vérification.**

- $0 + 0 = 0$ et $0 \times 0 = 0$ : le couple $(0\,;0)$ convient.
- $2 + 2 = 4$ et $2 \times 2 = 4$ : le couple $(2\,;2)$ convient.

**Une seconde démonstration, sans factorisation.** Supposons $a \leqslant b$ (sinon on échange les deux lettres).

- Si $a = 0$, l'égalité donne $b = 0$.
- Si $a = 1$, l'égalité donne $1 + b = b$, ce qui est impossible.
- Si $a \geqslant 2$, alors $ab = a + b \leqslant b + b = 2b$, donc $a \leqslant 2$, donc $a = 2$. L'égalité devient $2 + b = 2b$, donc $b = 2$.

On retrouve exactement les deux mêmes couples.

**Réponse.** Les seuls couples sont $(0\,;0)$ et $(2\,;2)$.

## Going further

1. Et si on cherche des entiers **relatifs** $a$ et $b$ ? Y a-t-il d'autres couples ?
2. Trouve tous les couples d'entiers naturels tels que $a + b + 1 = ab$.
