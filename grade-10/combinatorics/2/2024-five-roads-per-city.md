---
id: "2024"
title: "Cinq routes au départ de chaque ville"
grade: 10
theme: combinatorics
difficulty: 2
duration_min: 15
tags: [graphe, degre, double-comptage, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, test de janvier 2017"
  reference: "Handout-1267-1279.pdf, exercice 2"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1267-1279.pdf"
---

## Statement

Dans un petit pays, chaque ville est reliée aux autres villes par exactement **cinq** routes. Le pays compte en tout **25** routes entre villes.

Combien y a-t-il de villes dans ce pays ?

(Une route relie deux villes et n'en traverse aucune autre. Il n'y a pas de route qui parte d'une ville pour y revenir.)

## Hints

1. Imaginez que chaque ville plante un panneau au départ de chacune de ses routes. Combien de panneaux au total ?
2. Comptez ces panneaux de deux façons différentes : une fois ville par ville, une fois route par route.
3. Chaque route porte exactement deux panneaux, un à chacune de ses extrémités.

## Solution

**Comptons les « bouts de route ».**

Appelons $n$ le nombre de villes. Plaçons un panneau au départ de chaque route, à l'entrée de chaque ville : un panneau correspond donc à un couple (une ville, une route qui en part).

*Premier comptage, ville par ville.* Chaque ville est le départ de $5$ routes, donc porte $5$ panneaux. Il y a donc

$$5n \quad \text{panneaux en tout.}$$

*Second comptage, route par route.* Chaque route a deux extrémités, donc porte exactement $2$ panneaux. Avec $25$ routes, cela fait

$$2 \times 25 = 50 \quad \text{panneaux en tout.}$$

**Les deux comptages portent sur les mêmes objets**, donc ils donnent le même résultat :

$$5n = 50, \qquad \text{donc} \qquad n = 10 .$$

**Conclusion.** Le pays compte **10 villes**.

## Going further

Ce raisonnement porte un nom : le **lemme des poignées de main**. Dans n'importe quel réseau, la somme des nombres de routes partant de chaque ville vaut le double du nombre de routes.

Une conséquence immédiate : cette somme est toujours **paire**. Donc le nombre de villes d'où part un nombre impair de routes est lui-même pair. Il est par exemple impossible que dans un pays, exactement sept villes soient chacune au départ de trois routes et toutes les autres au départ de quatre.
