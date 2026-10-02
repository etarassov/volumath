---
id: "11419"
title: "Des flèches qui atteignent n'importe quels k points"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [graphe, recurrence, double-comptage, minimum, concours]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 4 (combinatoire)"
  reference: "2021-01_sujet-envoi-4.pdf, Exercices Seniors, exercice 15 ; corrigé 2021-03_Corrige-envoi-4.pdf (l'énoncé du sujet oublie de dire que le graphe n'est pas vide, sans quoi le résultat est faux ; le corrigé l'ajoute)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-01_sujet-envoi-4.pdf"
---

## Statement

Soit $k \geqslant 1$ un entier. On dessine un nombre fini de points, au moins un, et on trace des
flèches entre certains d'entre eux, en respectant deux règles :

- aucune flèche ne va d'un point vers lui-même ;
- entre deux points différents $u$ et $v$, il y a au plus une flèche : on ne peut pas avoir à la
  fois une flèche de $u$ vers $v$ et une flèche de $v$ vers $u$.

On suppose que, pour toute liste de $k$ points $x_1, \ldots, x_k$ (pas forcément différents), il
existe un point $u$ d'où part une flèche vers chacun des points $x_1, \ldots, x_k$.

Montrer qu'il y a au moins $2^{k+1} - 1$ points.

## Hints

1. Fais le cas $k = 1$ : il faut trouver au moins $3$ points. Pars d'un point quelconque et remonte
   les flèches.
2. Raisonne par récurrence sur $k$. Pour un point $u$, regarde l'ensemble $E_u$ des points d'où
   part une flèche vers $u$. Que peut-on dire des listes de $k - 1$ points pris dans $E_u$ ?
3. Pour conclure, il faut un point $u$ vers lequel arrivent peu de flèches : au plus la moitié des
   autres points. Compte toutes les flèches.

## Solution

Notons $N$ le nombre de points. On démontre par récurrence sur $k \geqslant 1$ la propriété :
« toute figure qui vérifie les règles et la condition pour l'entier $k$ a au moins $2^{k+1} - 1$
points ».

**Initialisation, $k = 1$.** Il faut montrer que $N \geqslant 3$. Prenons un point $x$. D'après la
condition, il existe un point $u$ avec une flèche de $u$ vers $x$, et $u \neq x$ (pas de flèche d'un
point vers lui-même). De même, il existe un point $v$ avec une flèche de $v$ vers $u$, et $v \neq u$.
Enfin $v \neq x$ : sinon il y aurait une flèche de $x$ vers $u$ et une de $u$ vers $x$, ce qui est
interdit. Les points $x$, $u$, $v$ sont différents, donc $N \geqslant 3 = 2^2 - 1$.

**Hérédité.** Soit $k \geqslant 2$. On suppose la propriété vraie pour $k - 1$, et on prend une
figure qui vérifie la condition pour $k$.

*Les points qui visent $u$.* Pour un point $u$, notons $E_u$ l'ensemble des points d'où part une
flèche vers $u$. Gardons seulement les points de $E_u$ et les flèches entre eux. Cette petite
figure vérifie les deux règles. Vérifions qu'elle vérifie la condition pour $k - 1$.

- Elle n'est pas vide : la condition appliquée à la liste $u, u, \ldots, u$ donne un point qui
  vise $u$.
- Prenons $k - 1$ points $y_1, \ldots, y_{k-1}$ de $E_u$. Appliquons la condition de la grande
  figure à la liste de $k$ points $y_1, \ldots, y_{k-1}, u$. On obtient un point $v$ qui vise
  $y_1, \ldots, y_{k-1}$ et aussi $u$. Comme $v$ vise $u$, le point $v$ est dans $E_u$. Ainsi,
  dans la petite figure, $v$ vise chacun des $y_i$.

D'après l'hypothèse de récurrence, $E_u$ a donc au moins $2^k - 1$ points, et cela **pour tout
point $u$**.

*Un point peu visé.* Chaque paire de points différents porte au plus une flèche, donc il y a au plus
$\frac{N(N-1)}{2}$ flèches. Chaque flèche arrive sur un point. En moyenne, il arrive donc au plus
$\frac{N - 1}{2}$ flèches sur un point, et il existe un point $u$ sur lequel arrivent au plus
$\frac{N-1}{2}$ flèches. Pour ce point, $E_u$ a au plus $\frac{N - 1}{2}$ éléments.

*On rassemble.* Pour ce point $u$, on a

$$2^k - 1 \leqslant \text{nombre de points de } E_u \leqslant \frac{N - 1}{2},$$

donc $N \geqslant 2(2^k - 1) + 1 = 2^{k+1} - 1$. La propriété est vraie pour $k$.

**Conclusion.** Par récurrence, pour tout $k \geqslant 1$, une figure qui vérifie la condition a au
moins $2^{k+1} - 1$ points.

## Going further

Pour $k = 1$, trois points suffisent : un triangle de flèches qui tournent. Pour $k = 2$, il faut
au moins $7$ points. On peut placer $7$ points sur un cercle, numérotés de $0$ à $6$, et tracer une
flèche de $a$ vers $a + 1$, $a + 2$ et $a + 4$ (en comptant modulo $7$, c'est-à-dire en revenant à
$0$ après $6$). Vérifier que cette figure convient.
