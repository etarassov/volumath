---
id: "13609"
title: "Quatre équipes bien rangées dans un tournoi"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [tournoi, tiroirs, double comptage, contre-exemple, graphe]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2010 (test de sélection du stage olympique de Grésillon, 3 juin 2010)"
  reference: "2017-09_coupe_printemps_2010_3.pdf, épreuve collège, exercice 4 (aussi dans les épreuves de seconde et de première, 2017-09_coupe_printemps_2010_2.pdf et 2017-09_coupe_printemps_2010_1.pdf) ; corrigé 2017-09_coupe_printemps_2010_corrige.pdf, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2010_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2010_3.pdf"
---

## Statement

Huit équipes participent à un tournoi. Chaque équipe joue une fois et une seule contre chacune des autres équipes, et il n'y a jamais de match nul.

a) Démontrer qu'il existe forcément quatre équipes $A$, $B$, $C$, $D$ telles que :

- $A$ a gagné contre $B$, $C$ et $D$ ;
- $B$ a gagné contre $C$ et $D$ ;
- $C$ a gagné contre $D$.

b) Peut-on affirmer la même chose s'il n'y a que sept équipes dans le tournoi ?

## Hints

1. Combien de matchs sont joués entre $8$ équipes ? Combien y a-t-il de victoires en tout ?
2. Si aucune équipe n'avait gagné plus de $3$ matchs, combien de victoires y aurait-il au plus ? Déduis-en une équipe $A$ qui a battu au moins $4$ équipes.
3. Regarde maintenant seulement $4$ équipes battues par $A$, et les matchs qu'elles ont joués entre elles. Refais le même raisonnement.
4. Pour b), avec $7$ équipes, l'argument du début ne marche plus si chaque équipe gagne exactement $3$ matchs. Il faut alors que, pour chaque équipe, les trois équipes qu'elle a battues se soient battues « en rond ». Essaie de numéroter les équipes de $1$ à $7$ autour d'un cercle et de faire gagner chaque équipe contre celles qui sont $1$, $2$ et $4$ places plus loin.

## Solution

**a)** Avec $8$ équipes, chaque équipe joue $7$ matchs. Le nombre de matchs est $\frac{8 \times 7}{2} = 28$, car en comptant $7$ matchs pour chacune des $8$ équipes, on compte chaque match deux fois. Chaque match donne exactement une victoire : il y a $28$ victoires en tout.

*Une équipe qui a gagné au moins $4$ matchs.* Si chaque équipe avait gagné au plus $3$ matchs, il y aurait au plus $8 \times 3 = 24$ victoires, moins que $28$. C'est impossible. Donc une équipe, que l'on appelle $A$, a gagné au moins $4$ matchs. On choisit $4$ équipes battues par $A$.

*Parmi ces quatre, une qui en a battu deux.* Ces $4$ équipes ont joué $\frac{4 \times 3}{2} = 6$ matchs entre elles, donc il y a $6$ victoires dans ces matchs. Si chacune n'avait gagné qu'au plus $1$ de ces matchs, il n'y aurait que $4$ victoires au plus, moins que $6$. Donc l'une d'elles, que l'on appelle $B$, a battu au moins deux des trois autres. Appelons $X$ et $Y$ deux équipes battues par $B$.

*Les deux dernières.* $X$ et $Y$ ont joué l'une contre l'autre. On appelle $C$ le vainqueur de ce match et $D$ le perdant.

Vérifions : $A$ a battu $B$, $C$ et $D$ (ce sont trois des quatre équipes choisies parmi celles que $A$ a battues), $B$ a battu $C$ et $D$ (ce sont $X$ et $Y$), et $C$ a battu $D$. Les quatre équipes cherchées existent toujours.

**b)** La réponse est **non**. Il suffit de donner un tournoi à $7$ équipes où l'on ne peut pas trouver de telles équipes.

On numérote les équipes de $1$ à $7$ et on les place autour d'un cercle, dans l'ordre. Chaque équipe bat les équipes situées $1$, $2$ et $4$ places plus loin dans le sens des numéros croissants, en revenant à $1$ après $7$. Cela donne le tableau suivant.

| Équipe | a battu |
|---|---|
| $1$ | $2$, $3$, $5$ |
| $2$ | $3$, $4$, $6$ |
| $3$ | $4$, $5$, $7$ |
| $4$ | $5$, $6$, $1$ |
| $5$ | $6$, $7$, $2$ |
| $6$ | $7$, $1$, $3$ |
| $7$ | $1$, $2$, $4$ |

*C'est bien un tournoi.* Prenons deux équipes. Si l'on va de la première à la seconde, on avance de $d$ places, et de la seconde à la première on avance de $7 - d$ places, avec $d$ entre $1$ et $6$. Les paires $(d, 7-d)$ possibles sont $(1, 6)$, $(2, 5)$, $(3, 4)$ et les mêmes dans l'autre sens. Dans chaque paire, exactement un des deux nombres est $1$, $2$ ou $4$. Donc pour chaque match, il y a exactement un vainqueur.

*Il n'y a pas quatre équipes comme en a).* Supposons qu'il y en ait : $A$, $B$, $C$, $D$. L'équipe $A$ a battu $B$, $C$ et $D$. Or chaque équipe a gagné exactement $3$ matchs, donc $B$, $C$, $D$ sont **toutes** les équipes battues par $A$. De plus $B$ a battu les deux autres.

Regardons, pour chaque équipe, les trois équipes qu'elle a battues. Pour l'équipe $1$, ce sont $2$, $3$ et $5$. Or $2$ bat $3$, $3$ bat $5$ et $5$ bat $2$ : chacune des trois en bat exactement une des deux autres. Elles se sont battues « en rond ».

Pour les autres équipes, c'est la même chose, car la règle ne dépend que des écarts entre les numéros : en ajoutant $1$ à tous les numéros (et $7$ devient $1$), on retrouve le même tournoi. Ainsi pour l'équipe $2$, les battues sont $3$, $4$, $6$ et l'on a $3$ bat $4$, $4$ bat $6$, $6$ bat $3$. On peut le vérifier dans le tableau pour les sept équipes.

Donc aucune des trois équipes battues par $A$ n'a battu les deux autres, et l'équipe $B$ ne peut pas exister. Dans ce tournoi, il n'y a pas quatre équipes $A$, $B$, $C$, $D$ comme en a).

**Conclusion.** Avec $8$ équipes, on trouve toujours quatre équipes « bien rangées ». Avec $7$ équipes, ce n'est pas toujours le cas.

## Going further

Dans un tournoi à $4$ équipes, montre qu'il y a toujours trois équipes $A$, $B$, $C$ telles que $A$ bat $B$ et $C$, et $B$ bat $C$. Est-ce encore vrai avec seulement $3$ équipes ?
