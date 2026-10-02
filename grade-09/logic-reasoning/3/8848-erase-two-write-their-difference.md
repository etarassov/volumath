---
id: "8848"
title: "Effacer deux nombres, écrire leur différence"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, somme, processus]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 4, p. 123 (la solution imprimée somme les entiers de 1 à 2022 au lieu de 1 à 2021 et conclut sur 0 au lieu de 2 ; la conclusion « non » reste juste)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

On écrit au tableau les nombres
$$1, \; 2, \; 3, \; \dots, \; 2021 .$$

À chaque étape, on efface deux nombres du tableau et on écrit à la place leur **différence** (la plus grande valeur moins la plus petite, de sorte que le nombre écrit soit positif ou nul).

Au bout de $2020$ étapes, il ne reste plus qu'un seul nombre. Ce nombre peut-il être $2$ ?

## Hints

1. À chaque étape il y a un nombre de moins au tableau : en partant de $2021$ nombres, on finit bien avec un seul après $2020$ étapes.
2. Regarde la somme $S$ de tous les nombres écrits au tableau. De combien varie-t-elle quand on remplace $a$ et $b$ (avec $a \leqslant b$) par $b - a$ ?
3. Tu devrais trouver que $S$ diminue de $2a$. Qu'est-ce que cela préserve ?
4. Calcule la parité de la somme de départ, avec la formule $1+2+\cdots+n = \dfrac{n(n+1)}{2}$.

## Solution

### L'invariant

Notons $S$ la somme de tous les nombres écrits au tableau à un instant donné.

Effaçons deux nombres $a$ et $b$ avec $a \leqslant b$, et écrivons $b-a$. La nouvelle somme vaut
$$S - a - b + (b-a) = S - 2a .$$

La somme diminue de $2a$, qui est pair. Donc **la parité de $S$ ne change jamais.**

### La parité de départ

Au départ,
$$S = 1 + 2 + \cdots + 2021 = \frac{2021 \times 2022}{2} = 2021 \times 1011 .$$

C'est un produit de deux nombres **impairs**, donc $S$ est impair.

### On conclut

La parité étant conservée, le nombre unique qui reste à la fin est **impair**.

Or $2$ est pair.

**Conclusion.** Non, on ne peut pas finir avec $2$.

### Et si on visait un nombre impair ?

Le même argument montre que le nombre final est toujours impair. Réciproquement, on peut atteindre $1$. Voici comment.

Quatre entiers consécutifs $n$, $n+1$, $n+2$, $n+3$ peuvent être réduits à $0$ : on fait $(n+1) - n = 1$ et $(n+3)-(n+2) = 1$, puis $1 - 1 = 0$.

Or $2021 = 1 + 4 \times 505$. On met donc de côté le nombre $1$, et on découpe les $2020$ nombres restants, $2, 3, \dots, 2021$, en $505$ paquets de quatre entiers consécutifs. Chaque paquet se réduit à $0$. Il reste alors le nombre $1$ et $505$ zéros. On fusionne les zéros deux par deux ($0 - 0 = 0$) jusqu'à n'en garder qu'un, puis $1 - 0 = 1$.

Le tableau finit donc sur $1$.

## Going further

1. Montrer que tout nombre impair entre $1$ et $2021$ peut être le nombre final.
2. Avec les nombres de $1$ à $2020$ au départ, quels nombres finaux sont possibles ?
