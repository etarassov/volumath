---
id: "11228"
title: "Vingt joueurs et quatorze parties"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [extremalite, maximum, denombrement, echecs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices communs, exercice 5 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

Un club d'échecs compte $20$ membres. Un après-midi, $14$ parties sont jouées, chacune entre deux
membres du club, et chaque membre joue au moins une partie.

Montrer qu'on peut trouver $6$ de ces parties qui font intervenir $12$ joueurs différents.

## Hints

1. Appelons « bonne » une liste de parties dans laquelle aucun joueur n'apparaît deux fois. Prends
   une bonne liste qui contient le plus de parties possible. Disons qu'elle en contient $r$.
2. Deux joueurs qui n'apparaissent pas dans cette liste ont-ils pu jouer l'un contre l'autre ?
3. Chaque joueur qui n'apparaît pas dans la liste a joué au moins une partie. Contre qui ? Compte
   alors le nombre total de parties.

## Solution

Appelons **bonne** une liste de parties dans laquelle aucun joueur n'apparaît deux fois. Une bonne
liste de $r$ parties fait donc intervenir $2r$ joueurs différents. Il s'agit de montrer qu'il existe
une bonne liste de $6$ parties.

**Une bonne liste la plus longue possible.** Il existe des bonnes listes : par exemple, une liste
formée d'une seule partie. Choisissons une bonne liste $M$ qui contient le plus grand nombre possible
de parties, et notons $r$ ce nombre. Appelons **occupés** les $2r$ joueurs qui jouent une partie de
$M$, et **libres** les $20 - 2r$ autres membres du club.

**Deux joueurs libres n'ont pas joué ensemble.** Si deux joueurs libres $a$ et $b$ avaient joué une
partie ensemble, on pourrait ajouter cette partie à $M$ : on obtiendrait encore une bonne liste,
puisque ni $a$ ni $b$ n'apparaît dans $M$, et elle aurait $r + 1$ parties. C'est impossible, car $M$
est la plus longue possible.

**On compte les parties.** Chaque joueur libre a joué au moins une partie, et d'après ce qui
précède, son adversaire était un joueur occupé. Choisissons, pour chaque joueur libre, une partie
qu'il a jouée. On obtient ainsi $20 - 2r$ parties, toutes différentes, car chacune d'elles fait
intervenir un seul joueur libre. Aucune n'est dans $M$, car les parties de $M$ ne font intervenir
que des joueurs occupés. Au total, il y a donc au moins
$$r + (20 - 2r) = 20 - r$$
parties. Comme il y en a $14$, on obtient $20 - r \leqslant 14$, donc $r \geqslant 6$.

**Conclusion.** La liste $M$ contient au moins $6$ parties dans lesquelles aucun joueur n'apparaît
deux fois. En gardant $6$ d'entre elles, on obtient $6$ parties qui font intervenir $12$ joueurs
différents.

## Going further

- Le nombre $14$ est le plus grand possible. Avec $15$ parties, cela peut échouer : cinq joueurs
  $A$, $B$, $C$, $D$, $E$ jouent chacun contre trois des $15$ autres membres, et chacun de ces $15$
  membres ne joue qu'une seule partie. Chaque partie fait alors intervenir l'un des cinq joueurs
  $A$, $B$, $C$, $D$, $E$. Six parties à $12$ joueurs différents en demanderaient six différents :
  c'est impossible.
- Avec moins de parties, c'est au contraire plus facile : le même calcul donne une liste $M$ d'au
  moins $20 - 13 = 7$ parties quand il y a $13$ parties.
