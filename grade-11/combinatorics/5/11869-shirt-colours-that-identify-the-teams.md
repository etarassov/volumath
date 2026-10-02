---
id: "11869"
title: "Des couleurs de maillot qui identifient les équipes"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [algorithme glouton, extremalite, partie entiere, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 16 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf. L'énoncé original dit « une autre équipe » sans préciser ; le corrigé montre qu'il s'agit d'une autre équipe de l'ensemble S, ce que l'énoncé ci-dessous dit explicitement."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $t \geqslant 1$ un entier. Avant un championnat, chaque équipe propose une liste d'au plus $t$ couleurs différentes pour son maillot. On note $n$ le nombre total de couleurs différentes qui apparaissent dans au moins une liste.

Un ensemble $S$ d'équipes est dit *identifiable* si l'on peut attribuer à chaque équipe de $S$ une couleur de sa propre liste qui n'apparaît dans la liste d'aucune autre équipe de $S$.

Déterminer, en fonction de $n$ et $t$, le plus grand entier $g(n, t)$ tel que, quelles que soient les listes proposées, on puisse toujours trouver un ensemble identifiable d'au moins $g(n, t)$ équipes.

## Hints

1. Si chaque équipe propose exactement $t$ couleurs et que deux équipes n'ont jamais de couleur en commun, combien y a-t-il d'équipes ? Cela donne une borne supérieure pour $g(n, t)$.
2. Pour l'autre sens, construire $S$ pas à pas. Quand on ajoute une équipe $E$ avec une couleur $C$, quelles équipes et quelles couleurs faut-il s'interdire pour la suite ?
3. Pour chaque couleur, compter les équipes encore disponibles qui la proposent. Choisir à chaque pas la couleur $C$ la moins demandée.
4. Montrer qu'avec ce choix, chaque pas ne fait disparaître que les couleurs de la liste de $E$, donc au plus $t$ couleurs.

## Solution

On va montrer que $g(n, t) = \left\lceil \dfrac{n}{t} \right\rceil$, où $\lceil x \rceil$ désigne le plus petit entier supérieur ou égal à $x$.

**Partie 1 : on ne peut pas garantir plus.** Écrivons la division euclidienne $n = kt + r$ avec $0 \leqslant r < t$. Considérons $k$ équipes qui proposent chacune $t$ couleurs, toutes différentes d'une équipe à l'autre, et, si $r > 0$, une équipe de plus qui propose les $r$ couleurs restantes. Il y a bien $n$ couleurs en tout, et le nombre d'équipes est $k$ si $r = 0$, et $k + 1$ si $r > 0$, c'est-à-dire $\left\lceil \frac{n}{t} \right\rceil$ dans les deux cas. Un ensemble identifiable ne peut pas contenir plus d'équipes qu'il n'y en a, donc $g(n, t) \leqslant \left\lceil \frac{n}{t} \right\rceil$.

**Partie 2 : on peut toujours atteindre $\left\lceil \frac{n}{t} \right\rceil$.** On construit $S$ pas à pas. À chaque instant, certaines équipes et certaines couleurs sont encore *disponibles* ; au départ, toutes le sont. Pour une couleur disponible, on appelle *demande* de cette couleur le nombre d'équipes disponibles qui la proposent.

*Un pas.* Tant qu'il reste au moins une couleur disponible :

1. on choisit une couleur disponible $C$ dont la demande $d$ est la plus petite possible ;
2. on choisit une équipe disponible $E$ qui propose $C$, on la met dans $S$ et on lui attribue la couleur $C$ ;
3. on rend indisponibles toutes les équipes qui proposent $C$ (y compris $E$), et toutes les couleurs de la liste de $E$ (y compris $C$).

*Ce que l'on montre.* Au départ, chaque couleur a une demande au moins égale à $1$, puisqu'elle apparaît dans une liste. Montrons que cela reste vrai après chaque pas : **toute couleur encore disponible a une demande au moins égale à $1$.**

Supposons qu'après un pas, une couleur $a$ encore disponible ait une demande nulle. Avant ce pas, $a$ avait une demande $d' \geqslant 1$. Toutes les équipes qui la proposaient ont été rendues indisponibles, donc elles proposaient toutes $C$. De plus, $a$ est encore disponible, donc $a$ n'est pas dans la liste de $E$ : l'équipe $E$ propose $C$ mais pas $a$. Avant le pas, la couleur $C$ était donc proposée par les $d'$ équipes qui proposaient $a$, et en plus par $E$ :
$$d \geqslant d' + 1 > d'.$$
Cela contredit le choix de $C$ comme couleur de plus petite demande. Donc la propriété est conservée.

En particulier, à l'étape 1 il existe toujours une couleur de demande au moins $1$, donc l'étape 2 est possible. Et à chaque pas, les seules couleurs qui deviennent indisponibles sont celles de la liste de $E$, qui sont au plus $t$.

*Le nombre de pas.* Chaque pas rend indisponibles au moins une couleur ($C$) et au plus $t$ couleurs, et l'on s'arrête quand les $n$ couleurs sont indisponibles. S'il y a $p$ pas, on a donc $pt \geqslant n$, c'est-à-dire $p \geqslant \frac{n}{t}$, et comme $p$ est entier, $p \geqslant \left\lceil \frac{n}{t} \right\rceil$. L'ensemble $S$ contient $p$ équipes.

*L'ensemble $S$ est identifiable.* Soient $E$ et $E'$ deux équipes de $S$, mises dans $S$ dans cet ordre, avec les couleurs $C$ et $C'$.

- L'équipe $E'$ était encore disponible après le pas de $E$, donc elle ne propose pas $C$.
- La couleur $C'$ était encore disponible après le pas de $E$, donc elle n'est pas dans la liste de $E$.

Ainsi la couleur de chaque équipe de $S$ n'apparaît dans la liste d'aucune autre équipe de $S$.

**Conclusion.** **On a $g(n, t) = \left\lceil \dfrac{n}{t} \right\rceil$.**

## Going further

Le choix de la couleur la moins demandée est essentiel. Si l'on choisit une couleur au hasard, on peut rendre indisponibles d'un coup beaucoup de couleurs qui ne sont pas dans la liste de $E$, parce que toutes les équipes qui les proposaient proposaient aussi $C$.
