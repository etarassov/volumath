---
id: "13268"
title: "Des tas de trois billes"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [jeu, invariant, tas, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices lycéens, exercice 14 ; corrigé 2019-10_Corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Paul joue avec $N$ billes, qui forment au départ un seul tas, et un sac. À chaque tour, Paul choisit un tas d'au moins $4$ billes, en retire une bille qu'il met dans son sac, et sépare les billes qui restent dans ce tas en deux tas non vides. Le jeu s'arrête quand plus aucun tour n'est possible.

Paul gagne si, à un moment, tous les tas contiennent exactement $3$ billes.

1. Montrer que si $N = 2019$, Paul peut gagner.
2. Montrer que si $N = 2020$, Paul ne peut pas gagner.

## Hints

1. Essaie avec de petites valeurs de $N$ : $3$, $7$, $11$... et $4$, $5$, $6$.
2. Après $k$ tours, combien y a-t-il de billes dans le sac ? Combien de tas ?
3. Si tous les tas contiennent $3$ billes après $k$ tours, écris une égalité entre $N$ et $k$.

## Solution

**Ce qui se passe à chaque tour.** Un tour met une bille dans le sac, et remplace un tas par deux tas : le nombre de tas augmente de $1$. Au départ, il y a $1$ tas et le sac est vide. Donc, après $k$ tours, le sac contient $k$ billes, il reste $N - k$ billes sur la table, et elles forment $k + 1$ tas.

**Question 2.** Supposons que Paul gagne après $k$ tours. Les $k + 1$ tas contiennent alors chacun $3$ billes, donc

$$N - k = 3(k + 1), \qquad \text{c'est-à-dire} \qquad N = 4k + 3.$$

Le nombre $N$ doit donc laisser un reste de $3$ dans la division par $4$. Or $2020 = 4 \times 505$ est un multiple de $4$. Paul ne peut donc pas gagner avec $2020$ billes.

**Question 1.** On a $2019 = 4 \times 504 + 3$. Paul joue toujours dans le plus gros tas : il en retire une bille et sépare le reste en un tas de $3$ billes et un autre tas.

- Au premier tour, le tas de $2019$ billes devient un tas de $3$ et un tas de $2019 - 1 - 3 = 2015$.
- Au deuxième tour, le tas de $2015$ devient un tas de $3$ et un tas de $2011$.
- Et ainsi de suite : chaque tour diminue le gros tas de $4$ billes et ajoute un tas de $3$.

Après $k$ tours, il y a un gros tas de $2019 - 4k$ billes et $k$ tas de $3$ billes. Tant que $k < 504$, le gros tas contient au moins $2019 - 4 \times 503 = 7$ billes, donc le tour suivant est possible. Après $504$ tours, le gros tas contient $2019 - 4 \times 504 = 3$ billes : tous les tas en ont $3$, et Paul a gagné.

**Conclusion.** Avec $2019$ billes, Paul gagne en détachant à chaque fois un tas de $3$ ; avec $2020$ billes, c'est impossible, car il faudrait que $N - 3$ soit un multiple de $4$.
