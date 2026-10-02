---
id: "7734"
title: "Ajouter le même nombre à deux cases voisines"
grade: 9
theme: coloring
difficulty: 3
duration_min: 30
tags: [coloriage, invariant, damier, tableau]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe B"
  reference: "stage_ete_2014.pdf, « Groupe B : logique et stratégies de base », mardi 19 après-midi (Arsène Pierrot), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

On écrit des entiers dans les neuf cases d'un tableau $3 \times 3$.

Une opération consiste à choisir deux cases **voisines**, c'est-à-dire qui ont un côté commun, et à ajouter un même entier relatif aux deux nombres qui y sont écrits. On peut ajouter un nombre positif comme négatif, et on peut répéter l'opération autant de fois qu'on veut.

Peut-on passer du premier tableau ci-dessous au second ?

| 1 | 2 | 3 |
|---|---|---|
| 4 | 5 | 6 |
| 7 | 8 | 9 |

| 7 | 9 | 2 |
|---|---|---|
| 3 | 5 | 6 |
| 1 | 4 | 8 |

## Hints

1. Colorie le tableau comme un damier, en commençant par une case noire dans le coin en haut à gauche.
2. Deux cases voisines ont-elles la même couleur ? Combien y a-t-il de cases de chaque couleur ?
3. Une opération ajoute le même nombre à une case noire et à une case blanche. Quelle quantité ne change donc jamais ?
4. Calcule cette quantité pour les deux tableaux.

## Solution

**Non, c'est impossible.**

**Le coloriage.** Colorions le tableau en damier, la case en haut à gauche étant noire :

| noir | blanc | noir |
|---|---|---|
| blanc | noir | blanc |
| noir | blanc | noir |

Il y a cinq cases noires (les quatre coins et le centre) et quatre cases blanches (les milieux des côtés). Le point important est que **deux cases voisines sont toujours de couleurs différentes** : passer à une case voisine, c'est changer de ligne ou de colonne d'une unité, donc changer de couleur.

**L'invariant.** Notons $N$ la somme des cinq nombres écrits dans les cases noires, $B$ la somme des quatre nombres écrits dans les cases blanches, et considérons la différence

$$D = N - B .$$

Une opération choisit deux cases voisines, donc une noire et une blanche, et ajoute le même entier $k$ aux deux. Alors $N$ devient $N + k$ et $B$ devient $B + k$, donc

$$D \text{ devient } (N + k) - (B + k) = N - B = D .$$

**La différence $D$ ne change jamais.**

**On calcule $D$ pour les deux tableaux.**

Pour le premier tableau, les cases noires portent $1$, $3$, $5$, $7$, $9$ et les blanches $2$, $4$, $6$, $8$ :

$$N = 1 + 3 + 5 + 7 + 9 = 25, \qquad B = 2 + 4 + 6 + 8 = 20, \qquad D = 5 .$$

Pour le second tableau, les cases noires portent $7$, $2$, $5$, $1$, $8$ et les blanches $9$, $3$, $6$, $4$ :

$$N = 7 + 2 + 5 + 1 + 8 = 23, \qquad B = 9 + 3 + 6 + 4 = 22, \qquad D = 1 .$$

**On conclut.** Si l'on pouvait passer du premier tableau au second, la quantité $D$ serait la même pour les deux. Or elle vaut $5$ d'un côté et $1$ de l'autre.

**Conclusion : on ne peut pas passer du premier tableau au second.**

## Going further

L'invariant dit même exactement quels tableaux sont accessibles : on peut montrer qu'à partir d'un tableau donné, on peut atteindre **tous** les tableaux ayant la même valeur de $D$, et eux seuls. La quantité $D$ est donc une description complète de ce qui est conservé.

Le même coloriage sert dès qu'une opération agit sur deux cases voisines d'un damier, quelle que soit sa taille.
