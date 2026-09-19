---
id: "3425"
title: "Deux places de parking côte à côte"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 45
tags: [probabilite, denombrement, combinaisons, evenement contraire, rangements]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12 Training, Week 4: Combinatorics"
  reference: "Handout-3716-3316.pdf, section 3.2, problème 4, d'après AMC 12B 2008, problème 22 (réponse dans Handout-3718-3316.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3716-3316.pdf"
---

## Statement

Un parking comporte $16$ places alignées, numérotées de $1$ à $16$. Douze voitures arrivent l'une après l'autre ; chacune occupe une seule place, et son conducteur choisit au hasard une place parmi celles qui sont encore libres.

Arrive ensuite tante Emma, dont la camionnette a besoin de **deux places voisines**.

Quelle est la probabilité que tante Emma puisse se garer ?

## Hints

1. Une fois les douze voitures garées, ce qui compte n'est pas l'ordre d'arrivée, mais seulement l'ensemble des quatre places restées libres. Combien y a-t-il d'ensembles possibles, et sont-ils équiprobables ?
2. Tante Emma peut se garer exactement quand deux des quatre places libres sont voisines. Là encore, l'événement contraire est plus facile à compter.
3. Compte les configurations où **aucune** des quatre places libres n'est voisine d'une autre.
4. Pour cela, imagine les $12$ voitures alignées côte à côte. Où peux-tu glisser les quatre places libres pour qu'elles ne se touchent jamais ?
5. Douze voitures alignées créent $11$ intervalles entre voitures, plus $2$ extrémités, soit $13$ emplacements possibles, et il faut en choisir $4$ tous différents.

## Solution

**L'idée : seul l'ensemble des places libres compte, et il est plus facile de compter les mauvaises configurations que les bonnes.**

**Étape 1. Tout se ramène au choix de quatre places libres.**

Les conducteurs choisissent au hasard, l'un après l'autre. À la fin, $12$ places sont occupées et $4$ sont libres.

Par symétrie, chaque ensemble de $4$ places libres a la même probabilité d'apparaître. (On peut le voir ainsi : faire garer les $12$ voitures au hasard revient à tirer au hasard un rangement des $16$ places ; les $4$ dernières places de ce rangement restent libres, et tous les ensembles de $4$ places ont la même chance d'être ces quatre-là.)

Le nombre d'ensembles possibles est

$$\binom{16}{4} = \frac{16 \times 15 \times 14 \times 13}{4 \times 3 \times 2 \times 1} = 1820.$$

**Étape 2. Quand tante Emma ne peut-elle pas se garer ?**

Elle peut se garer si et seulement si deux des quatre places libres sont voisines. L'événement contraire est donc : **les quatre places libres sont deux à deux non voisines**.

**Étape 3. On compte ces mauvaises configurations.**

Rangeons d'abord les $12$ voitures les unes à côté des autres :

$$\square\ \square\ \square\ \square\ \square\ \square\ \square\ \square\ \square\ \square\ \square\ \square$$

Il faut maintenant intercaler les $4$ places libres. Deux places libres ne doivent jamais se toucher : il faut donc qu'il y ait au moins une voiture entre deux d'entre elles. Autrement dit, chaque place libre va dans un « trou » différent.

Les trous disponibles sont : les $11$ intervalles entre deux voitures consécutives, plus les $2$ bouts de la file, soit

$$11 + 2 = 13 \text{ trous.}$$

Choisir les quatre trous, tous différents, se fait de

$$\binom{13}{4} = \frac{13 \times 12 \times 11 \times 10}{4 \times 3 \times 2 \times 1} = 715 \text{ façons.}$$

Chacun de ces choix donne bien une configuration des $16$ places où les $4$ places libres sont deux à deux non voisines, et réciproquement chaque telle configuration s'obtient d'une seule façon. Il y a donc $715$ mauvaises configurations.

**Étape 4. On conclut.**

$$P(\text{tante Emma ne peut pas se garer}) = \frac{715}{1820} = \frac{11}{28},$$

car $715 = 5 \times 11 \times 13$ et $1820 = 4 \times 5 \times 7 \times 13$, donc le quotient vaut $\dfrac{11}{4 \times 7} = \dfrac{11}{28}$.

$$P(\text{tante Emma peut se garer}) = 1 - \frac{11}{28} = \frac{17}{28}.$$

**Conclusion : la probabilité que tante Emma puisse se garer vaut $\dfrac{17}{28} \approx 61\%$.**

## Going further

L'argument des « trous » est très général. Pour placer $k$ objets deux à deux non voisins parmi $n$ positions alignées, on aligne d'abord les $n-k$ autres positions, ce qui crée $n-k+1$ trous, puis on choisit $k$ trous différents :

$$\binom{n-k+1}{k} \text{ façons.}$$

Ici $n = 16$ et $k = 4$ donnent bien $\binom{13}{4} = 715$.

Vérifions la formule sur un petit cas : pour $n = 4$ et $k = 2$, elle annonce $\binom{3}{2} = 3$. On liste à la main les paires non voisines parmi $\{1,2,3,4\}$ : $\{1,3\}$, $\{1,4\}$, $\{2,4\}$. Il y en a bien $3$.
