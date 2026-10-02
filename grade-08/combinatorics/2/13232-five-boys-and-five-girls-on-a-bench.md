---
id: "13232"
title: "Cinq garçons et cinq filles sur un banc"
grade: 8
theme: combinatorics
difficulty: 2
duration_min: 10
tags: [denombrement, permutations, principe-multiplicatif]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017, premier tour"
  reference: "2017-10_coupe_automne_2017_elim.pdf, exercices collégiens, exercice 5 ; réponse (28800) dans 2017-10_coupe_automne_2017_elim_college.pdf, pas de corrigé rédigé"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017_elim.pdf"
---

## Statement

$5$ garçons et $5$ filles veulent s'asseoir sur un banc de $10$ places. De combien de manières peuvent-ils le faire de sorte que deux garçons ne soient jamais côte à côte, et que deux filles ne soient jamais côte à côte ?

## Hints

1. Si l'on note seulement « G » ou « F » pour chaque place, à quoi ressemble une disposition qui convient ?
2. Il n'y a que deux suites possibles de G et de F. Pour l'une d'elles, de combien de façons peut-on placer les garçons sur leurs places ? Et les filles ?

## Solution

**Le schéma des places.** Regardons seulement qui est garçon (G) et qui est fille (F), de gauche à droite. Deux voisins ne sont jamais du même type, donc les types alternent. Il n'y a que deux possibilités :

$$\text{G F G F G F G F G F} \qquad \text{ou} \qquad \text{F G F G F G F G F G}.$$

Les deux comptent bien $5$ garçons et $5$ filles.

**Qui s'assoit où.** Une fois le schéma choisi, les $5$ garçons se répartissent sur leurs $5$ places : $5$ choix pour la première, $4$ pour la deuxième, et ainsi de suite, soit $5 \times 4 \times 3 \times 2 \times 1 = 120$ façons. De même, il y a $120$ façons de placer les filles, indépendamment des garçons.

**Conclusion.** Il y a $2 \times 120 \times 120 = 28\,800$ manières de s'asseoir.
