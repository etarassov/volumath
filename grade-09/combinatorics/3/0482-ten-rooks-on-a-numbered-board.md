---
id: "0482"
title: "Dix tours sur un damier numéroté"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [damier, tours, somme, invariant, dizaines]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Kan2017.pdf, листок 13, задача 3, с. 56"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2017.pdf"
---

## Statement

Sur un damier de $10$ cases sur $10$, on écrit les nombres de $0$ à $99$ dans l'ordre, ligne
par ligne : la première ligne porte $0, 1, 2, \ldots, 9$, la deuxième porte
$10, 11, \ldots, 19$, et ainsi de suite jusqu'à la dernière ligne, qui porte
$90, 91, \ldots, 99$.

On place ensuite $10$ tours sur le damier, de façon qu'aucune ne puisse en prendre une autre.
Une tour se déplace le long de sa ligne et le long de sa colonne : cela revient donc à placer
exactement une tour par ligne et exactement une tour par colonne.

On additionne les dix nombres écrits dans les cases occupées par les tours.

Quelles valeurs cette somme peut-elle prendre ? Trouver toutes les valeurs possibles et
montrer qu'il n'y en a pas d'autres.

## Hints

1. Commence par un placement facile : les dix tours le long de la diagonale, sur les cases
   $0$, $11$, $22$, … Combien vaut la somme ?
2. Recommence avec un placement complètement différent. Que remarques-tu ? Il reste alors à
   comprendre pourquoi.
3. Le nombre écrit dans la case de la ligne numéro $i$ et de la colonne numéro $j$ vaut
   $10\,(i-1) + (j-1)$. Coupe la somme en deux morceaux : ce qui vient des lignes et ce qui
   vient des colonnes.
4. Il y a exactement une tour par ligne. Quels sont donc les dix numéros de ligne utilisés ?
   Et les dix numéros de colonne ?

## Solution

**L'idée : on sépare les dizaines des unités.**

**Étape 1. Une formule pour le nombre écrit dans une case.**

Numérotons les lignes de $1$ à $10$ du haut vers le bas et les colonnes de $1$ à $10$ de la
gauche vers la droite. La case de la ligne $i$ et de la colonne $j$ porte le nombre

$$10\,(i-1) + (j-1)$$

Vérifions : la case en haut à gauche ($i=1$, $j=1$) porte $0$ ; celle en haut à droite
($i=1$, $j=10$) porte $9$ ; celle de la ligne $3$ et de la colonne $5$ porte
$10\times2 + 4 = 24$. C'est bien cela.

**Étape 2. Couper la somme en deux.**

Appelons $(i_1\,;j_1), \ldots, (i_{10}\,;j_{10})$ les cases occupées par les dix tours. La
somme cherchée vaut

$$S = \sum_{k=1}^{10} (10\,(i_k-1) + (j_k-1))
   = 10\times[(i_1-1) + \cdots + (i_{10}-1)] + [(j_1-1) + \cdots + (j_{10}-1)]$$

Le premier crochet ne dépend que des lignes occupées, le second que des colonnes occupées.

**Étape 3. Les lignes, puis les colonnes.**

Il y a exactement une tour par ligne. Les dix numéros $i_1, \ldots, i_{10}$ sont donc les
nombres $1, 2, \ldots, 10$, chacun une fois et une seule, seulement mélangés. Par conséquent

$$(i_1-1) + \cdots + (i_{10}-1) = 0 + 1 + 2 + \cdots + 9 = 45$$

(on regroupe : $0+9$, $1+8$, $2+7$, $3+6$, $4+5$, soit cinq paires valant $9$ chacune).

Il y a aussi exactement une tour par colonne, donc de la même façon

$$(j_1-1) + \cdots + (j_{10}-1) = 0 + 1 + \cdots + 9 = 45$$

**Étape 4. Conclure.**

$$S = 10 \times 45 + 45 = 450 + 45 = 495$$

Ce calcul n'a jamais utilisé la position exacte des tours, seulement le fait qu'il y en a une
par ligne et une par colonne. La somme vaut donc toujours $495$.

**Un contrôle.** Avec les tours sur la diagonale, les nombres occupés sont $0$, $11$, $22$,
…, $99$, et leur somme vaut $11 \times (0+1+\cdots+9) = 11 \times 45 = 495$. C'est bien cela.

**Conclusion.**

La somme vaut $495$ quel que soit le placement des dix tours : c'est la seule valeur possible.

## Going further

1. Même question sur un damier $5 \times 5$ où l'on écrit de la même façon les nombres de $0$
   à $24$, avec cinq tours qui ne se prennent pas.
2. Et si, sur le damier $10 \times 10$, on écrit les nombres de $1$ à $100$ au lieu de $0$ à
   $99$ ? Peux-tu répondre sans tout recalculer ?
