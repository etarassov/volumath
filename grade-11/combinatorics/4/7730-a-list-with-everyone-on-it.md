---
id: "7730"
title: "Une liste où tout le monde figure"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-de-l-extremum, maximum, tournoi, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, cours de Groupe A"
  reference: "stage_ete_2014.pdf, « Groupe A : stratégies de base », mercredi 20 matin (Joon Kwon), exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans un tournoi, chaque joueur rencontre chacun des autres exactement une fois, et il n'y a jamais de match nul.

À la fin du tournoi, chaque joueur écrit une liste. Sur sa liste, il inscrit :

- le nom de chaque joueur qu'il a battu ;
- et le nom de chaque joueur qui a battu l'un des joueurs qu'il a battus.

Montrer qu'il existe au moins une liste sur laquelle figurent les noms de **tous** les autres joueurs.

## Hints

1. Toutes les listes ne conviennent pas. Il faut choisir le bon joueur : celui pour qui une certaine quantité est extrême.
2. Considère le joueur qui a remporté le plus grand nombre de matchs. Pourquoi un tel joueur existe-t-il ?
3. Appelle-le $A$ et suppose par l'absurde qu'un joueur $B$ ne figure pas sur sa liste. Qui a gagné le match entre $A$ et $B$ ?
4. Toujours sous cette supposition, que peut-on dire du résultat du match entre $B$ et un joueur quelconque battu par $A$ ?
5. Compte alors les victoires de $B$ et compare-les à celles de $A$.

## Solution

**L'idée : prendre le joueur qui a le plus de victoires. Sa liste contient tout le monde.**

**Le choix du joueur.** Il y a un nombre fini de joueurs, donc il existe un joueur ayant remporté le plus grand nombre de matchs. Notons-le $A$, et notons $v$ son nombre de victoires. Tout autre joueur a donc au plus $v$ victoires.

**Supposons que sa liste soit incomplète.** Soit $B$ un joueur, différent de $A$, dont le nom ne figure pas sur la liste de $A$. Nous allons en tirer une contradiction.

**Premier point : $B$ a battu $A$.** Si $A$ avait battu $B$, le nom de $B$ serait sur la liste de $A$, au titre de la première règle. Ce n'est pas le cas, et il n'y a pas de match nul, donc c'est $B$ qui a battu $A$.

**Deuxième point : $B$ a battu tous les joueurs battus par $A$.** Soit $C$ un joueur battu par $A$. Si $C$ avait battu $B$, alors $B$ serait « un joueur qui a battu l'un des joueurs battus par $A$ », et son nom figurerait sur la liste de $A$ au titre de la seconde règle. Ce n'est pas le cas, donc c'est $B$ qui a battu $C$.

**On compte les victoires de $B$.** D'après le second point, $B$ a battu les $v$ joueurs que $A$ a battus. D'après le premier point, $B$ a en plus battu $A$ lui-même, qui ne fait évidemment pas partie des joueurs battus par $A$. Donc $B$ a remporté au moins

$$v + 1$$

matchs, c'est-à-dire strictement plus que $A$.

**La contradiction.** Cela contredit le choix de $A$ comme joueur ayant le plus de victoires.

**Conclusion : aucun joueur ne manque sur la liste de $A$. La liste du joueur ayant le plus de victoires contient donc les noms de tous les autres joueurs.**

## Going further

La démonstration dit un peu plus que l'énoncé : elle dit que **n'importe quel** joueur ayant le nombre maximal de victoires a une liste complète. S'ils sont plusieurs à égalité en tête, ils ont tous une liste complète.

En revanche, il n'est pas vrai qu'un joueur avec beaucoup de victoires, mais pas le maximum, ait forcément une liste complète. La propriété est vraiment liée au maximum.
