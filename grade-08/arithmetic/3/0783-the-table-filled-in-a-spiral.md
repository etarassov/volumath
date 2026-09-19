---
id: "0783"
title: "Le tableau rempli en spirale"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [carres-parfaits, tableau, regularite, generalisation, diagonale]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 10, d'après Olympiades académiques de Versailles, 2010"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

Les entiers consécutifs $1$, $2$, $3$, $4$, etc. sont écrits dans les cases d'un tableau selon le schéma ci-dessous, qui montre le coin en haut à gauche du tableau.

| | colonne 1 | colonne 2 | colonne 3 | colonne 4 | colonne 5 |
| --- | --- | --- | --- | --- | --- |
| **ligne 1** | $1$ | $2$ | $9$ | $10$ | $25$ |
| **ligne 2** | $4$ | $3$ | $8$ | $11$ | $24$ |
| **ligne 3** | $5$ | $6$ | $7$ | $12$ | $23$ |
| **ligne 4** | $16$ | $15$ | $14$ | $13$ | $22$ |
| **ligne 5** | $17$ | $18$ | $19$ | $20$ | $21$ |

On part de $1$, on va à droite jusqu'à $2$, on descend jusqu'à $3$, on va à gauche jusqu'à $4$, puis on descend d'une ligne et on repart vers la droite, et ainsi de suite : le tableau se remplit par « équerres » de plus en plus grandes, en changeant de sens à chaque équerre.

Ainsi le nombre $8$ se trouve à l'intersection de la deuxième ligne et de la troisième colonne, et le nombre $13$ se trouve à l'intersection de la quatrième ligne et de la quatrième colonne.

Quel nombre se trouve à l'intersection de la vingt-cinquième ligne et de la vingt-cinquième colonne ?

## Hints

1. On ne va évidemment pas écrire le tableau jusqu'à la vingt-cinquième ligne. Regarde d'abord les nombres qui sont déjà sur la diagonale : $1$, $3$, $7$, $13$, $21$. Que remarques-tu si tu calcules les écarts entre deux nombres consécutifs de cette liste ?
2. Regarde maintenant les nombres qui terminent chaque équerre : $1$, $4$, $9$, $16$, $25$. Tu les connais.
3. Quand le carré de $n$ lignes et $n$ colonnes est rempli, le plus grand nombre écrit est $n^2$. Combien de cases contient l'équerre suivante ?
4. L'équerre numéro $n$ contient les nombres de $(n-1)^2 + 1$ à $n^2$. Elle a $2n - 1$ cases : $n$ dans la ligne $n$ et $n$ dans la colonne $n$, la case du coin étant comptée deux fois.
5. Dans cette équerre, la case du coin, celle de la ligne $n$ et de la colonne $n$, est la $n$-ième qu'on remplit, qu'on parte du haut ou de la gauche. Quel nombre y est donc écrit ?

## Solution

**Étape 1. Repérer les équerres.**

Regardons le nombre le plus grand écrit une fois que le carré de $n$ lignes et $n$ colonnes est entièrement rempli :

- carré $1 \times 1$ : le plus grand est $1$ ;
- carré $2 \times 2$ : le plus grand est $4$ ;
- carré $3 \times 3$ : le plus grand est $9$ ;
- carré $4 \times 4$ : le plus grand est $16$ ;
- carré $5 \times 5$ : le plus grand est $25$.

Ce sont les carrés parfaits $1^2$, $2^2$, $3^2$, $4^2$, $5^2$. Ce n'est pas un hasard : le carré de côté $n$ contient $n^2$ cases, et on y a écrit les entiers à partir de $1$ sans en sauter aucun, donc le dernier écrit est bien $n^2$.

On passe du carré de côté $n-1$ au carré de côté $n$ en ajoutant une **équerre** : la ligne $n$ (colonnes $1$ à $n$) et la colonne $n$ (lignes $1$ à $n$), qui se rejoignent dans la case du coin. Cette équerre contient

$$n^2 - (n-1)^2 = 2n - 1\text{ cases}$$

et on y écrit les nombres de $(n-1)^2 + 1$ jusqu'à $n^2$.

**Étape 2. Trouver la case du coin dans son équerre.**

L'équerre numéro $n$ se parcourt d'un bout à l'autre, et elle a deux bouts : la case de la ligne $n$, colonne $1$, et la case de la ligne $1$, colonne $n$. Selon la parité de $n$ on part de l'un ou de l'autre, mais dans les deux cas la case du coin (ligne $n$, colonne $n$) est à la même place : c'est la **$n$-ième case** de l'équerre, puisqu'il y a exactement $n$ cases depuis chaque bout jusqu'au coin, coin compris.

Le premier nombre de l'équerre est $(n-1)^2 + 1$, donc le $n$-ième est

$$(n-1)^2 + 1 + (n - 1) = (n-1)^2 + n$$

Autrement dit, la case de la ligne $n$ et de la colonne $n$ contient

$$(n-1)^2 + n = n^2 - 2n + 1 + n = n^2 - n + 1$$

**Étape 3. Vérifier sur le tableau donné.**

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ |
| --- | --- | --- | --- | --- | --- |
| $n^2 - n + 1$ | $1$ | $3$ | $7$ | $13$ | $21$ |
| nombre lu dans le tableau | $1$ | $3$ | $7$ | $13$ | $21$ |

La formule est bien celle de la diagonale.

**Étape 4. Répondre.**

Pour $n = 25$ :

$$25^2 - 25 + 1 = 625 - 25 + 1 = 601$$

On peut vérifier autrement : l'équerre numéro $25$ contient les nombres de $24^2 + 1 = 577$ à $25^2 = 625$. Comme $25$ est impair, on la parcourt en partant de la ligne $25$, colonne $1$, où est écrit $577$, puis on avance vers la droite. La case de la colonne $25$ est la $25$-ième, elle contient donc $577 + 24 = 601$.

**Conclusion.** Le nombre situé à l'intersection de la vingt-cinquième ligne et de la vingt-cinquième colonne est $\mathbf{601}$.

## Going further

Quel nombre se trouve à l'intersection de la ligne $25$ et de la colonne $1$ ? Et à l'intersection de la ligne $1$ et de la colonne $25$ ? (Attention au sens de parcours de l'équerre, qui dépend de la parité.)
