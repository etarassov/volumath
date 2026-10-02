---
id: "11817"
title: "Trois équations qui se cachent une somme de carrés"
grade: 9
theme: algebra
difficulty: 3
duration_min: 15
tags: [systeme, identites-remarquables, somme-de-carres, verification]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 3 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Trouver tous les nombres réels $x$, $y$ et $z$ tels que

$$x^2 - 4y + 7 = 0, \qquad y^2 - 6z + 14 = 0, \qquad z^2 - 2x - 7 = 0.$$

## Hints

1. Il n'est pas utile de résoudre une équation après l'autre. Essayer plutôt de combiner les trois équations.
2. Additionner les trois équations, puis regrouper les termes en $x$, les termes en $y$ et les termes en $z$.
3. Compléter les carrés : $x^2 - 2x = (x - 1)^2 - 1$. Une somme de carrés peut-elle être nulle sans que chaque carré soit nul ?

## Solution

**Analyse.** Soit $(x, y, z)$ une solution. En additionnant les trois équations, puis en regroupant les termes par inconnue :

$$0 = (x^2 - 2x) + (y^2 - 4y) + (z^2 - 6z) + 7 + 14 - 7 = (x^2 - 2x + 1) + (y^2 - 4y + 4) + (z^2 - 6z + 9),$$

car $7 + 14 - 7 = 14 = 1 + 4 + 9$. Avec les identités remarquables :

$$(x - 1)^2 + (y - 2)^2 + (z - 3)^2 = 0.$$

Chacun de ces trois carrés est positif ou nul. Si l'un d'eux était strictement positif, la somme serait strictement positive. Ils sont donc tous nuls : $x = 1$, $y = 2$ et $z = 3$.

**Vérification.** On a seulement montré qu'une solution, s'il y en a une, est forcément $(1, 2, 3)$. Il faut encore vérifier que ce triplet convient :

$$1^2 - 4 \times 2 + 7 = 0, \qquad 2^2 - 6 \times 3 + 14 = 0, \qquad 3^2 - 2 \times 1 - 7 = 0.$$

**Conclusion.** Le système a une seule solution : $x = 1$, $y = 2$ et $z = 3$.

## Going further

- Pourquoi la vérification est-elle indispensable ? Fabriquer un système de trois équations dont la somme donne encore $(x - 1)^2 + (y - 2)^2 + (z - 3)^2 = 0$, mais qui n'a **aucune** solution.
