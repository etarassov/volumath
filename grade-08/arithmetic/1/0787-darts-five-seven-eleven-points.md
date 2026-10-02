---
id: "0787"
title: "Le jeu de fléchettes : 5, 7 ou 11 points"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 15
tags: [somme, decomposition, multiples, essais-organises]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Préparation Olympiades de Mathématiques de 4ème »"
  reference: "Péparation.OMCollege.v2.pdf, 7 mars 2024, exercice 15, questions 1 et 2a, d'après Olympiades académiques de Versailles, 2011"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Péparation.OMCollege.v2.pdf"
---

## Statement

On joue aux fléchettes sur une cible comportant trois zones : une à $5$ points, une à $7$ points et une à $11$ points. Toutes les fléchettes lancées atteignent la cible, et leur nombre n'est pas limité. Le score est la somme des points obtenus.

Par exemple $30$ est un score possible, puisque

$$30 = 11 + 7 + 7 + 5 \qquad \text{ou} \qquad 30 = 5 + 5 + 5 + 5 + 5 + 5$$

On dit que deux jeux sont **identiques** si chaque zone de la cible reçoit le même nombre de fléchettes dans l'un et dans l'autre. Ainsi les jeux $7 + 5 + 5 + 11$ et $5 + 7 + 11 + 5$ sont identiques.

1. Vérifier que $26$, $43$ et $220\,012$ sont des scores possibles.
2. Trouver quatre jeux différents donnant le score $40$.

## Hints

1. Pour $26$ : essaie d'abord avec des fléchettes à $7$ points seulement, puis complète.
2. Pour $43$ : la zone à $11$ points fait monter vite, sers-t'en plusieurs fois.
3. Pour $220\,012$ : inutile de chercher un joli jeu. Enlève une fléchette à $7$ points et regarde le nombre qui reste : est-il dans la table de $5$ ?
4. Pour la question 2, commence par le jeu le plus simple, celui qui n'utilise qu'une seule zone.
5. Pour trouver les autres jeux, fixe le nombre de fléchettes à $11$ points : $3$, puis $2$, puis $1$, puis $0$, et regarde à chaque fois ce qu'il reste à obtenir avec des $5$ et des $7$.

## Solution

**Question 1.**

- $26 = 7 + 7 + 7 + 5$ : trois fléchettes à $7$ points et une à $5$ points. (On peut aussi écrire $26 = 11 + 5 + 5 + 5$.)
- $43 = 11 + 11 + 11 + 5 + 5$ : trois fléchettes à $11$ points et deux à $5$ points. (On peut aussi écrire $43 = 7 + 7 + 7 + 11 + 11$.)
- $220\,012$ : enlevons une fléchette à $7$ points. Il reste

  $$220\,012 - 7 = 220\,005$$

  Ce nombre se termine par $5$, il est donc divisible par $5$ :

  $$220\,005 = 5 \times 44\,001$$

  Donc

  $$220\,012 = 5 \times 44\,001 + 7$$

  Le score $220\,012$ s'obtient avec $44\,001$ fléchettes à $5$ points et une fléchette à $7$ points. Il faudrait du temps, mais c'est bien un score possible.

**Question 2.**

Organisons la recherche selon le nombre de fléchettes à $11$ points.

| fléchettes à $11$ | ce qu'il reste à faire | avec des $5$ et des $7$ | jeu |
| --- | --- | --- | --- |
| $3$ | $40 - 33 = 7$ | $7$ | $11 + 11 + 11 + 7$ |
| $2$ | $40 - 22 = 18$ | impossible | — |
| $1$ | $40 - 11 = 29$ | $29 = 5 + 5 + 5 + 7 + 7$ | $11 + 7 + 7 + 5 + 5 + 5$ |
| $0$ | $40$ | $40 = 5 \times 8$ | $5 + 5 + 5 + 5 + 5 + 5 + 5 + 5$ |
| $0$ | $40$ | $40 = 5 + 7 \times 5$ | $5 + 7 + 7 + 7 + 7 + 7$ |

Voici donc quatre jeux différents de score $40$ :

$$40 = 5 \times 8$$
$$40 = 5 + 7 + 7 + 7 + 7 + 7$$
$$40 = 5 + 5 + 5 + 7 + 7 + 11$$
$$40 = 7 + 11 + 11 + 11$$

(Le tableau montre au passage qu'il n'y en a pas d'autres : pour $2$ fléchettes à $11$ points il resterait $18$ à faire, et $18$ n'est ni un multiple de $5$, ni $7$ de plus, ni $14$ de plus qu'un multiple de $5$.)

## Going further

Existe-t-il un cinquième jeu de score $40$ ? Reprendre le tableau ligne par ligne pour justifier que non.
