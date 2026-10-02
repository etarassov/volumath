---
id: "0156"
title: "La somme d'une ligne du triangle de Pascal"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [triangle-de-pascal, somme, puissances-de-deux, denombrement]
adapted_from: null
see_also: []
same_as: ["0405"]
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (7 класс, II полугодие)"
  reference: "Ast2017b.pdf, листок 18, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

On construit un triangle de nombres selon les trois règles suivantes :

- au sommet et le long des deux côtés, on écrit des $1$ ;
- chaque ligne contient un nombre de plus que la précédente ;
- tout autre nombre est la somme des deux nombres placés juste au-dessus de lui, l'un un peu à gauche, l'autre un peu à droite.

On obtient le **triangle de Pascal** :

```
             1
           1   1
         1   2   1
       1   3   3   1
     1   4   6   4   1
   1   5  10  10   5   1
 1   6  15  20  15   6   1
           . . .
```

On convient d'appeler **première ligne** celle qui est formée de deux $1$ ; le $1$ tout seul du sommet ne compte pas.

a) La somme des nombres de la sixième ligne est combien de fois plus grande que la somme des nombres de la cinquième ligne ?

b) Même question pour la $2018^\text{e}$ ligne comparée à la $2017^\text{e}$.

c) Combien vaut la somme des nombres de la $n$-ième ligne ?

## Hints

1. Pour la question a), il suffit de calculer les deux sommes. Fais-le aussi pour les premières lignes : $2$, puis $4$, puis $8$… Que remarques-tu ?
2. Pour comprendre pourquoi, ne regarde pas les sommes mais un seul nombre d'une ligne. Dans quels nombres de la ligne d'en dessous ce nombre intervient-il ?
3. Chaque nombre d'une ligne sert exactement deux fois pour fabriquer la ligne suivante. Que vaut alors la somme de la ligne suivante ?
4. Vérifie que les $1$ des bords servent bien deux fois eux aussi. Pour cela, imagine qu'à l'extérieur du triangle il n'y a que des $0$.

## Solution

### a) Un calcul direct

Cinquième ligne : $1 + 5 + 10 + 10 + 5 + 1 = 32$.

Sixième ligne : $1 + 6 + 15 + 20 + 15 + 6 + 1 = 64$.

La somme de la sixième ligne est donc $2$ fois plus grande que celle de la cinquième.

### b) La même réponse, et cette fois il faut une raison

*L'idée : ne pas compter les sommes, mais suivre chaque nombre.*

Prenons une ligne quelconque et un nombre $x$ écrit dans cette ligne. Ce nombre sert à fabriquer la ligne d'en dessous, et il y sert exactement deux fois :

- une fois pour le nombre placé juste en dessous à gauche ;
- une fois pour le nombre placé juste en dessous à droite.

C'est vrai aussi pour les $1$ des bords, à condition d'imaginer des $0$ tout autour du triangle : le $1$ de gauche sert à fabriquer le $1$ de gauche de la ligne suivante ($1 = 0 + 1$) et le nombre voisin.

Chaque nombre de la ligne est donc recopié deux fois dans la ligne suivante, et rien d'autre n'y est ajouté. Par conséquent

$$\text{somme de la ligne suivante} \;=\; 2 \times \text{somme de la ligne}$$

Vérifions sur un exemple, avec la troisième ligne $1,\ 3,\ 3,\ 1$ qui fabrique la quatrième :

$$1 + 4 + 6 + 4 + 1 = 1 + (1+3) + (3+3) + (3+1) + 1 = 2 \times (1 + 3 + 3 + 1) = 2 \times 8 = 16$$

La somme de la $2018^\text{e}$ ligne est donc, elle aussi, exactement $2$ fois celle de la $2017^\text{e}$ ligne.

### c) La formule

La première ligne est $1,\ 1$, sa somme vaut $2$. À chaque ligne suivante, la somme est multipliée par $2$.

- ligne 1 : $2$
- ligne 2 : $2 \times 2 = 4$
- ligne 3 : $2 \times 2 \times 2 = 8$
- ligne 4 : $16$, et ainsi de suite.

Pour arriver à la ligne $n$ on part de $2$ et on multiplie $n-1$ fois par $2$, soit $n$ facteurs $2$ en tout :

$$\text{somme de la ligne } n \;=\; 2^n$$

**Réponse.** a) Deux fois. b) Deux fois également. c) La somme des nombres de la $n$-ième ligne vaut $2^n$.

## Going further

Que vaut la somme de **tous** les nombres écrits, du sommet jusqu'à la ligne $n$ comprise ? C'est

$$1 + 2 + 4 + 8 + \dots + 2^n$$

Calcule cette somme pour $n = 1$, $2$, $3$, $4$ : tu trouves $3$, $7$, $15$, $31$. Chacun de ces nombres vaut $1$ de moins qu'une puissance de $2$. La somme vaut $2^{n+1} - 1$.
