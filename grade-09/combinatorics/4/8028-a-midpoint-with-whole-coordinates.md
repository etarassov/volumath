---
id: "8028"
title: "Un milieu à coordonnées entières"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [tiroirs, parite, coordonnees, milieu, contre-exemple]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, test de mi-parcours du dimanche 20 août, groupe A, exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer le plus petit entier $n$ ayant la propriété suivante :

> quelle que soit la façon de placer $n$ points à coordonnées entières dans le plan, deux
> d'entre eux ont un milieu qui est lui aussi à coordonnées entières.

*Rappel : le milieu du segment reliant $(x_1 ; y_1)$ et $(x_2 ; y_2)$ a pour coordonnées*

$$x_m = \frac{x_1 + x_2}{2} \qquad \text{et} \qquad y_m = \frac{y_1 + y_2}{2}.$$

## Hints

1. À quelle condition sur $x_1$ et $x_2$ le nombre $\dfrac{x_1 + x_2}{2}$ est-il un entier ?
2. Un point à coordonnées entières, ce sont deux entiers. Chacun est pair ou impair : combien
   de sortes de points cela fait-il ?
3. Ces sortes de points sont des tiroirs. Combien faut-il de points pour être sûr que deux
   tombent dans le même tiroir ?
4. Pour montrer que ce nombre est le plus petit, il faut aussi exhiber une configuration à
   un point de moins qui ne marche pas.

## Solution

**Quand le milieu est-il à coordonnées entières ?** Le nombre $\dfrac{x_1 + x_2}{2}$ est un
entier si et seulement si $x_1 + x_2$ est pair, c'est-à-dire si et seulement si $x_1$ et $x_2$
ont la même parité. Il faut donc, et il suffit, que

$$x_1 \text{ et } x_2 \text{ aient la même parité} \quad \textbf{et} \quad y_1 \text{ et } y_2 \text{ aient la même parité.}$$

**Les quatre tiroirs.** Classons les points selon la parité de leurs deux coordonnées. Il y a
quatre possibilités :

$$(\text{pair}, \text{pair}), \quad (\text{pair}, \text{impair}), \quad (\text{impair}, \text{pair}), \quad (\text{impair}, \text{impair}).$$

Deux points d'une même catégorie ont leurs deux coordonnées de même parité, donc leur milieu
est à coordonnées entières. Et deux points de catégories différentes ne conviennent pas, car
l'une au moins des deux coordonnées diffère de parité.

Le problème devient donc : combien faut-il de points pour être certain que deux d'entre eux
tombent dans la même catégorie ?

**$n = 5$ suffit.** Avec $5$ points répartis dans $4$ catégories, le principe des tiroirs
garantit que deux points au moins sont dans la même catégorie. Leur milieu est alors à
coordonnées entières.

**$n = 4$ ne suffit pas.** Prenons les quatre points

$$(0 ; 0), \quad (1 ; 0), \quad (0 ; 1), \quad (1 ; 1).$$

Ils occupent chacun une catégorie différente, donc aucune paire n'a un milieu à coordonnées
entières. Vérifions sur les six paires : les milieux sont

$$\left(\tfrac{1}{2} ; 0\right), \quad \left(0 ; \tfrac{1}{2}\right), \quad \left(\tfrac{1}{2} ; \tfrac{1}{2}\right), \quad \left(\tfrac{1}{2} ; \tfrac{1}{2}\right), \quad \left(1 ; \tfrac{1}{2}\right), \quad \left(\tfrac{1}{2} ; 1\right),$$

et aucun n'est à coordonnées entières.

Avec moins de quatre points, on peut évidemment reprendre une partie de cet exemple : la
propriété est donc fausse pour tout $n \leqslant 4$.

**Le plus petit entier cherché est $n = 5$.**

## Going further

Dans l'espace à trois dimensions, un point à coordonnées entières a trois coordonnées, donc
$2^3 = 8$ catégories de parité, et la réponse devient $9$. En dimension $d$, elle vaut
$2^d + 1$.
