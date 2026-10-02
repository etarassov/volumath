---
id: "11422"
title: "Sept amis et leurs bougies"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 10
tags: [tiroirs, absurde, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 1 ; corrigé 2022-04_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Sept amis fêtent leur anniversaire le même jour. Leurs âges sont $a_1$, $a_2$, $a_3$, $a_4$, $a_5$,
$a_6$ et $a_7$ ans.

Ils ont en tout $a_1 + a_2 + a_3 + a_4 + a_5 + a_6 + a_7 - 6$ bougies, qu'ils se partagent. Chacun
voudrait sur son gâteau au moins autant de bougies que son âge.

Montrer que, quelle que soit la façon dont les bougies sont partagées, l'un des amis au moins a assez
de bougies pour son gâteau.

## Hints

1. Essaie avec des petits nombres : trois amis de $1$, $2$ et $3$ ans, et $1 + 2 + 3 - 2 = 4$ bougies.
   Peux-tu priver tout le monde ?
2. Suppose que personne n'a assez de bougies. Combien de bougies le premier ami a-t-il, au plus ?
3. Additionne ce que chacun a, au plus.

## Solution

Raisonnons par l'absurde : supposons qu'**aucun** des sept amis n'ait assez de bougies.

Le premier ami a alors moins de $a_1$ bougies. Comme un nombre de bougies est un nombre entier, il
en a au plus $a_1 - 1$. De même, le deuxième en a au plus $a_2 - 1$, et ainsi de suite jusqu'au
septième, qui en a au plus $a_7 - 1$.

En additionnant ces sept inégalités, le nombre total de bougies est au plus

$$(a_1 - 1) + (a_2 - 1) + \cdots + (a_7 - 1) = a_1 + a_2 + \cdots + a_7 - 7 .$$

Mais il y a $a_1 + a_2 + \cdots + a_7 - 6$ bougies, c'est-à-dire une de plus que ce maximum. C'est
impossible.

Notre supposition était donc fausse : **l'un des amis au moins a autant de bougies que son âge**, ou
plus.

## Going further

Avec une bougie de moins, c'est-à-dire $a_1 + \cdots + a_7 - 7$ bougies, la conclusion devient fausse :
on donne $a_1 - 1$ bougies au premier, $a_2 - 1$ au deuxième, et ainsi de suite, et chacun en a une de
moins que son âge. Le nombre $6$ de l'énoncé est donc exactement le bon.

C'est le **principe des tiroirs** : si l'on range plus de $k(m-1)$ chaussettes dans $k$ tiroirs, l'un
des tiroirs contient au moins $m$ chaussettes. Ici les tiroirs n'ont pas tous la même taille, mais
l'idée est la même.
