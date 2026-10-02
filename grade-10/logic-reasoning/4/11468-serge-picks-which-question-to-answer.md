---
id: "11468"
title: "Serge choisit la question à laquelle il répond"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [strategie, sous-ensembles, puissances-de-2, denombrement, jeu-de-devinettes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 4 (combinatoire)"
  reference: "2025-03_Sujet-envoi-4-2024-2025.pdf, Exercices Juniors, exercice 7 ; corrigé 2025-05_Corrige-envoi-4-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/03/Sujet-envoi-4-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-03_Sujet-envoi-4-2024-2025.pdf"
---

## Statement

Soit $n$ un entier strictement positif, et soit $k$ un entier tel que $1 \leqslant k \leqslant 2^n$.

Serge choisit en secret un entier $x$ compris entre $1$ et $n$. Hugo cherche à le découvrir de la façon
suivante. À chaque tour :

- Hugo écrit $k$ sous-ensembles **différents** de $\{1, 2, \ldots, n\}$, et pour chacun de ces ensembles
  $S$, il pose la question « Ton entier $x$ appartient-il à $S$ ? » ;
- Serge choisit **une seule** de ces $k$ questions, dit à Hugo laquelle il a choisie, et y répond sans
  mentir.

Pour quelles valeurs de $k$, en fonction de $n$, Hugo peut-il être sûr de trouver l'entier de Serge en un
nombre fini de tours ?

## Hints

1. Appelle **suspects** les entiers qui sont encore compatibles avec toutes les réponses de Serge. Quelles
   questions sont inutiles pour Hugo, parce qu'elles ne peuvent éliminer aucun suspect ?
2. Prends deux suspects $a$ et $b$. Un ensemble qui contient $a$ mais pas $b$ (ou $b$ mais pas $a$) est
   une bonne question : pourquoi ? Combien y a-t-il de tels ensembles ?
3. Si $k$ est plus grand que ce nombre, Hugo doit forcément poser une question qui ne sépare pas $1$
   et $2$. Comment Serge peut-il en profiter à chaque tour ?

## Solution

**Le cas $n = 1$.** Serge a forcément choisi $x = 1$, et Hugo le sait sans poser de question. Toutes les
valeurs de $k$ conviennent. Dans la suite, $n \geqslant 2$.

**Compter les ensembles qui séparent deux entiers.** Soient $a$ et $b$ deux entiers différents entre $1$
et $n$. On dit qu'un ensemble **sépare** $a$ et $b$ s'il contient l'un des deux mais pas l'autre.

Comptons les ensembles qui contiennent $a$ mais pas $b$. Pour chacun des $n - 2$ autres entiers, on a
deux choix : le mettre dans l'ensemble ou non. Cela donne $2^{n-2}$ ensembles. De même, $2^{n-2}$
ensembles contiennent $b$ mais pas $a$. En tout,

$$2^{n-2} + 2^{n-2} = 2^{n-1} \ \text{ensembles séparent } a \text{ et } b .$$

Nous allons montrer que **Hugo gagne exactement quand $k \leqslant 2^{n-1}$**.

**Si $k \leqslant 2^{n-1}$, Hugo a une stratégie.** Appelons **suspects** les entiers qui sont encore
compatibles avec toutes les réponses déjà données. Au début, les $n$ entiers sont suspects.

Tant qu'il reste au moins deux suspects, Hugo en prend deux, $a$ et $b$, et écrit $k$ ensembles
différents qui séparent tous $a$ et $b$. C'est possible puisqu'il en existe $2^{n-1}$ et que
$k \leqslant 2^{n-1}$.

Serge répond à l'une de ces questions, portant sur un ensemble $S$ qui contient, disons, $a$ mais pas
$b$. Si la réponse est « oui », alors $x$ est dans $S$, donc $x \neq b$ : le suspect $b$ est éliminé. Si
la réponse est « non », alors $x \neq a$ : le suspect $a$ est éliminé.

Chaque tour élimine donc au moins un suspect. Après au plus $n - 1$ tours, il ne reste qu'un seul
suspect, et c'est forcément l'entier de Serge.

**Si $k > 2^{n-1}$, Serge peut empêcher Hugo de conclure.** Serge choisit $x = 1$. À chaque tour, Hugo
écrit $k$ ensembles différents. Il n'existe que $2^{n-1}$ ensembles qui séparent $1$ et $2$, et
$k > 2^{n-1}$, donc au moins un des ensembles écrits **ne sépare pas** $1$ et $2$ : il contient les deux,
ou aucun des deux. Serge choisit toujours cette question-là et répond honnêtement.

Ses réponses seraient alors exactement les mêmes s'il avait choisi $x = 2$ : un ensemble qui contient à
la fois $1$ et $2$ donne « oui » dans les deux cas, un ensemble qui ne contient ni $1$ ni $2$ donne « non »
dans les deux cas. Quel que soit le nombre de tours, les entiers $1$ et $2$ restent tous les deux
suspects, et Hugo ne peut jamais être sûr de la réponse.

**Conclusion.** Pour $n = 1$, Hugo gagne pour toute valeur de $k$. Pour $n \geqslant 2$, Hugo peut être
sûr de trouver l'entier de Serge exactement quand $1 \leqslant k \leqslant 2^{n-1}$.

## Going further

Pour $n = 3$, la stratégie de Hugo permet $k = 4$. Si les suspects $a$ et $b$ sont $1$ et $2$, les quatre
ensembles qui les séparent sont $\{1\}$, $\{1, 3\}$, $\{2\}$ et $\{2, 3\}$. Avec $k = 5$, Hugo doit ajouter
un cinquième ensemble, qui contient alors $1$ et $2$ ou aucun des deux, et Serge peut toujours se réfugier
derrière lui.
