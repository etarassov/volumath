---
id: "8242"
title: "Un rectangle 8 × 9 avec des pièces 1 × 6"
grade: 9
theme: coloring
difficulty: 4
duration_min: 35
tags: [pavage, coloriage, restes, diagonales]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, « Principe des tiroirs » (Andrei Barbu), section Coloriages, exercice 17"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Peut-on recouvrir exactement un rectangle de $8$ cases sur $9$ avec des pièces $1 \times 6$,
posées horizontalement ou verticalement, sans trou ni chevauchement ?

## Hints

1. Le nombre de cases est-il compatible ? Combien de pièces faudrait-il ?
2. Le compte tombe juste, il faut donc un argument de coloriage. L'idée est de peindre le
   rectangle avec **six** couleurs, de façon qu'une pièce $1 \times 6$ prenne toujours une case
   de chaque couleur.
3. Numérote les lignes de $1$ à $8$ et les colonnes de $1$ à $9$, et donne à la case
   $(i, j)$ la couleur égale au reste de $i + j$ dans la division par $6$. Vérifie qu'une pièce
   $1 \times 6$, horizontale ou verticale, prend bien une case de chaque couleur.
4. Si le pavage existait, les six couleurs apparaîtraient donc le même nombre de fois. Compte-les.

## Solution

**La réponse est non.**

**Le compte des cases ne suffit pas.**

Le rectangle a $8 \times 9 = 72$ cases, et $72 = 12 \times 6$. Il faudrait donc exactement $12$
pièces. Le compte ne s'oppose à rien : il faut une autre idée.

**Un coloriage en six couleurs, le long des diagonales.**

Numérotons les lignes de $1$ à $8$ et les colonnes de $1$ à $9$. Donnons à la case $(i, j)$ pour
couleur le reste de $i + j$ dans la division par $6$. Voici le résultat :

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|---|---|---|---|---|---|---|---|---|---|
| **1** | 2 | 3 | 4 | 5 | 0 | 1 | 2 | 3 | 4 |
| **2** | 3 | 4 | 5 | 0 | 1 | 2 | 3 | 4 | 5 |
| **3** | 4 | 5 | 0 | 1 | 2 | 3 | 4 | 5 | 0 |
| **4** | 5 | 0 | 1 | 2 | 3 | 4 | 5 | 0 | 1 |
| **5** | 0 | 1 | 2 | 3 | 4 | 5 | 0 | 1 | 2 |
| **6** | 1 | 2 | 3 | 4 | 5 | 0 | 1 | 2 | 3 |
| **7** | 2 | 3 | 4 | 5 | 0 | 1 | 2 | 3 | 4 |
| **8** | 3 | 4 | 5 | 0 | 1 | 2 | 3 | 4 | 5 |

Les cases d'une même couleur forment des diagonales parallèles, ce qui explique l'allure du
tableau.

**Une pièce prend une case de chaque couleur.**

Une pièce horizontale posée sur la ligne $i$ couvre six colonnes consécutives $j, j+1, \ldots,
j+5$. Les sommes $i+j,\ i+j+1,\ \ldots,\ i+j+5$ sont six entiers consécutifs : leurs restes dans
la division par $6$ sont donc les six restes $0, 1, 2, 3, 4, 5$, chacun une fois exactement.
La pièce prend bien **une case de chaque couleur**.

Pour une pièce verticale le raisonnement est le même, avec six lignes consécutives.

**Le comptage qui tue.**

Si le pavage existait, il utiliserait $12$ pièces, et chaque couleur apparaîtrait donc
exactement $12$ fois. Comptons les couleurs réellement présentes dans le tableau :

| couleur | 0 | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|---|
| nombre de cases | $11$ | $11$ | $12$ | $13$ | $13$ | $12$ |

(La somme fait bien $11 + 11 + 12 + 13 + 13 + 12 = 72$.)

La couleur $0$ n'apparaît que $11$ fois, alors qu'il en faudrait $12$. Contradiction.

**On ne peut donc pas paver un rectangle $8 \times 9$ avec des pièces $1 \times 6$.**

## Going further

1. Un rectangle $6 \times 9$, lui, se pave sans peine. Pourquoi ? Et un $8 \times 12$ ?
2. Plus généralement, on sait démontrer qu'un rectangle $m \times n$ se pave avec des pièces
   $1 \times k$ **si et seulement si** $k$ divise $m$ ou $k$ divise $n$. Vérifier que le
   rectangle $8 \times 9$ et les pièces $1 \times 6$ rentrent bien dans ce cadre.
3. Reprendre la méthode pour montrer qu'on ne peut pas paver un rectangle $10 \times 14$ avec
   des pièces $1 \times 4$.
