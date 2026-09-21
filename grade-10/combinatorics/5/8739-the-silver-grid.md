---
id: "8739"
title: "La grille d'argent"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [double comptage, parite, grille, diagonale]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, groupe B, entraînement de mi-parcours du 18 août 2024, exercice 3. La correction imprimée contient deux coquilles : elle écrit que les cases de la diagonale sont « comprises dans deux croix » (c'est une seule), et elle annonce 3993 valeurs au lieu de 4049"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On dispose d'une grille carrée de $n$ lignes et $n$ colonnes. Dans chaque case on écrit un entier
compris entre $1$ et $2n-1$.

Appelons **croix numéro $i$** la réunion de la $i$-ième ligne et de la $i$-ième colonne. Une croix
contient donc $2n-1$ cases : les $n$ cases de la ligne, les $n$ cases de la colonne, et la case
commune aux deux comptée une seule fois.

La grille est dite **grille d'argent** si, pour chaque $i$ entre $1$ et $n$, la croix numéro $i$
contient tous les nombres de $1$ à $2n-1$.

Montrer qu'il n'existe aucune grille d'argent pour $n = 2025$.

## Hints

1. Une croix a exactement $2n-1$ cases et doit contenir les $2n-1$ valeurs $1, 2, \ldots, 2n-1$.
   Que peut-on en dire de plus fort que « chaque valeur y figure » ?
2. Fixe une valeur $v$, par exemple $v = 7$, et intéresse-toi seulement aux cases qui contiennent
   ce $v$. Compte les couples (croix, case de cette croix contenant $v$) de deux façons.
3. Une case placée hors de la diagonale appartient à deux croix. Une case de la diagonale
   n'appartient qu'à une seule croix. Écris l'égalité de comptage que cela donne.
4. Tu obtiendras $n = d + 2m$, où $d$ est le nombre de cases de la diagonale contenant $v$. Que
   vaut la parité de $d$ quand $n$ est impair ?
5. Toutes les valeurs sont alors forcées sur la diagonale. Combien de cases y a-t-il sur la
   diagonale, et combien de valeurs faut-il y loger ?

## Solution

Posons $n = 2025$. Le nombre de valeurs autorisées est $2n - 1 = 4049$.

**Première remarque : chaque valeur apparaît exactement une fois par croix.**

La croix numéro $i$ compte exactement $2n-1$ cases, et l'énoncé demande qu'elle contienne les
$2n-1$ valeurs $1, 2, \ldots, 2n-1$. Il y a donc autant de cases que de valeurs à y placer, et
chaque valeur occupe au moins une case : chaque valeur occupe donc **exactement** une case de
cette croix.

**Deuxième remarque : comment les cases se répartissent entre les croix.**

Une case de la diagonale, c'est-à-dire une case $(i, i)$, est sur la ligne $i$ et sur la colonne
$i$. Elle appartient donc à la croix numéro $i$, et à aucune autre.

Une case $(i, j)$ avec $i \neq j$ est sur la ligne $i$, donc dans la croix numéro $i$, et sur la
colonne $j$, donc dans la croix numéro $j$. Elle appartient donc à exactement **deux** croix.

**Le double comptage.**

Fixons une valeur $v$ entre $1$ et $4049$, et comptons de deux manières le nombre de couples
$$(\text{croix},\ \text{case de cette croix qui contient } v).$$

En parcourant les croix : il y a $n$ croix, et d'après la première remarque chacune contient
exactement une case portant $v$. Le nombre de couples vaut donc $n$.

En parcourant les cases : notons $d$ le nombre de cases de la diagonale qui contiennent $v$, et
$m$ le nombre de cases hors diagonale qui contiennent $v$. Chaque case de la diagonale fournit
un couple, chaque case hors diagonale en fournit deux. Le nombre de couples vaut donc $d + 2m$.

Les deux comptages portent sur les mêmes couples, d'où
$$n = d + 2m .$$

**La contradiction.**

Ici $n = 2025$ est impair. Comme $2m$ est pair, $d = n - 2m$ est impair. En particulier
$d \geq 1$ : **toute** valeur $v$ apparaît au moins une fois sur la diagonale.

Or la diagonale ne possède que $n = 2025$ cases, et chaque case ne porte qu'une seule valeur.
Elle ne peut donc accueillir au plus que $2025$ valeurs différentes. Mais il faut y faire
figurer les $4049$ valeurs de $1$ à $4049$, et $4049 > 2025$.

C'est impossible. Il n'existe donc pas de grille d'argent pour $n = 2025$.

## Going further

1. Où exactement la démonstration utilise-t-elle que $2025$ est impair ? Refais le raisonnement
   avec $n$ pair : que devient la conclusion ?
2. Construis une grille d'argent pour $n = 2$. *Indication : les deux croix sont les mêmes trois
   cases, à la case diagonale près ; commence par choisir $a_{12}$ et $a_{21}$.*
3. Le cas $n = 1$ donne une grille d'argent, alors que $1$ est impair. L'argument ci-dessus
   s'applique pourtant aussi à $n = 1$. Pourquoi ne mène-t-il à aucune contradiction ?
