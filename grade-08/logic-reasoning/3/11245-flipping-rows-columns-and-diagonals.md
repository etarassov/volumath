---
id: "11245"
title: "Retourner des lignes, des colonnes et des diagonales"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [invariant, parite, tableau, operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 4 (combinatoire)"
  reference: "2018-01_pofm-2017-2018-envoi4.pdf, Exercices du groupe B, exercice 1 ; corrigé 2018-02_pofm-2017-2018-envoi4-corrige.pdf (énoncé précisé : « toute une diagonale » désigne l'une des deux grandes diagonales, comme le suppose le corrigé ; si les petites diagonales étaient permises, un coin pourrait être changé seul et l'argument de parité ne marcherait plus)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/01/pofm-2017-2018-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-01_pofm-2017-2018-envoi4.pdf"
---

## Statement

Dans un tableau de $4 \times 4$ cases rempli de $0$ et de $1$, un **coup** consiste à choisir une
ligne entière, ou une colonne entière, ou l'une des deux grandes diagonales (celles qui vont d'un
coin au coin opposé), et à changer toutes ses cases : chaque $0$ devient $1$ et chaque $1$
devient $0$.

Pour chacun des trois tableaux ci-dessous, peut-on, par une suite de coups, obtenir un tableau qui
ne contient que des $0$ ?

**Tableau 1**

| | | | |
|---|---|---|---|
| 0 | 1 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 0 | 1 | 1 |

**Tableau 2**

| | | | |
|---|---|---|---|
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 |

**Tableau 3**

| | | | |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 1 | 1 | 0 | 0 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 |

## Hints

1. Combien de cases un coup change-t-il ? Que devient alors le nombre total de $1$ du tableau :
   peut-il passer d'un nombre pair à un nombre impair ?
2. Pour le tableau 2, le nombre total de $1$ est pair, donc il faut autre chose. Regarde seulement
   les quatre cases du carré de $2 \times 2$ en haut à gauche. Combien de ces quatre cases un coup
   peut-il changer ?
3. Pour le tableau 3, essaie de trouver une solution en trois coups.

## Solution

Changer deux fois la même ligne (ou colonne, ou diagonale) ne fait rien. Chaque coup change
exactement $4$ cases.

### Tableau 1 : impossible

Le tableau 1 contient $2 + 3 + 2 + 2 = 9$ fois le chiffre $1$, un nombre **impair**.

Regardons ce que fait un coup. Parmi les $4$ cases changées, disons que $u$ contenaient un $1$.
Après le coup, ces $u$ cases contiennent $0$ et les $4 - u$ autres contiennent $1$. Le nombre total
de $1$ du tableau change donc de $(4 - u) - u = 4 - 2u$, qui est un nombre pair. Ainsi, un coup ne
change jamais la parité du nombre de $1$.

Au départ, ce nombre est impair, il reste donc impair après n'importe quelle suite de coups. Un
tableau qui ne contient que des $0$ contient zéro fois le chiffre $1$, un nombre pair : on ne peut
pas l'obtenir.

### Tableau 2 : impossible

Le tableau 2 contient $1 + 3 + 1 + 3 = 8$ fois le chiffre $1$. Ce nombre est pair, donc l'argument
précédent ne suffit pas.

Regardons seulement les quatre cases du **carré de $2 \times 2$ en haut à gauche** : les deux
premières cases de la ligne $1$ et les deux premières cases de la ligne $2$. Combien de ces quatre
cases un coup change-t-il ?

- La ligne $1$ ou la ligne $2$ : $2$ cases du carré. La ligne $3$ ou la ligne $4$ : aucune.
- La colonne $1$ ou la colonne $2$ : $2$ cases du carré. La colonne $3$ ou la colonne $4$ : aucune.
- La diagonale qui part du coin en haut à gauche : elle passe par la première case de la ligne $1$
  et par la deuxième case de la ligne $2$, soit $2$ cases du carré.
- La diagonale qui part du coin en haut à droite : elle passe par la quatrième case de la ligne $1$,
  la troisième de la ligne $2$, la deuxième de la ligne $3$ et la première de la ligne $4$, donc par
  aucune case du carré.

Un coup change donc toujours $0$ ou $2$ cases du carré. Comme pour le tableau 1, le nombre de $1$
dans le carré change alors d'un nombre pair : $0$, ou bien $2 - 2u$ si $u$ des deux cases changées
contenaient un $1$. Sa parité ne change jamais.

Dans le tableau 2, le carré contient $0$, $1$, $1$ et $1$, soit trois fois le chiffre $1$, un nombre
impair. Il en contiendra toujours un nombre impair, donc jamais zéro : c'est impossible.

### Tableau 3 : possible

Voici une solution en trois coups. On change la colonne $1$, puis la ligne $3$, puis la diagonale
qui va du coin en haut à gauche au coin en bas à droite.

Après le changement de la colonne $1$ :

| | | | |
|---|---|---|---|
| 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |
| 0 | 0 | 0 | 1 |

Après le changement de la ligne $3$ :

| | | | |
|---|---|---|---|
| 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 0 | 0 | 1 |

Il reste des $1$ exactement sur la grande diagonale. En la changeant, on obtient un tableau qui ne
contient que des $0$.

**Conclusion : c'est impossible pour les tableaux 1 et 2, et possible pour le tableau 3.**

## Going further

- L'argument du carré en haut à gauche règle aussi le tableau 1 : ce carré y contient $0$, $1$, $1$
  et $1$.
- Vérifie que les trois autres carrés de $2 \times 2$ placés dans les coins, et aussi le carré de
  $2 \times 2$ du centre, ont la même propriété : chaque coup change $0$ ou $2$ de leurs cases.
- Pourquoi l'énoncé ne permet-il que les deux grandes diagonales ? Si on pouvait aussi changer les
  petites diagonales, il y en aurait une formée d'une seule case, le coin en haut à gauche, et un
  coup pourrait changer une seule case. Les deux arguments ci-dessus ne marcheraient plus, et on
  pourrait d'ailleurs vider le tableau 1 en cinq coups : cherche comment.
- Avec toutes les diagonales permises, le tableau 2 reste pourtant impossible. Regarde les huit
  cases du bord qui ne sont pas des coins : montre que chaque coup en change $0$ ou $2$, et compte
  combien d'entre elles contiennent $1$ dans le tableau 2.
