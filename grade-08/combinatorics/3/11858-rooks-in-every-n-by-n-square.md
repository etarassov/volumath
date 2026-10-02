---
id: "11858"
title: "2n − 1 tours et un carré n × n"
grade: 8
theme: combinatorics
difficulty: 3
duration_min: 15
tags: [echiquier, tours, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Juniors, exercice 2 (repris tel quel en exercice 11 des Seniors) ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. On place $2n - 1$ tours sur un échiquier de $(2n-1) \times (2n-1)$ cases, de sorte que deux tours ne soient jamais sur la même ligne ni sur la même colonne.

Montrer que tout carré de $n \times n$ cases de l'échiquier contient au moins une tour.

## Hints

1. Combien y a-t-il de tours sur chaque ligne ? Sur chaque colonne ?
2. Supposer qu'un carré $n \times n$ ne contient aucune tour. Regarder les $n$ lignes qu'il occupe : où sont les tours de ces lignes ?
3. Combien reste-t-il de colonnes en dehors du carré ?

## Solution

**Une tour par ligne.** L'échiquier a $2n - 1$ lignes, et deux tours ne sont jamais sur la même ligne. Les $2n - 1$ tours sont donc sur $2n - 1$ lignes différentes : chaque ligne contient exactement une tour. Pour la même raison, chaque colonne contient exactement une tour.

**Raisonnons par l'absurde.** Supposons qu'un carré de $n \times n$ cases ne contienne aucune tour. Ce carré occupe $n$ lignes et $n$ colonnes de l'échiquier.

Chacune de ces $n$ lignes contient une tour, ce qui fait $n$ tours. Aucune n'est dans le carré, donc chacune de ces $n$ tours est dans une colonne qui ne traverse pas le carré.

Or il n'y a que $(2n - 1) - n = n - 1$ colonnes qui ne traversent pas le carré. On a donc $n$ tours réparties dans $n - 1$ colonnes. Par le principe des tiroirs, deux de ces tours sont dans la même colonne, ce qui est interdit.

**Conclusion.** C'est absurde, donc **tout carré de $n \times n$ cases contient au moins une tour.**

## Going further

- Le nombre $2n-1$ est le plus grand possible : sur un échiquier de $2n \times 2n$ avec $2n$ tours bien placées, on peut laisser un carré $n \times n$ vide. Il suffit de mettre les tours sur la diagonale, le carré $n \times n$ du coin en haut à droite est alors vide.
- Le même raisonnement montre qu'un rectangle de $p$ lignes et $q$ colonnes contient toujours une tour dès que $p + q > 2n - 1$.
