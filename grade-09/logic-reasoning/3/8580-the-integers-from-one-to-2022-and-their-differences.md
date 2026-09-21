---
id: "8580"
title: "Les entiers de 1 à 2022 et leurs différences"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [invariant, parite, somme, construction]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Invariants » (Xavier) du Groupe A, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Les entiers $1, 2, 3, \ldots, 2022$ sont écrits au tableau.

À chaque étape, on choisit deux nombres écrits au tableau, on les efface, et on écrit à leur
place leur différence (la plus grande valeur moins la plus petite, de sorte que le résultat
est toujours positif ou nul). Le nombre de nombres au tableau diminue donc de $1$ à chaque
étape, et à la fin il n'en reste qu'un.

1. Peut-on obtenir $0$ à la fin ?
2. Et si on avait écrit au départ les entiers $1, 2, 3, \ldots, 2023$ ?

## Hints

1. Suis la somme $S$ de tous les nombres écrits au tableau. Si on efface $a$ et $b$ avec $a \leqslant b$, que devient $S$ ?
2. Tu devrais trouver que $S$ diminue de $2a$. Qu'est-ce que cela laisse inchangé ?
3. Calcule la somme $1 + 2 + \cdots + 2022$, puis $1 + 2 + \cdots + 2023$.
4. Attention pour la question 2 : montrer que l'obstacle disparaît ne suffit pas. Il faut exhiber une façon de faire. Commence par remarquer que deux nombres consécutifs donnent $1$, et que deux $1$ donnent $0$.

## Solution

### L'invariant

Notons $S$ la somme de tous les nombres écrits au tableau.

Si on efface deux nombres $a$ et $b$ avec $a \leqslant b$, et qu'on écrit $b - a$, la somme
devient

$$S - (a + b) + (b - a) = S - 2a .$$

Elle diminue donc d'un nombre pair : **la parité de $S$ ne change jamais**.

### 1. Avec les entiers de 1 à 2022

Au départ,

$$S = 1 + 2 + \cdots + 2022 = \frac{2022 \times 2023}{2} = 1011 \times 2023 .$$

Ce nombre est le produit de deux entiers impairs, il est donc **impair**.

Si on finissait avec le seul nombre $0$, la somme finale vaudrait $0$, qui est pair. C'est
impossible.

**Réponse : non**, on ne peut pas obtenir $0$.

### 2. Avec les entiers de 1 à 2023

Cette fois,

$$S = 1 + 2 + \cdots + 2023 = \frac{2023 \times 2024}{2} = 2023 \times 1012 ,$$

qui est **pair**. L'obstacle précédent a disparu. Mais cela ne prouve pas encore que c'est
possible : il faut le faire.

**Une construction.** On utilise deux remarques : la différence de deux entiers consécutifs
vaut $1$, et la différence de deux $1$ vaut $0$.

- **Les trois premiers nombres.** On efface $3$ et $2$, on écrit $1$. Il y a maintenant deux
  $1$ au tableau (le nouveau et celui du départ) : on les efface et on écrit $0$.
- **Les autres, par paquets de quatre.** Les nombres restants sont $4, 5, 6, \ldots, 2023$,
  soit $2020$ nombres, qu'on regroupe en $505$ paquets de quatre entiers consécutifs :
  $(4,5,6,7)$, $(8,9,10,11)$, …, $(2020,2021,2022,2023)$.

  Dans chaque paquet $(m, m+1, m+2, m+3)$ : on efface $m+1$ et $m$ pour écrire $1$, puis
  $m+3$ et $m+2$ pour écrire $1$, puis les deux $1$ pour écrire $0$. Chaque paquet se réduit
  donc à un $0$.

- **La fin.** Il ne reste plus au tableau que des $0$ (un pour les trois premiers nombres,
  et un par paquet). On les efface deux par deux : la différence de deux $0$ vaut $0$. À la
  fin, il ne reste qu'un seul $0$.

**Réponse : oui**, avec les entiers de $1$ à $2023$, on peut obtenir $0$.
