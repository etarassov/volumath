---
id: "13862"
title: "Quatre chiffres croissants entre 2022 et 2700"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [chiffres, denombrement, ordre-croissant]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2022, premier tour"
  reference: "2022-09_tour-1-coupe-Animath-printemps-2022.pdf, sujet senior, exercice 15 ; réponse 34 dans la liste des réponses du même fichier, sans solution rédigée"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/tour-1-coupe-Animath-printemps-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-09_tour-1-coupe-Animath-printemps-2022.pdf"
---

## Statement

Combien d'entiers compris entre $2022$ et $2700$ ont quatre chiffres distincts qui forment une
suite strictement croissante quand on les lit de gauche à droite ?

Par exemple, $2468$ convient, mais $2446$ et $2531$ ne conviennent pas.

## Hints

1. Quel est forcément le premier chiffre ?
2. Une fois les trois derniers chiffres choisis, il n'y a qu'une façon de les ranger dans l'ordre
   croissant. Il suffit donc de choisir lesquels on prend.
3. Sépare les cas selon le deuxième chiffre. Lesquels sont possibles, sachant que le nombre ne
   dépasse pas $2700$ ?

## Solution

**Le premier chiffre.** Un entier entre $2022$ et $2700$ a quatre chiffres et commence par $2$.
Le nombre s'écrit donc $\overline{2bcd}$ avec $2 < b < c < d$, c'est-à-dire
$3 \leqslant b < c < d \leqslant 9$.

**Le deuxième chiffre.** Un tel nombre est au moins $2345$, donc plus grand que $2022$. Pour
qu'il ne dépasse pas $2700$, il faut $b \leqslant 6$ : avec $b = 7$, le plus petit nombre possible
est $2789$, qui est trop grand, et $2700$ lui-même a deux chiffres $0$.

**On compte, cas par cas.** Une fois $b$ fixé, il faut choisir deux chiffres $c < d$ parmi les
chiffres plus grands que $b$, jusqu'à $9$. Choisir deux chiffres parmi $k$ chiffres, sans tenir
compte de l'ordre, se fait de $\dfrac{k(k - 1)}{2}$ façons : on choisit le premier ($k$ choix),
puis le second ($k - 1$ choix), et chaque paire a été comptée deux fois.

| $b$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|
| chiffres possibles pour $c$ et $d$ | $4$ à $9$ | $5$ à $9$ | $6$ à $9$ | $7$ à $9$ |
| nombre de chiffres $k$ | $6$ | $5$ | $4$ | $3$ |
| nombre de paires | $15$ | $10$ | $6$ | $3$ |

Au total, $15 + 10 + 6 + 3 = 34$.

**Il y a $34$ tels entiers**, du plus petit, $2345$, au plus grand, $2689$.
