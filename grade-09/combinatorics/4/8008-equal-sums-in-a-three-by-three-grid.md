---
id: "8008"
title: "Sommes égales dans une grille 3 × 3"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, grille, somme, carre-magique, recherche-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath 2017, éliminatoires collégiens, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

De combien de manières peut-on placer les neuf chiffres de $1$ à $9$ dans une grille
$3 \times 3$, un chiffre par case, de sorte que les trois sommes des lignes et les trois
sommes des colonnes soient toutes égales ?

*(On ne demande rien aux diagonales. Deux grilles qui se déduisent l'une de l'autre par une
rotation sont comptées comme deux grilles différentes.)*

## Hints

1. Commence par trouver la valeur commune de ces six sommes. Additionne les trois lignes.
2. Regarde la case qui contient le $9$. Que vaut la somme des deux autres nombres de sa
   ligne ? Et de sa colonne ?
3. Quelles sont les paires de nombres de $1$ à $8$ dont la somme vaut $6$ ? Il n'y en a pas
   beaucoup.
4. Une fois le $9$ placé et les deux paires posées, essaie de compléter les quatre cases qui
   restent. Combien de façons trouves-tu ?

## Solution

**La valeur commune des sommes.** La somme de tous les nombres écrits vaut

$$1 + 2 + \cdots + 9 = 45.$$

Les trois lignes se partagent ces neuf nombres, donc la somme des trois sommes de lignes vaut
$45$. Comme ces trois sommes sont égales, chacune vaut $15$. Le même argument avec les
colonnes montre que chaque colonne a aussi pour somme $15$.

**Le rôle du $9$.** Plaçons-nous dans la case qui contient le $9$. Les deux autres nombres de
sa ligne ont pour somme $15 - 9 = 6$, et les deux autres nombres de sa colonne aussi.

Cela fait quatre nombres, tous différents, tous pris dans $\{1, 2, \ldots, 8\}$, formant deux
paires de somme $6$. Or les paires de nombres distincts de $1$ à $8$ dont la somme vaut $6$
sont exactement

$$\{1, 5\} \qquad \text{et} \qquad \{2, 4\}$$

(la paire $\{3,3\}$ est interdite, les nombres doivent être distincts). Il y en a deux, donc
l'une est dans la ligne du $9$ et l'autre dans sa colonne.

**On compte les façons de poser ce départ.**

- La case du $9$ : $9$ choix.
- Laquelle des deux paires va dans la ligne (l'autre va dans la colonne) : $2$ choix.
- L'ordre des deux nombres de la ligne : $2$ choix.
- L'ordre des deux nombres de la colonne : $2$ choix.

Cela fait $9 \times 2 \times 2 \times 2 = 72$ départs possibles.

**Chaque départ se complète d'une seule façon.** Il reste à placer $3$, $6$, $7$ et $8$ dans
les quatre cases libres, qui forment un bloc $2 \times 2$.

Prenons par exemple le $9$ en haut à gauche, avec $1$ et $5$ dans la première ligne et $2$ et
$4$ dans la première colonne :

| | | |
|---|---|---|
| $9$ | $1$ | $5$ |
| $2$ | ? | ? |
| $4$ | ? | ? |

La deuxième ligne doit faire $15$, et elle commence par $2$ : les deux cases restantes ont pour
somme $13$. Parmi $3$, $6$, $7$, $8$, la seule paire de somme $13$ est $\{6, 7\}$. Il reste
donc $\{3, 8\}$ pour la troisième ligne, et on vérifie que $4 + 3 + 8 = 15$.

Reste à savoir qui va dans la deuxième colonne. Cette colonne commence par $1$ et doit faire
$15$, donc ses deux autres cases ont pour somme $14$ : ce sont $6$ et $8$. Donc $6$ est dans la
deuxième ligne et $8$ dans la troisième, et la grille est entièrement déterminée :

| | | |
|---|---|---|
| $9$ | $1$ | $5$ |
| $2$ | $6$ | $7$ |
| $4$ | $8$ | $3$ |

Le même raisonnement marche pour chacun des $72$ départs : la somme imposée à la deuxième
ligne détermine une unique paire parmi $\{3, 6, 7, 8\}$ (les sommes possibles des paires de cet
ensemble sont $9$, $10$, $11$, $13$, $14$, $15$, toutes atteintes une seule fois), puis la
somme imposée à la deuxième colonne fixe l'ordre.

**Le compte final.**

$$9 \times 2 \times 2 \times 2 = 72.$$

**Il y a $72$ grilles.**

## Going further

Parmi ces $72$ grilles, seules $8$ sont de vrais carrés magiques, c'est-à-dire ont aussi leurs
deux diagonales de somme $15$ : ce sont les $8$ images du carré magique classique par les
rotations et les symétries du carré. Les $64$ autres respectent les lignes et les colonnes,
mais pas les diagonales.
