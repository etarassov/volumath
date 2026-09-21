---
id: "7251"
title: "Les huit sommes d'une grille de neuf cases"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [tiroirs, grille, sommes, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Combinatoire : principe des tiroirs », exercice 11 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, principe des tiroirs (Ysaline), exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

On écrit dans chaque case d'une grille de $3$ cases sur $3$ l'un des trois nombres $-1$, $0$ ou
$1$. On a le droit de répéter les nombres autant qu'on veut.

Puis on calcule huit sommes : celle de chacune des trois lignes, celle de chacune des trois
colonnes, et celle de chacune des deux diagonales.

Montrer que, quoi qu'on ait écrit, deux de ces huit sommes sont égales.

## Hints

1. Combien de sommes calcule-t-on en tout ? Compte bien.
2. Chaque somme est celle de trois nombres valant $-1$, $0$ ou $1$. Entre quelles valeurs peut-elle
   se trouver ?
3. Combien de valeurs entières sont possibles ? Compare à huit.

## Solution

**Combien de sommes ?**

Trois lignes, trois colonnes, deux diagonales :
$$3 + 3 + 2 = 8 \text{ sommes.}$$

**Quelles valeurs peuvent-elles prendre ?**

Chaque somme additionne trois nombres, chacun valant $-1$, $0$ ou $1$.

- La plus petite valeur possible est $(-1) + (-1) + (-1) = -3$.
- La plus grande est $1 + 1 + 1 = 3$.

Et comme ce sont des entiers, chaque somme appartient à
$$\{-3,\ -2,\ -1,\ 0,\ 1,\ 2,\ 3\} ,$$
ce qui fait
$$7 \text{ valeurs possibles.}$$

**Le principe des tiroirs.**

On a $8$ sommes à ranger dans $7$ tiroirs (un par valeur possible). Comme $8 > 7$, deux sommes au
moins tombent dans le même tiroir.

**Deux des huit sommes sont donc égales.**

## Going further

Le raisonnement ne dépend pas du fait qu'on écrive des $-1$, des $0$ et des $1$ : il dépend
seulement du fait que trois nombres pris dans un ensemble de trois valeurs entières consécutives
donnent au plus sept sommes différentes.

Si l'on s'autorisait quatre valeurs, disons $-1$, $0$, $1$, $2$, les sommes iraient de $-3$ à $6$,
soit $10$ valeurs possibles pour $8$ sommes, et le principe des tiroirs ne dirait plus rien. On
peut alors effectivement remplir la grille avec huit sommes toutes différentes.
