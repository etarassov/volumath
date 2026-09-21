---
id: "7917"
title: "Colorier un échiquier 2 par 10 sans deux bleus côte à côte"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, relation de recurrence, coloriage, tableau]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires lycéens », exercice 9 (énoncé p. 23, solution p. 27)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $a_n$ le nombre de façons de colorier chaque case d'un échiquier $2 \times n$ ($2$ lignes et $n$ colonnes) en bleu ou en rouge, de sorte que deux cases bleues ne soient jamais voisines. Deux cases sont voisines lorsqu'elles ont un côté commun.

Par exemple $a_1 = 3$ : une colonne de deux cases peut être toute rouge, ou bleue en haut, ou bleue en bas, mais pas toute bleue.

Déterminer $a_{10}$.

## Hints

1. Commence par calculer $a_2$ à la main : liste les coloriages d'un carré $2 \times 2$ sans deux bleus voisins.
2. Pour passer de $n$ colonnes à $n+1$ colonnes, on ajoute une colonne à droite. Quelles colonnes peut-on ajouter ? Cela dépend de la colonne précédente.
3. Sépare les coloriages en deux familles : ceux dont la dernière colonne est toute rouge, et ceux dont la dernière colonne contient exactement un bleu.
4. Écris comment chacune des deux familles se transforme quand on ajoute une colonne, puis remplis un tableau jusqu'à $n = 10$.

## Solution

**La réponse : $a_{10} = 8119$.**

**Étape 1 : deux familles de coloriages.**

Une colonne contient deux cases, voisines l'une de l'autre. Elle ne peut donc pas être toute bleue : elle est soit **toute rouge**, soit **à un seul bleu** (en haut ou en bas).

Pour un échiquier $2 \times n$ correctement colorié, notons

- $x_n$ le nombre de coloriages dont la **dernière colonne est toute rouge** ;
- $y_n$ le nombre de coloriages dont la **dernière colonne contient exactement un bleu**.

Alors $a_n = x_n + y_n$.

Pour $n = 1$ : $x_1 = 1$ (la colonne toute rouge) et $y_1 = 2$ (bleu en haut, ou bleu en bas). On retrouve $a_1 = 3$.

**Étape 2 : on ajoute une colonne.**

Partons d'un coloriage correct d'un échiquier $2 \times n$ et ajoutons une $(n+1)$-ième colonne à droite. La seule contrainte nouvelle porte sur les deux paires de cases voisines horizontalement.

- **La nouvelle colonne est toute rouge.** Aucune contrainte : on peut le faire à partir de n'importe quel coloriage. D'où
  $$x_{n+1} = x_n + y_n = a_n .$$

- **La nouvelle colonne contient un seul bleu.** Si la colonne précédente était toute rouge, le bleu peut se placer en haut ou en bas : $2$ possibilités. Si la colonne précédente avait déjà un bleu, le nouveau bleu doit se placer sur l'**autre** ligne : $1$ seule possibilité. D'où
  $$y_{n+1} = 2x_n + y_n .$$

Tout coloriage de $2 \times (n+1)$ s'obtient ainsi, une fois et une seule : il suffit d'effacer sa dernière colonne.

**Étape 3 : on remplit le tableau.**

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| $x_n$ | 1 | 3 | 7 | 17 | 41 | 99 | 239 | 577 | 1393 | 3363 |
| $y_n$ | 2 | 4 | 10 | 24 | 58 | 140 | 338 | 816 | 1970 | 4756 |
| $a_n$ | 3 | 7 | 17 | 41 | 99 | 239 | 577 | 1393 | 3363 | **8119** |

*Vérification du début :* $x_2 = a_1 = 3$ et $y_2 = 2 \times 1 + 2 = 4$, donc $a_2 = 7$. On peut le contrôler à la main sur un carré $2 \times 2$ : aucun bleu ($1$ coloriage), un seul bleu ($4$ coloriages), deux bleus en diagonale ($2$ coloriages), soit $7$ en tout. ✓

**Conclusion.** $a_{10} = \boxed{8119}$.

## Going further

En combinant les deux relations on trouve

$$a_{n+2} = 2a_{n+1} + a_n .$$

C'est la suite des **nombres de Pell**, cousine de la suite de Fibonacci, où le terme précédent est compté deux fois.
