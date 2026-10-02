---
id: "11438"
title: "Compléter les deux dernières lignes"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tableau, carre-latin, construction, chaines, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Juniors, exercice 7 ; corrigé 2023-03_corrige-envoi-4.pdf ; le graphe du corrigé est remplacé par des chaînes de colonnes"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 3$ un entier. On a rempli un tableau de $n - 2$ lignes et $n$ colonnes avec des
nombres, de sorte que :

- chaque ligne contient chacun des nombres $1, 2, \ldots, n$ exactement une fois ;
- dans chaque colonne, les nombres sont tous différents.

Montrer qu'on peut ajouter deux lignes en bas du tableau, de façon à obtenir un tableau carré
$n \times n$ dans lequel **chaque ligne et chaque colonne** contient chacun des nombres
$1, 2, \ldots, n$ exactement une fois.

Par exemple, pour $n = 4$, on peut compléter ainsi le tableau formé des deux premières lignes :

| 1 | 2 | 3 | 4 |
|---|---|---|---|
| 2 | 1 | 4 | 3 |
| 3 | 4 | 1 | 2 |
| 4 | 3 | 2 | 1 |

## Hints

1. Combien de nombres manquent dans chaque colonne ? Dans combien de colonnes manque un nombre
   donné, par exemple le nombre $1$ ?
2. Écris sur une étiquette, pour chaque colonne, les deux nombres qui y manquent. Chaque nombre
   apparaît alors sur exactement deux étiquettes. Pars d'une étiquette et suis les nombres d'une
   étiquette à l'autre, comme des dominos.
3. Les étiquettes se rangent en rondes fermées. Dans chaque ronde, mets le premier nombre de chaque
   étiquette dans l'avant-dernière ligne et le second dans la dernière.

## Solution

**Étape 1 : ce qui manque.** Chaque colonne contient $n - 2$ nombres différents, choisis parmi
$1, \ldots, n$. Il lui manque donc **exactement deux nombres**.

Prenons un nombre $a$. Il apparaît une fois dans chacune des $n - 2$ lignes, donc $n - 2$ fois en
tout, et jamais deux fois dans la même colonne. Il apparaît donc dans $n - 2$ colonnes différentes,
et il **manque dans exactement deux colonnes**.

Pour chaque colonne, écrivons sur une étiquette les deux nombres qui y manquent. On a $n$
étiquettes, chacune porte deux nombres différents, et chaque nombre de $1$ à $n$ apparaît sur
exactement deux étiquettes.

Il s'agit de décider, pour chaque colonne, lequel des deux nombres manquants va dans
l'avant-dernière ligne (la ligne $n - 1$), l'autre allant dans la dernière ligne (la ligne $n$).
Les colonnes seront alors complètes. Il faut que chacune des deux nouvelles lignes contienne chaque
nombre une fois.

**Étape 2 : les étiquettes forment des rondes.** Prenons une étiquette $C_1$, qui porte deux nombres
$a_1$ et $a_2$. Le nombre $a_2$ apparaît sur une autre étiquette $C_2$, qui porte $a_2$ et un nombre
$a_3$. Le nombre $a_3$ apparaît sur une autre étiquette que $C_2$, notée $C_3$, qui porte $a_3$ et
un nombre $a_4$, et ainsi de suite : $C_{i}$ est toujours l'étiquette **autre que** $C_{i-1}$ qui
porte $a_i$, et $a_{i+1}$ est l'autre nombre de $C_i$.

Il n'y a que $n$ nombres, donc on finit par obtenir un nombre $a_{k+1}$ déjà vu. Arrêtons-nous la
première fois que cela arrive : $a_1, \ldots, a_k$ sont tous différents. Montrons que $a_{k+1} = a_1$.

- Ce n'est pas $a_k$, car l'étiquette $C_k$ porte deux nombres différents.
- Supposons que ce soit $a_j$ avec $2 \leqslant j \leqslant k - 1$. Le nombre $a_j$ est sur $C_{j-1}$
  et sur $C_j$, qui sont deux étiquettes différentes par construction. Il est aussi sur $C_k$. Comme
  il n'est que sur deux étiquettes, $C_k$ est $C_{j-1}$ ou $C_j$. Mais $C_k$ porte aussi $a_k$, alors
  que $C_{j-1}$ ne porte que $a_{j-1}$ et $a_j$, et $C_j$ ne porte que $a_j$ et $a_{j+1}$. Il faudrait
  donc $k = j + 1$ et $C_k = C_j = C_{k-1}$, ce qui est exclu puisque $C_k$ est choisie différente de
  $C_{k-1}$.

Donc $a_{k+1} = a_1$, et les étiquettes $C_1, C_2, \ldots, C_k$ forment une **ronde** :

$$(a_1, a_2), \quad (a_2, a_3), \quad \ldots, \quad (a_{k-1}, a_k), \quad (a_k, a_1),$$

où les nombres $a_1, \ldots, a_k$ sont tous différents. Ces $k$ étiquettes sont bien différentes les
unes des autres, et ce sont les deux seules étiquettes de chacun des nombres $a_1, \ldots, a_k$. (Une
ronde peut n'avoir que deux étiquettes, $(a_1, a_2)$ et $(a_2, a_1)$, quand deux colonnes ont les
mêmes nombres manquants.)

On recommence avec une étiquette qui n'est dans aucune ronde déjà formée, et ainsi de suite. Toutes
les étiquettes sont rangées en rondes, et chaque nombre de $1$ à $n$ est dans exactement une ronde.

**Étape 3 : on remplit.** Pour chaque étiquette $(a_i, a_{i+1})$ d'une ronde, on écrit le premier
nombre $a_i$ dans l'avant-dernière ligne, en bas de la colonne correspondante, et le second nombre
$a_{i+1}$ dans la dernière ligne.

- Chaque colonne reçoit ses deux nombres manquants : elle contient désormais $1, \ldots, n$.
- Dans une ronde, chaque nombre $a_i$ est écrit une fois en premier (sur l'étiquette
  $(a_i, a_{i+1})$) et une fois en second (sur l'étiquette $(a_{i-1}, a_i)$). Comme chaque nombre
  est dans une seule ronde, l'avant-dernière ligne contient chaque nombre de $1$ à $n$ exactement
  une fois, et la dernière ligne aussi.

**Conclusion.** On peut toujours compléter le tableau en un tableau $n \times n$ où chaque ligne et
chaque colonne contient chacun des nombres de $1$ à $n$ une fois. Il suffit de ranger les paires de
nombres manquants en rondes, puis de les écrire dans le sens de la ronde.

## Going further

Un tel tableau carré s'appelle un **carré latin**. Un résultat plus fort est vrai : un tableau de
$k$ lignes et $n$ colonnes ayant les mêmes propriétés peut toujours être complété en carré latin,
quel que soit $k < n$. La preuve demande un outil plus puissant, le lemme des mariages de Hall.
