---
id: "5219"
title: "Neuf personnes sur une rangée de douze chaises"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [principe-des-tiroirs, chaises, decoupage-en-blocs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « The pigeon-hole principle », problème 1"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

Douze chaises sont alignées côte à côte. Neuf personnes viennent s'asseoir, chacune sur une chaise, et chaque chaise reçoit au plus une personne.

Montrer qu'il existe forcément **trois chaises voisines** occupées toutes les trois.

## Hints

1. Combien de chaises restent vides ?
2. Essayez d'empêcher trois chaises voisines d'être occupées : vous allez avoir besoin de beaucoup de chaises vides. Combien au minimum ?
3. Découpez la rangée en paquets de trois chaises voisines. Combien de paquets obtenez-vous ?
4. Pour qu'aucun paquet ne soit entièrement occupé, il faudrait au moins une chaise vide par paquet. Est-ce possible ?

## Solution

Sur les $12$ chaises, $9$ sont occupées, donc **$3$ chaises sont vides**.

Découpons la rangée en quatre paquets de trois chaises voisines :

$$\underbrace{1, 2, 3}_{\text{paquet A}} \quad \underbrace{4, 5, 6}_{\text{paquet B}} \quad \underbrace{7, 8, 9}_{\text{paquet C}} \quad \underbrace{10, 11, 12}_{\text{paquet D}}$$

Chacun de ces quatre paquets est bien formé de trois chaises voisines.

Raisonnons par l'absurde : supposons qu'aucun groupe de trois chaises voisines ne soit entièrement occupé. En particulier, aucun des quatre paquets A, B, C, D n'est entièrement occupé, donc chacun contient au moins une chaise vide.

Ces paquets ne se chevauchent pas, donc les chaises vides qu'ils contiennent sont toutes différentes. Il y aurait donc au moins $4$ chaises vides.

Or il n'y en a que $3$ : contradiction.

**Il existe donc bien trois chaises voisines occupées toutes les trois.**

## Going further

Le nombre $9$ est optimal : avec seulement $8$ personnes sur $12$ chaises, on peut éviter trois voisins. Par exemple en laissant vides les chaises $3$, $6$, $9$ et $12$, on occupe les chaises $1, 2, 4, 5, 7, 8, 10, 11$, et aucun groupe de trois chaises voisines n'est complet. C'est la même idée retournée : quatre chaises vides suffisent, une par paquet.
