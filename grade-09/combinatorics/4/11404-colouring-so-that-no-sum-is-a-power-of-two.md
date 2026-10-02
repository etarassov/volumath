---
id: "11404"
title: "Colorier sans somme égale à une puissance de 2"
grade: 9
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, coloriage, puissances-de-deux, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 4 (combinatoire)"
  reference: "2020-01_EnvoiCombiFinal.pdf, Exercices Juniors, exercice 8 ; corrigé 2020-03_corrige-commente-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/EnvoiCombiFinal.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_EnvoiCombiFinal.pdf"
---

## Statement

On colorie chacun des entiers $1, 2, 3, \ldots, 2020$ en bleu ou en rouge.

Le coloriage est dit **agréable** s'il n'existe pas deux entiers **différents** de la même couleur
dont la somme est une puissance de $2$ (c'est-à-dire l'un des nombres $1, 2, 4, 8, 16, \ldots$).

Combien y a-t-il de coloriages agréables ?

## Hints

1. Fais l'essai avec les entiers de $1$ à $8$, en coloriant les nombres dans l'ordre. Quels
   nombres peux-tu colorier librement, et lesquels n'ont pas le choix ?
2. Prends un entier $N$ et cherche les entiers $t$ plus petits que $N$ tels que $t + N$ soit une
   puissance de $2$. Combien y en a-t-il ? Encadre $t + N$.
3. Distingue le cas où $N$ est lui-même une puissance de $2$.
4. Combien y a-t-il de puissances de $2$ entre $1$ et $2020$ ?

## Solution

L'idée est de colorier les entiers **dans l'ordre**, de $1$ à $2020$, et de regarder à chaque
fois si la couleur de $N$ est libre ou imposée par les nombres plus petits déjà coloriés.

**Les partenaires plus petits de $N$.**

Soit $N$ un entier entre $1$ et $2020$. On cherche les entiers $t$ avec $1 \leqslant t < N$ tels
que $t + N$ soit une puissance de $2$. Notons $2^k$ la plus grande puissance de $2$ qui ne dépasse
pas $N$, de sorte que
$$2^k \leqslant N < 2^{k+1} .$$

*Premier cas : $N = 2^k$ est une puissance de $2$.* Pour $1 \leqslant t < N$, on a
$$2^k < t + N < 2^k + 2^k = 2^{k+1} .$$
Le nombre $t + N$ est strictement entre deux puissances de $2$ consécutives, ce n'est donc pas une
puissance de $2$. Aucun nombre plus petit n'impose rien à $N$.

*Second cas : $2^k < N < 2^{k+1}$.* Pour $1 \leqslant t < N$, on a
$$2^k < t + N < 2N < 2^{k+2} .$$
La seule puissance de $2$ strictement entre $2^k$ et $2^{k+2}$ est $2^{k+1}$. Donc $t + N$ est une
puissance de $2$ seulement si $t = 2^{k+1} - N$. Ce nombre convient bien : il est au moins $1$
car $N < 2^{k+1}$, et il est plus petit que $N$ car $N > 2^k$, donc $2N > 2^{k+1}$. Ainsi $N$ a
**exactement un** partenaire plus petit que lui, le nombre $2^{k+1} - N$.

Par exemple, pour $N = 13$, on a $8 < 13 < 16$, et le seul partenaire plus petit est
$16 - 13 = 3$.

**Ce que cela donne pour le coloriage.**

Colorions dans l'ordre $1, 2, 3, \ldots, 2020$. Quand on arrive à $N$ :

- si $N$ est une puissance de $2$, aucun nombre déjà colorié ne gêne : on peut lui donner
  n'importe laquelle des deux couleurs ;
- sinon, $N$ a un seul partenaire plus petit, déjà colorié, et $N$ doit prendre **l'autre**
  couleur. Ce choix est imposé, et il ne crée aucun problème avec les nombres plus petits,
  puisque ce partenaire est le seul à gêner.

Un coloriage obtenu ainsi est agréable : si deux nombres différents ont une somme égale à une
puissance de $2$, le plus grand des deux est un nombre $N$ qui n'est pas une puissance de $2$
(d'après le premier cas), et le plus petit est son unique partenaire, qui a reçu l'autre couleur.

Inversement, tout coloriage agréable s'obtient ainsi, puisque la couleur de chaque nombre qui
n'est pas une puissance de $2$ y est imposée par celle de son partenaire.

**Le compte.**

Un coloriage agréable est donc entièrement déterminé par les couleurs des puissances de $2$, et
ces couleurs peuvent être choisies librement. Les puissances de $2$ entre $1$ et $2020$ sont
$$1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 ,$$
soit $11$ nombres (la suivante, $2048$, dépasse $2020$). Chacune a deux couleurs possibles, ce qui
fait
$$2^{11} = 2048$$
coloriages.

**Conclusion.**

**Il y a exactement $2048$ coloriages agréables.**
