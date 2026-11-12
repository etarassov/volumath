---
id: "22043"
title: "Cinq 1 et quatre 0 sur un cercle"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Invariants, pavages, coloriages » (Maena), exercice 9 (sans corrigé dans la source ; l'énoncé ne dit pas clairement si l'on remplace une seule paire de voisins à chaque tour ou toutes à la fois, on traite la première lecture et l'autre est proposée dans « Going further »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

On écrit cinq chiffres $1$ et quatre chiffres $0$ autour d'un cercle, dans un ordre quelconque.

À chaque tour, on choisit deux chiffres voisins sur le cercle. S'ils sont égaux, on écrit un $0$ entre eux ; s'ils sont différents, on écrit un $1$ entre eux. Puis on efface les deux chiffres choisis. Il y a donc un chiffre de moins sur le cercle après chaque tour.

Peut-on arriver, après un certain nombre de tours, à un cercle où il n'y a que des $0$ ?

## Hints

1. Essayez sur quelques exemples. Qu'arrive-t-il au nombre de $1$ sur le cercle pendant un tour ?
2. Séparez les trois cas : on choisit deux $1$, deux $0$, ou un $1$ et un $0$.
3. Le nombre de $1$ ne garde pas la même valeur, mais il garde quelque chose.

## Solution

**Ce que fait un tour au nombre de $1$.** Regardons les trois cas possibles.

- On choisit deux $1$ : ils sont égaux, on les remplace par un $0$. Le nombre de $1$ diminue de $2$.
- On choisit deux $0$ : on les remplace par un $0$. Le nombre de $1$ ne change pas.
- On choisit un $1$ et un $0$ : ils sont différents, on les remplace par un $1$. On a perdu un $1$ et gagné un $1$ : le nombre de $1$ ne change pas.

**Ce qui ne change jamais.** Dans tous les cas, le nombre de $1$ change de $0$ ou de $2$. Sa parité ne change donc jamais : s'il est impair au départ, il reste impair après chaque tour.

Au départ, il y a cinq $1$ : c'est un nombre impair. Il y aura donc toujours un nombre impair de $1$ sur le cercle, en particulier au moins un.

**Conclusion.** On ne peut jamais arriver à un cercle où il n'y a que des $0$, puisque cela demanderait zéro chiffre $1$, un nombre pair.

## Going further

1. À la fin, il ne reste qu'un seul chiffre. Lequel ? Dépend-il de l'ordre de départ et des choix faits à chaque tour ?
2. On change la règle : à chaque tour, on écrit un chiffre entre **chaque** paire de voisins à la fois, un $0$ entre deux chiffres égaux et un $1$ entre deux chiffres différents, puis on efface tous les anciens chiffres. Il reste donc toujours neuf chiffres. Peut-on arriver à neuf $0$ ? (Que doit-il y avoir sur le cercle juste avant neuf $0$ ? Et juste avant encore ?)
