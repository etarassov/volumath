---
id: "5413"
title: "Le livre de Bella"
grade: 8
theme: algebra
difficulty: 3
duration_min: 25
tags: [fractions, equation, remonter-le-temps, proportion]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Locked Out: A Breakout Box Session for Your Circle, Kimberly Adams et Donna Farrior (Tulsa Math Teachers Circle)"
  reference: "TMTC-BreakoutBoxes.pdf, « The Final Set », problème 2"
  url: "https://mathcircles.org/activity/locked-out/"
  original_language: "en"
  local_copy: "sources/originals/namc/TMTC-BreakoutBoxes.pdf"
---

## Statement

Bella dévore les livres. Elle vient d'acheter le roman *Les mathématiques sont belles*.

- Le premier jour, elle lit le cinquième du livre, et $12$ pages de plus.
- Le deuxième jour, elle lit le quart de ce qui reste, et $15$ pages de plus.
- Le troisième jour, elle lit le tiers de ce qui reste, et $18$ pages de plus.

Elle s'aperçoit alors qu'il ne lui reste que $62$ pages, qu'elle lit le lendemain.

Combien de pages compte ce livre ?

## Hints

1. Attention au piège : le quart du deuxième jour n'est pas le quart du livre, mais le quart de ce qu'il en restait.
2. Plutôt que de partir du début, partez de la fin : avant le quatrième jour, il restait $62$ pages.
3. Le troisième jour, Bella a lu un tiers du reste, plus $18$ pages. Que représentent les $62$ pages par rapport à ce reste ?
4. Si on appelle $R$ le nombre de pages qui restaient avant le troisième jour, écrivez une équation avec $R$ et $62$.
5. Recommencez ensuite pour le deuxième jour, puis pour le premier.

## Solution

Le plus simple est de **remonter le temps**, du dernier jour vers le premier.

### Avant le troisième jour

Notons $R$ le nombre de pages restant à lire au début du troisième jour. Ce jour-là, Bella lit $\dfrac{R}{3} + 18$ pages, et il reste ensuite $62$ pages :

$$R - \left( \frac{R}{3} + 18 \right) = 62 .$$

Or $R - \dfrac{R}{3} = \dfrac{2R}{3}$, donc

$$\frac{2R}{3} - 18 = 62, \qquad \frac{2R}{3} = 80, \qquad R = 120 .$$

### Avant le deuxième jour

Notons $S$ le nombre de pages restant au début du deuxième jour. Bella lit $\dfrac{S}{4} + 15$ pages, et il reste $R = 120$ pages :

$$S - \left( \frac{S}{4} + 15 \right) = 120, \qquad \frac{3S}{4} - 15 = 120, \qquad \frac{3S}{4} = 135, \qquad S = 180 .$$

### Le livre entier

Notons $N$ le nombre de pages du livre. Le premier jour, Bella lit $\dfrac{N}{5} + 12$ pages, et il reste $S = 180$ pages :

$$N - \left( \frac{N}{5} + 12 \right) = 180, \qquad \frac{4N}{5} - 12 = 180, \qquad \frac{4N}{5} = 192, \qquad N = 240 .$$

### Vérification, dans le bon sens cette fois

- Jour 1 : $\dfrac{240}{5} + 12 = 48 + 12 = 60$ pages lues, il reste $180$ pages.
- Jour 2 : $\dfrac{180}{4} + 15 = 45 + 15 = 60$ pages lues, il reste $120$ pages.
- Jour 3 : $\dfrac{120}{3} + 18 = 40 + 18 = 58$ pages lues, il reste $62$ pages.
- Jour 4 : les $62$ dernières pages.

Total : $60 + 60 + 58 + 62 = 240$ pages.

**Conclusion.** Le livre compte $240$ pages.

## Going further

1. Résolvez le problème dans l'autre sens, en appelant $N$ le nombre de pages dès le départ et en écrivant une seule équation. Comparez les deux méthodes.
2. Bella a lu $60$, $60$, $58$ puis $62$ pages : quatre jours presque identiques. Est-ce un hasard ? Modifiez les nombres $12$, $15$, $18$ de l'énoncé et regardez ce que cela donne.
