---
id: "8835"
title: "Le joueur qui a écrit tous les noms"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-de-lextremum, tournoi, raisonnement-par-labsurde, maximum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe de l'extremum » (Théo et Noam), exercices 2 et 5, p. 115"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Dans un tournoi, chaque joueur rencontre chacun des autres exactement une fois, et il n'y a jamais match nul : chaque partie a un gagnant et un perdant.

À la fin, chaque joueur prend une feuille et y écrit :

- son propre nom ;
- le nom de tous les joueurs qu'il a battus ;
- le nom de tous les joueurs battus par ceux-là ;
- le nom de tous les joueurs battus par ces derniers ;
- et ainsi de suite, jusqu'à ne plus pouvoir ajouter de nom.

Montrer qu'il y a au moins un joueur dont la feuille contient **tous** les noms du tournoi.

## Hints

1. On cherche un joueur particulier. Le principe de l'extremum suggère de regarder le joueur dont la feuille contient le plus de noms.
2. Appelons-le $A$ et supposons par l'absurde qu'un nom manque sur sa feuille, celui de $B$. Qui a gagné la partie entre $A$ et $B$ ?
3. Compare alors la feuille de $B$ et celle de $A$. Que contient forcément la feuille de $B$ ?
4. Conclus en comptant les noms.

## Solution

### On choisit l'extremum

Considérons le joueur dont la feuille contient le **plus grand nombre de noms** ; appelons-le $A$. (Il y a un nombre fini de joueurs, donc un tel joueur existe ; s'il y a plusieurs ex æquo, on en prend un au hasard.)

### On raisonne par l'absurde

Supposons que la feuille de $A$ ne contienne pas tous les noms. Il existe donc un joueur $B$ dont le nom n'est pas sur la feuille de $A$.

**Qui a gagné entre $A$ et $B$ ?** Si $A$ avait battu $B$, le nom de $B$ serait sur la feuille de $A$ dès la première étape. Donc c'est $B$ qui a battu $A$.

**Ce que contient la feuille de $B$.** Comme $B$ a battu $A$, le nom de $A$ est sur la feuille de $B$. Mais alors, par construction, la feuille de $B$ contient aussi tous les joueurs battus par $A$, puis tous ceux battus par ceux-là, et ainsi de suite : autrement dit, **tous les noms de la feuille de $A$** figurent sur celle de $B$.

Le nom de $B$ lui-même est aussi sur sa propre feuille, alors qu'il n'est pas sur celle de $A$.

### La contradiction

La feuille de $B$ contient donc tous les noms de la feuille de $A$, plus le nom de $B$ : elle a **strictement plus** de noms que celle de $A$. Cela contredit le choix de $A$ comme celui qui en a le plus.

**Conclusion.** La feuille de $A$ contient tous les noms du tournoi.

### Pourquoi l'extremum

L'énoncé demande l'existence d'un joueur ayant une propriété très forte. On ne peut pas le construire : on ne sait rien des résultats du tournoi. Le principe de l'extremum offre un candidat naturel (« le meilleur pour la quantité qui nous intéresse »), et c'est ensuite la maximalité elle-même qui interdit à ce candidat d'échouer.

## Going further

Même tournoi, mais chaque joueur n'écrit cette fois que deux niveaux : les joueurs qu'il a battus, et les joueurs battus par ceux qu'il a battus. Montrer qu'un joueur a quand même tous les autres noms sur sa feuille.
