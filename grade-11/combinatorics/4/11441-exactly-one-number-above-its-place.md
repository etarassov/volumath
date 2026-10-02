---
id: "11441"
title: "Un seul nombre au-dessus de sa place"
grade: 11
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [permutations, bijection, parties, denombrement, puissances-de-2]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 4 (combinatoire)"
  reference: "2023-02_Sujet-envoi-4.pdf, Exercices Seniors, exercice 10 ; corrigé 2023-03_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/02/Sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-02_Sujet-envoi-4.pdf"
---

## Statement

On range les nombres $1, 2, \ldots, 2023$ dans un certain ordre, chacun une seule fois, et l'on note
$a_1, a_2, \ldots, a_{2023}$ le rangement obtenu : $a_1$ est le nombre placé en première position,
$a_2$ celui placé en deuxième position, et ainsi de suite.

Combien de rangements ont la propriété suivante : il existe **exactement une** position $k$ telle
que $a_k > k$ ?

Par exemple, avec $1, 2, 3$ au lieu de $1, \ldots, 2023$, le rangement $2, 1, 3$ convient (seule la
position $1$ porte un nombre plus grand qu'elle), mais $2, 3, 1$ ne convient pas (les positions $1$
et $2$).

## Hints

1. Traite d'abord les cas de $3$ et $4$ nombres à la main. Le rangement $1, 2, \ldots$ dans l'ordre
   convient-il ?
2. Dans un rangement qui convient, regarde l'ensemble $E$ des positions $k$ où $a_k \neq k$. Quel est
   le plus petit élément de $E$, et quel nombre est placé à cette position ?
3. Montre qu'un rangement qui convient est entièrement déterminé par l'ensemble $E$, et que tout
   ensemble $E$ d'au moins deux positions en donne un.

## Solution

Notons $n = 2023$, et appelons **bon** un rangement qui a exactement une position $k$ avec $a_k > k$.

**Étape 1 : l'ensemble des nombres déplacés.** À un rangement, associons l'ensemble $E$ des
positions $k$ telles que $a_k \neq k$ : ce sont les positions dont le nombre n'est pas « à sa
place ».

Si $k$ est dans $E$, le nombre $a_k$ est lui aussi dans $E$. En effet, la position $a_k$ est occupée
par un nombre différent de $a_k$, puisque $a_k$ est déjà placé en position $k \neq a_k$. Les nombres
placés aux positions de $E$ sont donc exactement les éléments de $E$, dans un autre ordre.

Pour un bon rangement, $E$ n'est pas vide (sinon $a_k = k$ partout, et aucune position n'a
$a_k > k$), et $E$ a au moins deux éléments (un seul nombre ne peut pas être déplacé seul).

**Étape 2 : un bon rangement est déterminé par $E$.** Prenons un bon rangement, et écrivons les
éléments de $E$ dans l'ordre croissant :

$$e_1 < e_2 < \cdots < e_r, \qquad r \geqslant 2 .$$

- *La position $e_1$.* Le nombre $a_{e_1}$ est un élément de $E$ différent de $e_1$, donc plus grand
  que $e_1$. Ainsi $e_1$ est une position où $a_k > k$ : c'est **la** seule, puisque le rangement est
  bon. Aux autres positions de $E$, on a donc $a_k < k$.
- *Qui est placé en $e_1$ ?* Le nombre $e_r$, le plus grand de $E$, est placé à une certaine
  position $k$ de $E$. Si $k \neq e_1$, alors $a_k = e_r \geqslant k$, et même $a_k > k$ puisque
  $a_k \neq k$ : impossible. Donc $a_{e_1} = e_r$.
- *Les positions $e_2, e_3, \ldots$* La position $e_2$ porte un élément de $E$ strictement plus
  petit que $e_2$ : c'est forcément $e_1$. La position $e_3$ porte un élément de $E$ plus petit que
  $e_3$ et pas encore utilisé : $e_1$ est pris, c'est donc $e_2$. De proche en proche, la position
  $e_j$ porte $e_{j-1}$, pour $j = 2, \ldots, r$.

Un bon rangement est donc entièrement déterminé par son ensemble $E$ :

$$a_{e_1} = e_r, \qquad a_{e_2} = e_1, \qquad a_{e_3} = e_2, \qquad \ldots, \qquad a_{e_r} = e_{r-1},$$

et $a_k = k$ pour les positions $k$ hors de $E$.

**Étape 3 : chaque ensemble d'au moins deux positions convient.** Inversement, soit
$E = \{e_1 < \cdots < e_r\}$ un ensemble d'au moins deux positions. Le rangement défini par les
formules ci-dessus utilise bien chaque nombre une fois. Il a $a_{e_1} = e_r > e_1$, puis
$a_{e_j} = e_{j-1} < e_j$ pour $j \geqslant 2$, et $a_k = k$ ailleurs. Il a donc exactement une
position avec $a_k > k$ : il est bon, et son ensemble de positions déplacées est bien $E$.

**Étape 4 : le compte.** Les bons rangements correspondent donc un à un aux parties de
$\{1, \ldots, n\}$ qui ont au moins deux éléments.

Pour former une partie de $\{1, \ldots, n\}$, on décide pour chaque nombre s'il est dedans ou non :
cela fait $2^n$ parties en tout. Parmi elles, une est vide et $n$ n'ont qu'un élément. Il reste

$$2^n - 1 - n$$

parties d'au moins deux éléments.

**Conclusion.** Pour $n = 2023$, le nombre de rangements cherché est

$$\boxed{2^{2023} - 2024} .$$

Vérification pour $n = 3$ : $2^3 - 4 = 4$ bons rangements, à savoir $2, 1, 3$ puis $3, 2, 1$ puis
$1, 3, 2$ et $3, 1, 2$.

## Going further

On peut aussi compter les rangements qui ont exactement **deux** positions avec $a_k > k$. Les
nombres obtenus pour toutes les valeurs de « exactement $j$ positions » s'appellent les nombres
eulériens. On les retrouve aussi en comptant les rangements qui ont exactement $j$ « montées »,
c'est-à-dire $j$ positions où $a_k < a_{k+1}$.
