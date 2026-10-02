---
id: "7413"
title: "Colorier les entiers reliés par une somme première"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [coloriage, nombres-premiers, parite, graphe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 56 (résolu par Lucas Flammant)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On écrit sur une feuille tous les entiers strictement positifs : $1$, $2$, $3$, $4$, …

On relie ensuite deux entiers différents par un trait lorsque leur somme est un nombre premier.
Par exemple $2$ et $3$ sont reliés (car $2 + 3 = 5$ est premier), et $4$ et $7$ aussi (car
$4 + 7 = 11$).

On veut colorier tous les entiers de sorte que **deux entiers reliés par un trait ne soient jamais
de la même couleur**.

Quel est le nombre minimal de couleurs nécessaires ?

## Hints

1. Une seule couleur suffirait-elle ? Trouve deux entiers reliés : ils devraient être de la même
   couleur, ce qui est interdit.
2. Essaie deux couleurs. Cherche une règle très simple pour décider de la couleur d'un entier.
3. Quand la somme de deux entiers différents est-elle un nombre premier **pair** ? Et un nombre
   premier impair ?

## Solution

**La réponse est : deux couleurs, et c'est le minimum.**

**Une couleur ne suffit pas.**

Les entiers $2$ et $3$ sont reliés, puisque $2 + 3 = 5$ est premier. Ils doivent donc être de
couleurs différentes : une seule couleur est impossible.

**Deux couleurs suffisent.**

Colorions en rouge tous les entiers **pairs**, et en bleu tous les entiers **impairs**.

Vérifions qu'aucun trait ne relie deux entiers de la même couleur.

- *Deux entiers pairs.* Soient $a$ et $b$ deux entiers pairs différents, avec $a \geq 2$ et
  $b \geq 2$. Leur somme $a + b$ est paire et vaut au moins $2 + 4 = 6$. Le seul nombre premier
  pair est $2$, et $a + b \geq 6 > 2$. Donc $a+b$ n'est pas premier : les deux ne sont pas reliés.
- *Deux entiers impairs.* Soient $a$ et $b$ deux entiers impairs différents, avec $a \geq 1$ et
  $b \geq 1$. Leur somme est paire et vaut au moins $1 + 3 = 4 > 2$. Là encore $a+b$ n'est pas
  premier : les deux ne sont pas reliés.

Tous les traits relient donc un entier pair et un entier impair, c'est-à-dire un rouge et un bleu.
Ce coloriage convient.

**Conclusion.** Une couleur ne suffit pas, deux couleurs suffisent : **il en faut exactement
deux**.

## Going further

Reprends le problème en reliant cette fois deux entiers lorsque leur **différence** est un nombre
premier. Combien de couleurs faut-il alors ? (Commence par regarder les entiers $1$, $3$, $6$
et $8$.)
