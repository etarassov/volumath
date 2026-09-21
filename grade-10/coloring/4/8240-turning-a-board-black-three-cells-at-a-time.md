---
id: "8240"
title: "Noircir un échiquier trois cases à la fois"
grade: 10
theme: coloring
difficulty: 4
duration_min: 40
tags: [invariant, parite, pavage, echiquier, coloriage]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », deuxième partie, TD de combinatoire (Savinien Kreczman, Andrei Barbu), section Coloriages, exercice 17"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

On part d'un échiquier $8 \times 8$ dont **toutes les cases sont blanches**.

Un coup consiste à choisir trois cases alignées et côte à côte, c'est-à-dire un rectangle
$1 \times 3$ posé horizontalement ou verticalement, et à **inverser la couleur de ces trois
cases** : celles qui étaient blanches deviennent noires, celles qui étaient noires deviennent
blanches.

Peut-on, après un certain nombre de coups, obtenir un échiquier entièrement noir ?

## Hints

1. Essaie d'abord sur une grille plus petite pour sentir ce qui se passe. Tu verras qu'on n'y
   arrive jamais : il y a donc sans doute une raison, et cette raison est un *invariant*.
2. Un invariant utile ici sera une quantité qui ne change pas de **parité** quand on joue un
   coup. Cherche un ensemble $S$ de cases tel que tout rectangle $1 \times 3$ rencontre $S$ en
   un nombre **pair** de cases.
3. Numérote les lignes et les colonnes de $1$ à $8$. Parmi trois nombres consécutifs, combien
   sont congrus à $2$ modulo $3$ ?
4. Garde les cases dont la ligne **et** la colonne sont différentes de $2$, $5$ et $8$.
   Combien de cases as-tu gardées ?

## Solution

**La réponse est non.**

**On marque certaines cases.**

Numérotons les lignes et les colonnes de $1$ à $8$. Les numéros $2$, $5$ et $8$ sont exactement
ceux qui laissent le reste $2$ dans la division par $3$. Marquons d'une croix toute case dont
la ligne **et** la colonne évitent ces trois numéros, c'est-à-dire dont la ligne et la colonne
sont prises dans $\{1, 3, 4, 6, 7\}$ :

|   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| **1** | × |   | × | × |   | × | × |   |
| **2** |   |   |   |   |   |   |   |   |
| **3** | × |   | × | × |   | × | × |   |
| **4** | × |   | × | × |   | × | × |   |
| **5** |   |   |   |   |   |   |   |   |
| **6** | × |   | × | × |   | × | × |   |
| **7** | × |   | × | × |   | × | × |   |
| **8** |   |   |   |   |   |   |   |   |

Il y a $5$ lignes marquées et $5$ colonnes marquées, donc $5 \times 5 = 25$ cases portent une
croix. Retenons ce nombre : **$25$ est impair.**

**Tout coup touche un nombre pair de cases marquées.**

Prenons un rectangle $1 \times 3$ posé horizontalement sur la ligne $i$, couvrant les colonnes
$j$, $j+1$, $j+2$.

- Si la ligne $i$ n'est pas marquée, c'est-à-dire si $i \in \{2, 5, 8\}$, alors aucune des trois
  cases ne porte de croix : le coup touche $0$ case marquée.
- Si la ligne $i$ est marquée, une case $(i, c)$ du rectangle porte une croix exactement quand
  la colonne $c$ est marquée. Or $j$, $j+1$ et $j+2$ sont trois entiers consécutifs, donc
  **exactement un** des trois laisse le reste $2$ dans la division par $3$. Les deux autres
  sont des colonnes marquées : le coup touche $2$ cases marquées.

Dans les deux cas le nombre de cases marquées touchées vaut $0$ ou $2$, donc il est **pair**.
Le raisonnement est identique pour un rectangle posé verticalement, en échangeant les rôles
des lignes et des colonnes.

**L'invariant.**

Appelons $N$ le nombre de cases **à la fois marquées et noires**. Un coup change la couleur
d'un nombre pair de cases marquées ; chacune de ces cases fait monter ou descendre $N$ de $1$.
Donc $N$ varie d'un nombre pair à chaque coup, et **la parité de $N$ ne change jamais**.

**Conclusion.**

Au départ tout est blanc, donc $N = 0$, un nombre pair. Dans la position visée tout est noir,
donc $N = 25$, un nombre impair. La parité de $N$ devrait avoir changé, ce qui est impossible.

**On ne peut donc jamais noircir entièrement l'échiquier.**

## Going further

1. Où ce raisonnement échoue-t-il sur un échiquier $9 \times 9$ ? Et sait-on alors tout noircir ?
2. Et sur un échiquier $8 \times 8$ si l'on s'autorise en plus les rectangles $1 \times 2$ ?
3. Combien de cases marquées obtient-on avec la même recette sur un échiquier $n \times n$ ?
   Pour quels $n$ ce nombre est-il impair ?
