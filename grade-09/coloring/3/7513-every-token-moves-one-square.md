---
id: "7513"
title: "Chaque pion sur une case voisine"
grade: 9
theme: coloring
difficulty: 3
duration_min: 25
tags: [coloriage, damier, parite, comptage, impossibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 75 (solution p. 251, résolu par Ewen Goisot)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On pose un pion sur chaque case d'un quadrillage de $57 \times 57$ cases.

On enlève ensuite tous les pions, puis on les repose, toujours un par case, de sorte qu'il y ait de nouveau exactement un pion par case.

Est-il possible que **chaque** pion se retrouve sur une case voisine de celle qu'il occupait au départ ? (Deux cases sont voisines si elles ont un côté commun.)

## Hints

1. C'est une question de possibilité : essaie d'abord sur un tout petit quadrillage, $3 \times 3$ par exemple. Qu'observes-tu ?
2. Colorie le quadrillage comme un damier, en noir et blanc, deux cases voisines étant toujours de couleurs différentes.
3. Compte les cases noires et les cases blanches. Sont-elles en même nombre ?
4. Où va un pion posé sur une case noire ?

## Solution

**Réponse : non, c'est impossible.**

**Étape 1. On colorie en damier.**

Colorions les $57 \times 57$ cases comme un damier : deux cases qui se touchent par un côté sont de couleurs différentes. Mettons du noir aux quatre coins.

**Étape 2. On compte les cases de chaque couleur.**

Le quadrillage a $57$ lignes. Comme $57$ est impair :

- une ligne qui commence par une case noire contient $29$ noires et $28$ blanches ;
- une ligne qui commence par une case blanche contient $28$ noires et $29$ blanches.

Comme $57$ est impair, il y a $29$ lignes du premier type et $28$ du second. Au total :

$$\text{cases noires} = 29 \times 29 + 28 \times 28 = 841 + 784 = 1625,$$
$$\text{cases blanches} = 29 \times 28 + 28 \times 29 = 812 + 812 = 1624.$$

(On vérifie : $1625 + 1624 = 3249 = 57^2$.)

Il y a donc **une case noire de plus** que de cases blanches.

**Étape 3. Le déplacement change forcément la couleur.**

Deux cases voisines sont de couleurs différentes. Donc, si chaque pion se déplace sur une case voisine :

- tout pion parti d'une case noire arrive sur une case blanche ;
- tout pion parti d'une case blanche arrive sur une case noire.

**Étape 4. La contradiction.**

Il y a $1625$ pions au départ sur des cases noires. Ils arrivent tous sur des cases blanches, et deux pions différents ne peuvent pas arriver sur la même case. Il faudrait donc au moins $1625$ cases blanches.

Or il n'y en a que $1624$.

**Conclusion.** Un tel déplacement est impossible.

## Going further

Le même argument montre que c'est impossible sur tout quadrillage $m \times n$ où $m$ et $n$ sont **tous les deux impairs**, puisque alors le nombre total de cases est impair et les deux couleurs ne peuvent pas être en nombre égal.

En revanche, dès qu'une des deux dimensions est paire, c'est possible, et même facile : si le nombre de colonnes est pair, on apparie les colonnes deux par deux et tous les pions se décalent horizontalement d'une case vers leur partenaire.

Au fond, on a démontré une chose très générale : on ne peut appairer les cases noires aux cases blanches que si elles sont en même nombre. C'est le même argument qui interdit de paver avec des dominos un échiquier privé de deux coins opposés.
