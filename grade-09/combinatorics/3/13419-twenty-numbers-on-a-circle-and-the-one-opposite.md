---
id: "13419"
title: "Vingt nombres autour d'un cercle et le nombre d'en face"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [cercle, parite, appariement, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2022"
  reference: "2022-10_sujet-Coupe-Animath-Automne-2022.pdf, épreuve lycée, exercice 11 ; corrigé 2022-10_corrige-commente-Coupe-Animath-Automne-2022.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/10/sujet-Coupe-Animath-Automne-2022.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2022-10_sujet-Coupe-Animath-Automne-2022.pdf"
---

## Statement

Les entiers $1, 2, \ldots, 20$ ont été placés autour d'un cercle, à intervalles réguliers, dans un certain ordre.

Pour chacun de ces entiers $k$, Matthieu regarde les $9$ nombres qui suivent $k$ quand on tourne dans le sens des aiguilles d'une montre. Il note $A(k)$ le nombre d'entre eux qui sont plus petits que $k$. Il regarde ensuite les $9$ nombres qui suivent $k$ quand on tourne dans l'autre sens, et note $B(k)$ le nombre d'entre eux qui sont plus petits que $k$.

Matthieu remarque que $A(k) = B(k)$ pour tous les $k$.

Quel est le nombre diamétralement opposé à $11$ sur le cercle ?

## Hints

1. Pour un nombre $k$, quels nombres du cercle ne font partie ni des $9$ qui le suivent dans un sens, ni des $9$ qui le suivent dans l'autre sens ?
2. Commence par $k = 2$. Un seul nombre est plus petit que $2$. Où peut-il être ?
3. Comme $A(k) = B(k)$, la somme $A(k) + B(k)$ est paire. Pour $k = 4$, combien y a-t-il de nombres plus petits que $4$ sur tout le cercle ? Qu'en déduis-tu pour le nombre opposé à $4$ ?
4. Continue de proche en proche avec $6$, $8$, $10$, $12$.

## Solution

Pour un nombre $k$ du cercle, on note $o(k)$ le nombre qui lui est diamétralement opposé : il est à $10$ places de $k$, dans un sens comme dans l'autre.

**Une remarque sur les voisins.** Les $9$ nombres qui suivent $k$ dans un sens et les $9$ qui le suivent dans l'autre sens sont $18$ nombres différents. Avec $k$ et $o(k)$, cela fait les $20$ nombres du cercle. Autrement dit, **les nombres qui comptent pour $A(k)$ ou $B(k)$ sont tous les nombres du cercle, sauf $k$ et $o(k)$.**

Par conséquent, $A(k) + B(k)$ est le nombre d'entiers plus petits que $k$ sur tout le cercle, auquel on retire $1$ si $o(k)$ est plus petit que $k$.

**Étape 1 : le nombre $2$.** Comme $A(k) = B(k)$, la somme $A(k) + B(k) = 2A(k)$ est toujours **paire**. Pour $k = 2$, un seul nombre est plus petit que $2$, le nombre $1$. Si $1$ n'était pas en face de $2$, on aurait $A(2) + B(2) = 1$, qui est impair. Donc $o(2) = 1$.

**Étape 2 : de proche en proche.** Supposons que l'on sache déjà que $1$ et $2$ sont face à face, que $3$ et $4$ sont face à face, et ainsi de suite jusqu'à $2i - 3$ et $2i - 2$. Regardons le nombre $2i$.

Sur tout le cercle, il y a $2i - 1$ nombres plus petits que $2i$ : ce nombre est impair. Comme $A(2i) + B(2i)$ est pair, l'opposé $o(2i)$ doit être l'un de ces nombres plus petits que $2i$, sinon la somme vaudrait $2i - 1$. Donc $o(2i)$ est l'un des nombres $1, 2, \ldots, 2i - 1$.

Mais les nombres $1, 2, \ldots, 2i - 2$ ont déjà chacun leur opposé, et un nombre n'a qu'un seul opposé. Il ne reste que $2i - 1$ : donc $o(2i) = 2i - 1$.

On obtient ainsi, l'un après l'autre : $o(2) = 1$, $o(4) = 3$, $o(6) = 5$, $o(8) = 7$, $o(10) = 9$, puis $o(12) = 11$.

**Conclusion.** Le nombre diamétralement opposé à $11$ est $12$.

*Une telle disposition existe bien.* Plaçons par exemple $1, 3, 5, \ldots, 19$ dans l'ordre sur un demi-cercle, et $2, 4, 6, \ldots, 20$ en face, de sorte que $2i - 1$ et $2i$ soient toujours face à face.

Prenons un nombre $k$, et deux nombres $a$ et $b$ face à face, autres que $k$ et $o(k)$. En partant de $k$ dans le sens des aiguilles d'une montre, si $a$ est à $p$ places (avec $1 \leqslant p \leqslant 9$), alors $b$ est à $p + 10$ places dans ce sens, c'est-à-dire à $10 - p$ places dans l'autre sens. L'un compte donc pour $A(k)$ et l'autre pour $B(k)$, ou le contraire.

Or les nombres plus petits que $k$ forment des paires entières de nombres face à face, plus, quand $k$ est pair, le nombre $k - 1$, qui est justement $o(k)$ et ne compte pas. Chaque paire apporte $1$ à $A(k)$ et $1$ à $B(k)$, donc $A(k) = B(k)$.

## Going further

Matthieu recommence avec les entiers de $1$ à $2m$ autour d'un cercle, en regardant chaque fois les $m - 1$ nombres qui suivent dans chaque sens. Si $A(k) = B(k)$ pour tous les $k$, quel nombre est en face de $1$ ? Et en face de $2m$ ?
