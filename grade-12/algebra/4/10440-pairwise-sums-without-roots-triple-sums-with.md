---
id: "10440"
title: "Sommes de deux polynômes sans racine, sommes de trois avec"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynome, signe, valeurs-intermediaires, raisonnement-par-l-absurde, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 2 (algèbre)"
  reference: "2017-10_ofm-2016-2017-envoi-2.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2016-2017-envoi-2-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-2.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 3$ pour lesquels il existe $n$ polynômes $P_1, P_2, \ldots, P_n$ à coefficients réels tels que, pour tous indices $i$, $j$, $k$ deux à deux distincts :

- le polynôme $P_i + P_j$ n'a aucune racine réelle ;
- le polynôme $P_i + P_j + P_k$ a au moins une racine réelle.

## Hints

1. Pour $n = 3$, cherche des polynômes du second degré, en en prenant deux égaux.
2. Un polynôme sans racine réelle peut-il prendre une valeur strictement positive et une valeur strictement négative ?
3. Pour $n \geqslant 4$, il suffit de regarder quatre des polynômes. Chaque somme $P_i + P_j$ est soit toujours strictement positive, soit toujours strictement négative. Que peut-on dire des trois sommes $P_i + P_j$, $P_j + P_k$, $P_i + P_k$ ?
4. La somme $P_1 + P_2 + P_3 + P_4$ s'écrit de trois façons comme une somme de deux sommes $P_i + P_j$. Cherche deux de ces écritures dont les signes sont opposés.

## Solution

Montrons que seul $n = 3$ convient.

**Étape 1 : $n = 3$ convient.** Prenons $P_1(x) = 3x^2 + 3$ et $P_2(x) = P_3(x) = -x^2 - 2$. Alors

$$P_1 + P_2 = P_1 + P_3 = 2x^2 + 1, \qquad P_2 + P_3 = -2x^2 - 4 .$$

Le premier est toujours supérieur ou égal à $1$, le second toujours inférieur ou égal à $-4$ : aucun des deux n'a de racine réelle. Enfin $P_1 + P_2 + P_3 = x^2 - 1$ a pour racines $1$ et $-1$.

**Étape 2 : un polynôme sans racine réelle garde un signe constant.** Soit $Q$ un polynôme sans racine réelle. Supposons qu'il existe des réels $u$ et $v$ tels que $Q(u) > 0$ et $Q(v) < 0$. La fonction $Q$ est continue sur $\mathbb{R}$, donc d'après le théorème des valeurs intermédiaires, elle s'annule entre $u$ et $v$. C'est impossible. Donc, comme $Q$ ne s'annule jamais, on a soit $Q(x) > 0$ pour tout réel $x$, soit $Q(x) < 0$ pour tout réel $x$.

**Étape 3 : on se ramène à quatre polynômes.** Si $n \geqslant 4$ polynômes conviennent, les quatre premiers $P_1$, $P_2$, $P_3$, $P_4$ vérifient encore les deux conditions. Il suffit donc de montrer que quatre polynômes ne peuvent pas convenir. Supposons, par l'absurde, que $P_1$, $P_2$, $P_3$, $P_4$ conviennent.

D'après l'étape 2, pour chaque paire $\{i, j\}$, le polynôme $P_i + P_j$ est soit toujours strictement positif, soit toujours strictement négatif. On dira que la paire $\{i, j\}$ est *positive* ou *négative*.

**Étape 4 : jamais trois paires de même signe dans un triplet.** Soient $i$, $j$, $k$ distincts. Si les trois paires $\{i, j\}$, $\{j, k\}$, $\{i, k\}$ étaient positives, alors pour tout réel $x$,

$$2\,(P_i + P_j + P_k)(x) = (P_i + P_j)(x) + (P_j + P_k)(x) + (P_i + P_k)(x) > 0 ,$$

et $P_i + P_j + P_k$ n'aurait pas de racine réelle. C'est exclu. De même, les trois paires ne peuvent pas être toutes négatives.

**Étape 5 : la contradiction.** Si l'on remplace chaque $P_i$ par $-P_i$, les conditions de l'énoncé restent vraies (un polynôme et son opposé ont les mêmes racines), et chaque paire change de signe. Parmi les trois paires $\{1, 2\}$, $\{1, 3\}$, $\{1, 4\}$, deux ont le même signe. Quitte à tout changer de signe, ces deux paires sont positives, et quitte à renuméroter $P_2$, $P_3$, $P_4$, ce sont $\{1, 2\}$ et $\{1, 4\}$.

- Dans le triplet $\{1, 2, 4\}$, les paires $\{1, 2\}$ et $\{1, 4\}$ sont positives, donc $\{2, 4\}$ est négative (étape 4).
- Dans le triplet $\{2, 3, 4\}$, la paire $\{2, 4\}$ est négative, donc $\{2, 3\}$ ou $\{3, 4\}$ est positive. Les rôles de $2$ et $4$ sont symétriques dans ce qui précède, donc on peut supposer que $\{2, 3\}$ est positive.
- Dans le triplet $\{1, 2, 3\}$, les paires $\{1, 2\}$ et $\{2, 3\}$ sont positives, donc $\{1, 3\}$ est négative.

Prenons $x = 0$ et notons $S = P_1(0) + P_2(0) + P_3(0) + P_4(0)$. D'une part, les paires $\{1, 4\}$ et $\{2, 3\}$ sont positives, donc

$$S = (P_1 + P_4)(0) + (P_2 + P_3)(0) > 0 .$$

D'autre part, les paires $\{1, 3\}$ et $\{2, 4\}$ sont négatives, donc

$$S = (P_1 + P_3)(0) + (P_2 + P_4)(0) < 0 .$$

C'est une contradiction. Quatre polynômes ne peuvent donc pas convenir, et aucun $n \geqslant 4$ ne convient.

**Conclusion.** L'entier $n = 3$ est le seul qui convient.

## Going further

1. Trouver un exemple pour $n = 3$ avec trois polynômes deux à deux distincts.
2. À quel endroit la démonstration utilise-t-elle que les $P_i$ sont des polynômes ? Le résultat reste-t-il vrai pour des fonctions continues sur $\mathbb{R}$ ?
