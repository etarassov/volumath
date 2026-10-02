---
id: "11203"
title: "Le Rubik's cube revient toujours au départ"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 25
tags: [tiroirs, periodicite, raisonnement-par-l-absurde, configuration]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 2 (combinatoire)"
  reference: "2017-10_ofm-2012-2013-envoi2.pdf, Exercices Communs, exercice 4 ; corrigé 2017-10_ofm-2012-2013-envoi2-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi2.pdf"
---

## Statement

Ruby choisit une série de mouvements de son Rubik's cube. Par exemple : tourner la face du haut
d'un quart de tour dans le sens des aiguilles d'une montre, puis la face du bas d'un demi-tour,
puis la face de droite d'un quart de tour dans l'autre sens. N'importe quelle série de rotations
de faces est permise.

Ensuite, partant de la position de départ, elle répète **toujours la même série**, encore et
encore.

Montrer qu'au bout d'un certain nombre de répétitions, le cube se retrouve exactement dans sa
position de départ.

## Hints

1. Appelle $x_0$ la position de départ du cube, $x_1$ sa position après une série, $x_2$ après
   deux séries, et ainsi de suite. Le nombre de positions possibles d'un Rubik's cube est énorme,
   mais est-il fini ?
2. Deux des positions $x_0, x_1, x_2, \ldots$ sont donc égales. Mais attention : cela ne dit pas
   encore que c'est $x_0$ qui revient. Pourquoi ?
3. Ruby peut-elle **défaire** sa série ? Si elle la défait en partant de $x_5$, où arrive-t-elle ?

## Solution

**Étape 1. Une position se répète.**

Notons $x_0$ la position de départ, et $x_k$ la position du cube après $k$ répétitions de la
série.

Un Rubik's cube n'a qu'un nombre fini de positions possibles : c'est un nombre gigantesque, mais
c'est un nombre. La suite $x_0, x_1, x_2, \ldots$ est infinie. Elle ne peut donc pas être formée
de positions toutes différentes : il existe deux entiers $n < m$ tels que
$$x_n = x_m .$$

Cela ne suffit pas encore. On pourrait imaginer que le cube parte de $x_0$, arrive en $x_1$, puis
tourne en rond entre $x_1$, $x_2$ et $x_3$ sans jamais revenir en $x_0$. Il faut montrer que
c'est impossible.

**Étape 2. La série inverse.**

Ruby peut défaire sa série : elle effectue les mêmes rotations, mais **dans l'ordre inverse et
chacune dans l'autre sens**. Appelons cela la série inverse. Si l'on part de la position $x_k$
(avec $k \geqslant 1$) et qu'on applique la série inverse, on défait la dernière série, et l'on
revient donc à la position $x_{k-1}$.

**Étape 3. Revenir en arrière depuis $x_n = x_m$.**

Appliquons la série inverse à la position $x_n$, qui est la même que $x_m$. D'un côté on obtient
$x_{n-1}$, de l'autre $x_{m-1}$. Ces deux positions sont donc égales :
$$x_{n-1} = x_{m-1} .$$

On recommence. Après avoir appliqué la série inverse $n$ fois en tout, on obtient
$$x_0 = x_{m-n} .$$

**Conclusion : après $m - n$ répétitions de sa série, Ruby retrouve exactement la position de
départ.**

## Going further

Le point essentiel est qu'on peut **défaire** chaque mouvement. Sans cela, le résultat est faux.
Par exemple, la machine qui, à chaque étape, remplace un nombre $x$ par $x^2$ et ne garde que le
dernier chiffre, part de $2$ et donne $2, 4, 6, 6, 6, \ldots$ : une valeur se répète, mais on ne
revient jamais à $2$. Ici, $4$ et $6$ ont tous les deux $6$ pour suivant, alors qu'au Rubik's cube
chaque position a un seul antécédent.

Le Rubik's cube possède $43\,252\,003\,274\,489\,856\,000$ positions. Pourtant, on peut montrer
qu'aucune série ne demande plus de $1\,260$ répétitions pour revenir au départ.
