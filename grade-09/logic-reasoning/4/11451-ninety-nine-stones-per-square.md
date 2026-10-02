---
id: "11451"
title: "99 pierres sur chaque case"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [jeu, strategie, echiquier, invariant, parite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 4 (combinatoire)"
  reference: "2023-04_Sujet-envoi-4-2023-2024.pdf, Exercices Juniors, exercice 4 ; corrigé 2024-03_corrige-envoi-4-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/04/Sujet-envoi-4-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-04_Sujet-envoi-4-2023-2024.pdf"
---

## Statement

Une partie se joue sur un échiquier de $n \times n$ cases, avec $n \geqslant 1$. Au début, il y a
$99$ pierres sur chaque case.

Chacun son tour, Aimeric et Benoît choisissent une ligne ou une colonne, et retirent une pierre de
chaque case de cette ligne ou de cette colonne. On ne peut choisir une ligne ou une colonne que si
chacune de ses cases contient encore au moins une pierre. Le premier joueur qui ne peut plus jouer a
perdu.

Aimeric joue le premier. Pour quelles valeurs de $n$ Benoît a-t-il une stratégie gagnante ?

## Hints

1. Essaie avec $n = 1$, puis avec $n = 2$ et $3$ pierres par case au lieu de $99$. Compte les coups
   joués. Que remarques-tu ?
2. Regarde une diagonale de l'échiquier. Combien de ses pierres un coup enlève-t-il ?
3. Note $r_j$ le nombre de fois où la ligne $j$ a déjà été choisie, et $c_k$ le nombre de fois où la
   colonne $k$ a déjà été choisie. Combien reste-t-il de pierres sur la case de la ligne $j$ et de la
   colonne $k$ ?

## Solution

La réponse est : Benoît a une stratégie gagnante **exactement quand $n$ est pair**.

L'idée est que la partie dure toujours exactement $99n$ coups, quoi que fassent les joueurs.

**La diagonale.** Numérotons les lignes et les colonnes de $1$ à $n$, et appelons diagonale les $n$
cases de la ligne $i$ et de la colonne $i$, pour $i$ allant de $1$ à $n$. Chaque ligne contient
exactement une case de la diagonale, et chaque colonne aussi. Donc **chaque coup enlève exactement
une pierre de la diagonale**. Au début, la diagonale porte $99n$ pierres.

Quand la diagonale est vide, plus personne ne peut jouer, car chaque ligne et chaque colonne contient
une case vide. La partie dure donc au plus $99n$ coups.

**Tant que la diagonale n'est pas vide, on peut encore jouer.** À un moment de la partie, notons
$r_j$ le nombre de fois où la ligne $j$ a été choisie et $c_k$ le nombre de fois où la colonne $k$ a
été choisie. La case de la ligne $j$ et de la colonne $k$ a perdu une pierre à chaque fois que l'on a
choisi sa ligne ou sa colonne, donc elle contient

$$99 - r_j - c_k \ \text{pierres, et ce nombre est positif ou nul.}$$

Supposons que la case de la diagonale de la ligne $i$ contienne encore une pierre :
$r_i + c_i \leqslant 98$. Supposons aussi que personne ne puisse jouer, et cherchons une
contradiction.

- On ne peut pas choisir la ligne $i$ : elle a une case vide, disons dans la colonne $a$. Donc
  $r_i + c_a = 99$.
- On ne peut pas choisir la colonne $i$ : elle a une case vide, disons dans la ligne $b$. Donc
  $r_b + c_i = 99$.

En additionnant, $r_i + c_i + r_b + c_a = 198$, donc

$$r_b + c_a = 198 - (r_i + c_i) \geqslant 198 - 98 = 100 .$$

Mais alors la case de la ligne $b$ et de la colonne $a$ contiendrait $99 - r_b - c_a \leqslant -1$
pierre, ce qui est impossible. Donc un coup est encore possible.

**La longueur de la partie.** La partie ne s'arrête que quand la diagonale est vide, et chaque coup
enlève une pierre de la diagonale : elle dure exactement $99n$ coups.

**Qui gagne ?** Aimeric joue les coups numéros $1, 3, 5, \ldots$ et Benoît les coups numéros
$2, 4, 6, \ldots$ Celui qui joue le dernier coup gagne, car l'autre ne peut plus jouer.

- Si $n$ est pair, $99n$ est pair : Benoît joue le dernier coup et gagne, quoi qu'il fasse.
- Si $n$ est impair, $99n$ est impair : Aimeric joue le dernier coup et gagne, quoi qu'il fasse.

**Conclusion.** Benoît a une stratégie gagnante si et seulement si $n$ est pair. Et c'est une drôle
de stratégie : n'importe quelle façon de jouer convient.

## Going further

Le nombre $99$ ne joue aucun rôle. Avec $p$ pierres par case, la même preuve montre que la partie
dure toujours $pn$ coups. Benoît gagne alors exactement quand $pn$ est pair.

Avec un échiquier qui n'est pas carré, il n'y a plus de diagonale qui touche chaque ligne et chaque
colonne une seule fois, et l'argument tombe. Prenons $2$ lignes et $3$ colonnes, avec une seule
pierre par case.

- Si l'on commence par une ligne, il ne reste ensuite que l'autre ligne à jouer : la partie dure
  $2$ coups.
- Si l'on commence par une colonne, il reste ensuite exactement les deux autres colonnes : la partie
  dure $3$ coups.

La longueur de la partie dépend alors des coups joués, et il y a cette fois une vraie stratégie à
trouver. Ici, Aimeric gagne en choisissant d'abord une colonne.
