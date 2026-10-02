---
id: "11639"
title: "Faire apparaître 2017 dans les neuf cases"
grade: 8
theme: coloring
difficulty: 3
duration_min: 15
tags: [echiquier, invariant, coloriage, cases voisines, somme]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

On considère un tableau de $3 \times 3$ cases. Au début, on écrit $0$ dans chacune des $9$ cases.

À chaque étape, on choisit deux cases **voisines**, c'est-à-dire qui ont un côté commun. Puis, au choix, on ajoute $1$ au nombre écrit dans chacune de ces deux cases, ou bien on retire $1$ au nombre écrit dans chacune de ces deux cases.

Est-il possible d'arriver, après un certain nombre d'étapes, à un tableau où le nombre $2017$ est écrit dans les $9$ cases ?

## Hints

1. Colorie le tableau comme un échiquier, en noir et blanc. Combien y a-t-il de cases de chaque couleur ?
2. Deux cases voisines ont-elles la même couleur ?
3. Regarde la somme des nombres écrits sur les cases noires, et celle des nombres écrits sur les cases blanches. Comment chacune change-t-elle à une étape ?

## Solution

On colorie le tableau comme un échiquier : les quatre coins et la case du centre sont noirs, les quatre autres cases sont blanches. Il y a donc $5$ cases noires et $4$ cases blanches. Deux cases voisines ont toujours des couleurs différentes : à chaque étape, on modifie donc **une case noire et une case blanche**.

On note $N$ la somme des nombres écrits sur les cases noires, et $B$ la somme des nombres écrits sur les cases blanches.

**Ce qui ne change jamais.** À une étape où l'on ajoute $1$, la somme $N$ augmente de $1$ (une seule case noire est modifiée), et la somme $B$ augmente aussi de $1$. À une étape où l'on retire $1$, les deux sommes diminuent de $1$. Dans les deux cas, la différence $N - B$ ne change pas.

Au début, toutes les cases valent $0$, donc $N - B = 0$. Cette différence reste égale à $0$ après n'importe quel nombre d'étapes.

**Le tableau voulu.** Si les $9$ cases contenaient $2017$, on aurait $N = 5 \times 2017$ et $B = 4 \times 2017$, donc $N - B = 2017$, qui n'est pas $0$.

**Conclusion : ce n'est pas possible.** On ne peut jamais obtenir $2017$ dans les $9$ cases.

## Going further

Le même raisonnement montre qu'on ne peut obtenir aucun tableau où toutes les cases portent le même nombre $k$, sauf $k = 0$. Inversement, on peut montrer que tout tableau d'entiers dont les cases noires et les cases blanches ont la même somme peut être atteint.
