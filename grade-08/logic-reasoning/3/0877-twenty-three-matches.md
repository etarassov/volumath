---
id: "0877"
title: "Vingt-trois allumettes sur la table"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, strategie gagnante, multiples, division euclidienne]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 3, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Antoine et Baptiste jouent à un jeu : on pose $23$ allumettes sur une table et chacun, à son tour, retire entre $1$ et $4$ allumettes. Antoine commence, et celui qui prend la dernière allumette gagne.

Existe-t-il une stratégie gagnante pour l'un des deux joueurs ?

*Une stratégie gagnante est une manière de jouer qui permet à l'un des deux joueurs de gagner, peu importe comment son adversaire joue.*

## Hints

1. Commence par de tout petits tas. Avec $1$, $2$, $3$ ou $4$ allumettes devant soi, on gagne tout de suite. Et avec $5$ ?
2. Avec $5$ allumettes devant soi, essaie les quatre coups possibles : dans chaque cas, combien en reste-t-il à l'adversaire ?
3. Le nombre $5$ est la clé : si ton adversaire prend $t$ allumettes, combien dois-tu en prendre pour que le total enlevé au cours des deux coups soit toujours le même ?
4. Quel reste laisse $23$ dans la division par $5$ ? Combien Antoine doit-il donc prendre au tout premier coup ?

## Solution

**Oui : Antoine, qui commence, a une stratégie gagnante. Il prend $3$ allumettes au premier coup, puis complète chaque coup de Baptiste à $5$.**

**L'idée : les tas dont le nombre d'allumettes est un multiple de $5$ sont des tas perdants.**

Précisons ce que cela veut dire : *si c'est votre tour et qu'il reste devant vous un multiple de $5$ allumettes, vous êtes perdu* (si l'autre joue bien).

**Pourquoi ?** Supposons qu'il reste $5m$ allumettes et que ce soit à vous de jouer. Vous retirez $t$ allumettes, avec $1 \leqslant t \leqslant 4$. Il en reste alors $5m - t$, et ce n'est plus un multiple de $5$, puisqu'on a retiré entre $1$ et $4$. Votre adversaire retire alors $5 - t$ allumettes, ce qui est bien un nombre compris entre $1$ et $4$ ; il en reste

$$5m - t - (5 - t) = 5m - 5 = 5(m-1),$$

à nouveau un multiple de $5$, et c'est encore à vous de jouer.

À chaque aller-retour, le tas perd donc exactement $5$ allumettes : on passe de $5m$ à $5(m-1)$, puis à $5(m-2)$, et ainsi de suite. Au bout de $m$ aller-retours il reste $0$ allumette, et la dernière allumette a été prise par votre adversaire. Vous avez perdu.

**On applique à $23$.** La division de $23$ par $5$ donne

$$23 = 4 \times 5 + 3.$$

Ce n'est pas un multiple de $5$. Antoine retire donc $3$ allumettes et laisse $20$ allumettes à Baptiste, c'est-à-dire un multiple de $5$. D'après ce qui précède, Baptiste est perdu : quoi qu'il prenne, Antoine complète son coup à $5$ et les positions se succèdent ainsi :

$$20 \longrightarrow 15 \longrightarrow 10 \longrightarrow 5 \longrightarrow 0,$$

le passage d'un multiple de $5$ au suivant se faisant toujours par un coup de Baptiste suivi d'un coup d'Antoine. C'est donc Antoine qui prend la dernière allumette.

**Conclusion : Antoine gagne à coup sûr en prenant $3$ allumettes au premier coup, puis en retirant $5 - t$ allumettes chaque fois que Baptiste vient d'en retirer $t$.**

## Going further

Le même raisonnement règle le jeu pour n'importe quel nombre de départ $N$ : le premier joueur gagne si $N$ n'est pas un multiple de $5$ (il retire le reste de $N$ dans la division par $5$), et il perd si $N$ est un multiple de $5$. Et si l'on change la règle en « chacun retire entre $1$ et $k$ allumettes », le nombre $5$ est simplement remplacé par $k+1$.
