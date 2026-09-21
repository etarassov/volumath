---
id: "8308"
title: "Le plus grand écart et la plus grande différence"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalites, maximum, minimum, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 12 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On se donne deux listes de $n$ nombres réels,

$$x_1, x_2, \ldots, x_n \qquad \text{et} \qquad y_1, y_2, \ldots, y_n ,$$

et on suppose que **le plus petit des $x$ est au moins égal au plus grand des $y$** :

$$\min_{1 \leqslant i \leqslant n} x_i \;\geqslant\; \max_{1 \leqslant i \leqslant n} y_i .$$

On pose alors

$$P = \max_{1 \leqslant i \leqslant n} \, (x_i - y_i) \qquad \text{et} \qquad G = \max_{1 \leqslant i \leqslant n} x_i \;-\; \min_{1 \leqslant i \leqslant n} y_i .$$

Autrement dit, $P$ est la plus grande des différences prises **à rang égal**, et $G$ est la
différence entre le plus grand $x$ et le plus petit $y$, sans se soucier des rangs.

Démontrer que

$$P \leqslant G \leqslant 2P .$$

*Rappel : pour des réels $a_1, \ldots, a_n$, le nombre $\min a_i$ est le plus petit d'entre eux et
$\max a_i$ le plus grand.*

## Hints

1. Il y a deux inégalités à prouver. Traite-les l'une après l'autre : rien ne dit qu'elles se démontrent de la même façon.
2. Pour $P \leqslant G$, choisis un indice $j$ qui **réalise** le maximum, c'est-à-dire tel que $P = x_j - y_j$. Compare ensuite $x_j$ au plus grand des $x$, et $y_j$ au plus petit des $y$.
3. Pour $G \leqslant 2P$, choisis cette fois deux indices : $j$ tel que $x_j$ soit le plus grand des $x$, et $k$ tel que $y_k$ soit le plus petit des $y$. En général $j \neq k$, et c'est tout le problème.
4. Écris $G = x_j - y_k$ et insère le terme $y_j$ : $G = (x_j - y_j) + (y_j - y_k)$. Le premier morceau est au plus $P$. Il reste à majorer $y_j - y_k$.
5. C'est ici que sert l'hypothèse. Elle dit que **tout** $y$ est inférieur ou égal à **tout** $x$. En particulier $y_j \leqslant x_k$.

## Solution

**Première inégalité : $P \leqslant G$.**

Choisissons un indice $j$ qui réalise le maximum définissant $P$, c'est-à-dire tel que

$$P = x_j - y_j .$$

Par définition du maximum et du minimum,

$$x_j \leqslant \max_{1 \leqslant i \leqslant n} x_i \qquad \text{et} \qquad y_j \geqslant \min_{1 \leqslant i \leqslant n} y_i .$$

La seconde inégalité donne $-y_j \leqslant -\min y_i$. En additionnant les deux :

$$P = x_j - y_j \;\leqslant\; \max_{1 \leqslant i \leqslant n} x_i - \min_{1 \leqslant i \leqslant n} y_i \;=\; G .$$

**Ce que dit vraiment l'hypothèse.**

L'hypothèse $\min x_i \geqslant \max y_i$ signifie que tout nombre de la seconde liste est
inférieur ou égal à tout nombre de la première : pour tous indices $a$ et $b$,

$$y_a \;\leqslant\; \max_{i} y_i \;\leqslant\; \min_{i} x_i \;\leqslant\; x_b .$$

Les deux listes sont donc « séparées » : la liste des $y$ est entièrement à gauche de celle des $x$.

**Seconde inégalité : $G \leqslant 2P$.**

Choisissons un indice $j$ tel que $x_j = \max_i x_i$, et un indice $k$ tel que
$y_k = \min_i y_i$. Alors

$$G = x_j - y_k .$$

Faisons apparaître les différences à rang égal en insérant $y_j$ :

$$G = (x_j - y_j) + (y_j - y_k) .$$

Le premier morceau est l'une des différences à rang égal, donc

$$x_j - y_j \leqslant P .$$

Pour le second, on utilise la remarque ci-dessus avec $a = j$ et $b = k$ : $y_j \leqslant x_k$. Donc

$$y_j - y_k \;\leqslant\; x_k - y_k \;\leqslant\; P ,$$

la dernière inégalité parce que $x_k - y_k$ est, elle aussi, une différence à rang égal.

En additionnant les deux majorations :

$$G \;\leqslant\; P + P \;=\; 2P .$$

**Conclusion.** On a bien $P \leqslant G \leqslant 2P$.

## Going further

Deux erreurs classiques à éviter sur ce genre d'énoncé.

La première est d'écrire $\max (x_i - y_i) = \max x_i - \max y_i$, ou encore
$\max (x_i - y_i) = \max x_i - \min y_i$. Ces égalités sont fausses en général : avec
$x = (1, 2)$ et $y = (0, -5)$, on a $\max(x_i - y_i) = \max(1, 7) = 7$ alors que
$\max x_i - \max y_i = 2 - 0 = 2$.

La seconde est de « supposer les listes rangées dans l'ordre croissant ». On n'a pas le droit :
réordonner les listes change les couples $(x_i, y_i)$, donc change la valeur de $P$. Seul $G$
serait inchangé.

Les deux inégalités sont d'ailleurs les meilleures possibles. Avec $x = (1, 1)$ et $y = (0, 0)$,
on a $P = G = 1$. Avec $x = (2, 1)$ et $y = (1, 0)$, on a $P = 1$ et $G = 2 - 0 = 2 = 2P$.
