---
id: "5512"
title: "Choisir 48 cartes sur 52"
grade: 10
theme: combinatorics
difficulty: 1
duration_min: 10
tags: [denombrement, bijection, complementaire, combinaisons]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 5 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

Dans un jeu de $52$ cartes, il y a exactement $270\,725$ façons de choisir $4$ cartes, l'ordre n'ayant pas d'importance.

Combien y a-t-il de façons de choisir $48$ cartes ?

## Hints

1. Ne cherche surtout pas à calculer quoi que ce soit.
2. Quand tu as choisi $48$ cartes, que fais-tu du reste du paquet ? Combien de cartes restent sur la table ?
3. À chaque choix de $48$ cartes correspond un choix de $4$ cartes, et un seul. Est-ce que deux choix différents de $48$ cartes peuvent laisser les mêmes $4$ cartes sur la table ?

## Solution

La réponse est $270\,725$, le même nombre.

**Pourquoi.** Choisir $48$ cartes à prendre, c'est exactement la même chose que choisir les $4$ cartes à laisser. À chaque paquet de $48$ cartes correspond le paquet des $4$ cartes restantes, et réciproquement : si l'on se donne $4$ cartes, il n'y a qu'une seule façon de compléter, c'est de prendre toutes les autres.

Les deux façons de compter comptent donc les mêmes objets, vus de deux côtés différents. Il y a donc autant de façons de choisir $48$ cartes que d'en choisir $4$, c'est-à-dire
$$270\,725 .$$

**Ce qu'il faut retenir.** Compter ce qu'on laisse est souvent beaucoup plus facile que compter ce qu'on prend. Une correspondance parfaite entre deux collections d'objets (à chaque objet de l'une correspond un objet de l'autre, et un seul) suffit à affirmer qu'elles ont le même nombre d'éléments, sans jamais les compter.

## Going further

1. Combien y a-t-il de façons de choisir $51$ cartes sur $52$ ? Et $52$ ? Et $0$ ?
2. Combien y a-t-il de façons de choisir $50$ cartes sur $52$ ? Ici, tu peux calculer.
3. En notant $C(n\,;\,k)$ le nombre de façons de choisir $k$ objets parmi $n$, quelle égalité générale vient-on de démontrer ?
