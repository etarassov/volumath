---
id: "5218"
title: "Cent une pièces et une seule pesée"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [parite, pesees, fausse-piece, strategie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Pigeonhole Principle and Parity Problems — Brian Conrey et Corinne Cristiani"
  reference: "ConreyCristianiPig_and_par.pdf, « Parity problems », problème 4"
  url: "https://mathcircles.org/activity/pigeonhole-principle-and-parity-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/ConreyCristianiPig_and_par.pdf"
---

## Statement

Sur une table, il y a $101$ pièces de monnaie, dont exactement $50$ sont fausses. Toutes les vraies pièces ont le même poids, toutes les fausses aussi, et une fausse pièce pèse exactement $1$ gramme de plus qu'une vraie. Rien d'autre ne les distingue.

Pierre dispose d'une balance à deux plateaux qui **affiche la différence de poids** entre le plateau de gauche et celui de droite, en grammes.

Il désigne une pièce et voudrait savoir si elle est fausse.

**Peut-il y arriver en une seule pesée ?**

## Hints

1. La pièce désignée ne doit évidemment pas être mise sur la balance : mettez-la de côté, et occupez-vous des $100$ autres.
2. Il reste $100$ pièces. Partagez-les en deux tas de $50$ pièces et posez un tas sur chaque plateau.
3. Comme les deux tas ont le même nombre de pièces, le poids des vraies pièces se compense. Que mesure alors exactement la balance ?
4. Si le tas de gauche contient $g$ fausses pièces et celui de droite $d$ fausses pièces, la balance affiche $g - d$. Combien vaut $g + d$, selon que la pièce mise de côté est vraie ou fausse ?
5. Deux entiers $g+d$ et $g-d$ ont toujours la même parité, puisqu'ils diffèrent de $2d$.

## Solution

**La pesée.**

Pierre met de côté la pièce qu'il a désignée, et partage les $100$ pièces restantes en deux tas de $50$ pièces, qu'il pose l'un à gauche, l'autre à droite.

**Ce que la balance affiche.**

Notons $v$ le poids d'une vraie pièce, en grammes ; une fausse pèse $v + 1$. Si le tas de gauche contient $g$ fausses pièces, son poids vaut

$$g(v+1) + (50 - g)v = 50v + g .$$

De même, le tas de droite, qui contient $d$ fausses pièces, pèse $50v + d$. La balance affiche donc

$$(50v + g) - (50v + d) = g - d .$$

Le poids inconnu $v$ a disparu : l'affichage donne directement la différence du nombre de fausses pièces entre les deux tas.

**L'argument de parité.**

Les $100$ pièces posées sur la balance contiennent toutes les fausses pièces sauf, éventuellement, celle qui a été mise de côté. Donc

- si la pièce désignée est **vraie**, les $100$ pièces pesées contiennent les $50$ fausses : $g + d = 50$, qui est pair ;
- si la pièce désignée est **fausse**, il reste $49$ fausses sur la balance : $g + d = 49$, qui est impair.

Or $(g + d) - (g - d) = 2d$ est pair : les nombres $g+d$ et $g-d$ ont toujours la même parité. L'affichage $g - d$ a donc la même parité que $g + d$.

**Conclusion.**

Pierre lit le nombre affiché :

- si ce nombre est **pair**, alors $g + d = 50$ et la pièce désignée est **vraie** ;
- si ce nombre est **impair**, alors $g + d = 49$ et la pièce désignée est **fausse**.

Une seule pesée suffit donc, et Pierre obtient toujours une réponse certaine.

## Going further

Remarquez que Pierre n'apprend rien sur les autres pièces : il ne sait pas lesquelles sont fausses, ni même combien il y en a dans chaque tas. Il n'a extrait de la pesée qu'un seul bit d'information, la parité, mais c'était exactement celui dont il avait besoin.

La méthode marcherait encore si une fausse pièce pesait $1$ gramme de **moins** qu'une vraie : l'affichage vaudrait alors $d - g$, dont la parité est la même.
