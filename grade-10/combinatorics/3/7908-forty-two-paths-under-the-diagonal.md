---
id: "7908"
title: "Les chemins d'un pion sous la diagonale"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [denombrement, chemins, tableau, recurrence, catalan]
adapted_from: null
see_also: ["2405"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, Coupe Animath"
  reference: "stage_ete_2016.pdf, « Éliminatoires collégiens », exercice 11 et « Éliminatoires lycéens », exercice 3 (énoncé p. 22, solution p. 26)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Un pion se déplace sur un échiquier $6 \times 6$. Il part de la case en bas à gauche et doit rejoindre la case en haut à droite. À chaque étape, il saute soit sur la case juste à droite, soit sur la case juste au-dessus.

On lui impose de plus de ne jamais se trouver **strictement au-dessus** de la diagonale qui relie la case de départ à la case d'arrivée.

Combien de chemins peut-il emprunter ?

## Hints

1. Numérote les cases : colonne $c$ de $1$ à $6$ en partant de la gauche, ligne $\ell$ de $1$ à $6$ en partant du bas. Quelles cases sont interdites ?
2. Pour chaque case autorisée, note dans la case le **nombre de chemins autorisés qui y mènent depuis le départ**.
3. Une case ne peut être atteinte que depuis sa voisine de gauche ou sa voisine du dessous. Que vaut donc son nombre en fonction de ces deux-là ?
4. Remplis le tableau ligne par ligne, en partant du bas. La ligne du bas ne contient que des $1$.

## Solution

**La réponse : $42$ chemins.**

**Étape 1 : les cases autorisées.**

Repérons chaque case par $(c\,;\ell)$, où $c$ est le numéro de colonne ($1$ à gauche) et $\ell$ le numéro de ligne ($1$ en bas). Le pion part de $(1\,;1)$ et arrive en $(6\,;6)$.

La diagonale qui relie ces deux cases passe par les cases $(1\,;1), (2\,;2), \ldots, (6\,;6)$. Être strictement au-dessus de cette diagonale, c'est avoir $\ell > c$. Les cases autorisées sont donc celles qui vérifient

$$\ell \le c .$$

Il y en a $6 + 5 + 4 + 3 + 2 + 1 = 21$.

**Étape 2 : la règle de remplissage.**

Notons $N(c\,;\ell)$ le nombre de chemins autorisés allant de $(1\,;1)$ à $(c\,;\ell)$.

Pour arriver sur une case, le pion vient forcément de la case juste à gauche ou de la case juste en dessous. Donc

$$N(c\,;\ell) = N(c-1\,;\ell) + N(c\,;\ell-1) ,$$

en convenant que le nombre vaut $0$ pour une case interdite ou en dehors de l'échiquier.

Sur la ligne du bas ($\ell = 1$), le pion ne peut qu'avancer vers la droite : il y a un seul chemin vers chaque case, donc $N(c\,;1) = 1$.

**Étape 3 : on remplit le tableau.**

On écrit le tableau en mettant la ligne $1$ en bas, comme sur l'échiquier. Une case vide est une case interdite.

| | $c=1$ | $c=2$ | $c=3$ | $c=4$ | $c=5$ | $c=6$ |
|---|---|---|---|---|---|---|
| $\ell=6$ | | | | | | **42** |
| $\ell=5$ | | | | | 14 | 42 |
| $\ell=4$ | | | | 5 | 14 | 28 |
| $\ell=3$ | | | 2 | 5 | 9 | 14 |
| $\ell=2$ | | 1 | 2 | 3 | 4 | 5 |
| $\ell=1$ | 1 | 1 | 1 | 1 | 1 | 1 |

Vérifions quelques cases :

- $N(2\,;2) = N(1\,;2) + N(2\,;1) = 0 + 1 = 1$, car $(1\,;2)$ est interdite ;
- $N(4\,;3) = N(3\,;3) + N(4\,;2) = 2 + 3 = 5$ ;
- $N(6\,;5) = N(5\,;5) + N(6\,;4) = 14 + 28 = 42$ ;
- $N(6\,;6) = N(5\,;6) + N(6\,;5) = 0 + 42 = 42$.

**Conclusion.** Le pion dispose de $\boxed{42}$ chemins.

## Going further

Les nombres qu'on lit sur la diagonale du tableau, $1, 1, 2, 5, 14, 42$, sont les **nombres de Catalan**. Ils comptent une foule d'objets différents : les façons de parenthéser un produit, les triangulations d'un polygone, les arbres binaires… L'exercice 2405 de la base montre comment obtenir une formule générale pour ces nombres.
