---
id: "7414"
title: "Le jeu des tours"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie, echiquier, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 14 (résolu par Loïc Petitjean)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Deux joueurs posent à tour de rôle une tour sur un échiquier $8 \times 8$ vide. Une tour attaque
toutes les cases de sa ligne et toutes les cases de sa colonne.

On n'a pas le droit de poser une tour sur une case occupée, ni sur une case attaquée par une tour
déjà posée : autrement dit, les tours ne doivent jamais se menacer entre elles.

Le joueur qui ne peut plus poser de tour a perdu.

Lequel des deux joueurs gagne, et pourquoi ?

## Hints

1. Joue une partie. Combien de tours au maximum peut-on poser sur l'échiquier sans qu'elles se
   menacent ?
2. Montre que tant qu'il y a moins de huit tours sur l'échiquier, on peut **toujours** en poser
   une de plus. Compte les lignes libres et les colonnes libres.
3. Si la partie s'arrête forcément après un nombre de coups connu à l'avance, il suffit de
   regarder la parité de ce nombre.

## Solution

**Le deuxième joueur gagne : il gagne toujours, sans avoir besoin de réfléchir.**

**Chaque tour bloque une ligne et une colonne.**

Comme deux tours ne se menacent jamais, il n'y a jamais deux tours sur la même ligne, ni deux
tours sur la même colonne. Disons qu'une ligne est *bloquée* si elle contient déjà une tour, et de
même pour une colonne.

S'il y a $k$ tours sur l'échiquier, il y a donc exactement $k$ lignes bloquées et $k$ colonnes
bloquées.

**Tant qu'il y a moins de huit tours, on peut jouer.**

Supposons $k < 8$. Alors il reste $8 - k \geq 1$ lignes libres et $8 - k \geq 1$ colonnes libres.

Choisissons une ligne libre $L$ et une colonne libre $C$, et regardons leur case d'intersection.
Cette case est vide (sinon $L$ serait bloquée) et elle n'est attaquée par aucune tour : une tour
qui l'attaquerait serait sur la ligne $L$ ou sur la colonne $C$, or ces deux-là sont libres.

On peut donc y poser une tour. **La partie ne s'arrête jamais avant la huitième tour.**

**Avec huit tours, on ne peut plus jouer.**

S'il y a $8$ tours, les huit lignes sont bloquées. Toute case appartient à une ligne, donc toute
case libre est attaquée. On ne peut plus rien poser.

**Conclusion.**

La partie dure donc exactement $8$ coups, quelles que soient les façons de jouer. Le joueur qui
joue le $9^{\text{e}}$ coup est celui qui perd : c'est celui qui joue les coups impairs,
c'est-à-dire **le premier joueur**.

**Le second joueur gagne toujours.**

## Going further

Même question sur un échiquier $n \times n$. Puis : même jeu, mais avec des **rois** qui ne
doivent pas se menacer (un roi attaque les huit cases qui l'entourent). La partie a-t-elle encore
une durée fixée à l'avance ?
