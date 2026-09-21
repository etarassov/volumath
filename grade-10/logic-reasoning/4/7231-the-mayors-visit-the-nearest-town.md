---
id: "7231"
title: "Chaque maire visite la ville la plus proche"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [extremum, distances, comptage, absurde]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Avancés », mercredi 25 matin (Vincent Jugé), principe de l'extremum, exercice 10"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Un pays compte $2n+1$ villes, avec $n \geqslant 1$. Les distances entre ces villes sont toutes
différentes les unes des autres : il n'y a pas deux paires de villes à la même distance.

Chaque maire décide d'aller rendre visite au maire de la ville la plus proche de la sienne.

Montrer qu'au moins une ville ne recevra la visite d'aucun maire.

## Hints

1. Le nombre de villes est impair. Ce n'est sûrement pas un hasard.
2. Raisonne par l'absurde : suppose que chaque ville reçoive au moins une visite. Combien de
   visites y a-t-il en tout ?
3. Regarde les deux villes les plus proches l'une de l'autre dans tout le pays. Que font leurs
   deux maires ?
4. Si chaque ville reçoit exactement une visite, les villes se regroupent par deux. Est-ce
   possible avec un nombre impair de villes ?

## Solution

Pour chaque ville $X$, notons $f(X)$ la ville la plus proche de $X$, c'est-à-dire celle que le
maire de $X$ va visiter. Comme toutes les distances sont différentes, il n'y a pas d'hésitation :
$f(X)$ est bien définie.

**Le comptage.**

Chaque maire fait exactement une visite, donc il y a exactement $2n+1$ visites. Il y a aussi
$2n+1$ villes.

**Raisonnons par l'absurde.**

Supposons que chaque ville reçoive au moins une visite. Comme il y a autant de visites que de
villes, chaque ville reçoit alors **exactement** une visite.

**Étape clé : les villes se visitent deux à deux.**

Montrons que pour toute ville $A$, on a $f(f(A)) = A$.

Posons $B = f(A)$, puis $C = f(B)$. Comme $C$ est la ville la plus proche de $B$ et que $A$ est
une candidate, on a $BC \leqslant BA$.

Supposons $C \neq A$. Alors, les distances étant toutes différentes, $BC < BA$.

Posons maintenant $D = f(C)$. Comme $D$ est la ville la plus proche de $C$ et que $B$ est une
candidate, $CD \leqslant CB$. Et $D \neq B$ : sinon la ville $B$ recevrait deux visites, celle du
maire de $A$ et celle du maire de $C$, alors qu'elle n'en reçoit qu'une. Donc $CD < CB$.

En poursuivant de la même manière, on construit une suite de villes
$$A,\ B,\ C,\ D,\ \ldots$$
dont les distances successives sont **strictement décroissantes** :
$$AB > BC > CD > \cdots$$

Cette suite ne s'arrête jamais, alors qu'il n'y a qu'un nombre fini de distances possibles dans le
pays. C'est impossible.

Donc $C = A$ : la ville $A$ et la ville $B = f(A)$ se visitent mutuellement.

**La contradiction finale.**

Chaque ville $A$ est donc appariée avec $f(A)$, et ces deux villes se visitent l'une l'autre. Les
$2n+1$ villes se regroupent ainsi en paires, deux par deux, sans qu'aucune ville ne reste seule
(puisque $f(A)$ existe toujours et que $f(f(A)) = A$). Le nombre de villes serait donc pair.

Or $2n+1$ est impair.

**Contradiction : au moins une ville ne reçoit la visite d'aucun maire.**

## Going further

On peut en dire davantage : **aucune ville ne reçoit plus de cinq visites.**

En effet, supposons que les maires de $A$ et de $B$ visitent tous les deux la ville $P$. Comme $P$
est la ville la plus proche de $A$, on a $AP < AB$ ; comme $P$ est la plus proche de $B$, on a
$BP < AB$. Dans le triangle $APB$, le côté $[AB]$ est donc le plus grand, et l'angle opposé est le
plus grand angle du triangle : $\widehat{APB} > 60^\circ$.

Si $P$ recevait six visites, les six villes visiteuses formeraient autour de $P$ six angles
consécutifs valant chacun plus de $60^\circ$, soit plus de $360^\circ$ en tout. Impossible.
