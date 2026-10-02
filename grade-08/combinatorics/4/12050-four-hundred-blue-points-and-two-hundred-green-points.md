---
id: "12050"
title: "Quatre cents points bleus et deux cents points verts"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [points-alignes, comptage, fenetre-glissante, valeurs-intermediaires, variation-de-un]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test du 26 février 2014"
  reference: "2017-10_ofm-2013-2014-test-fevrier.pdf, exercice 2 (groupe B) ; corrigé 2017-10_ofm-2013-2014-test-fevrier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-fevrier.pdf"
---

## Statement

Sur une droite, on a placé $600$ points distincts : $400$ d'entre eux sont bleus et les $200$ autres sont verts.

Montrer que l'on peut trouver un segment qui contient exactement $200$ points bleus et $100$ points verts.

## Hints

1. Un tel segment contient $300$ points en tout. Numérotez les points de gauche à droite, de $A_1$ à $A_{600}$, et intéressez-vous aux segments qui contiennent $300$ points consécutifs.
2. Notez $v_k$ le nombre de points verts parmi $A_{k+1}, A_{k+2}, \ldots, A_{k+300}$. Que vaut $v_0 + v_{300}$ ?
3. Quand on passe de $v_k$ à $v_{k+1}$, un point sort du groupe et un point y entre. De combien $v_k$ peut-il changer ?

## Solution

Numérotons les points de gauche à droite : $A_1, A_2, \ldots, A_{600}$. Pour chaque entier $k$ de $0$ à $300$, le segment $[A_{k+1} A_{k+300}]$ contient exactement les $300$ points consécutifs $A_{k+1}, A_{k+2}, \ldots, A_{k+300}$. Notons $v_k$ le nombre de points verts parmi eux ; ce segment contient alors $300 - v_k$ points bleus.

Il suffit donc de trouver un $k$ tel que $v_k = 100$ : le segment correspondant contient alors $100$ points verts et $300 - 100 = 200$ points bleus.

**Étape 1 : le premier et le dernier segment.** Les segments $[A_1 A_{300}]$ et $[A_{301} A_{600}]$ contiennent à eux deux chacun des $600$ points, une seule fois. Ils contiennent donc à eux deux les $200$ points verts :

$$v_0 + v_{300} = 200 .$$

Si $v_0 = 100$, c'est terminé. Sinon, l'un des deux nombres $v_0$ et $v_{300}$ est strictement plus petit que $100$ et l'autre strictement plus grand, puisque leur somme vaut $200$.

**Étape 2 : d'un segment au suivant.** Passons de $v_k$ à $v_{k+1}$, pour $k$ entre $0$ et $299$. Le point $A_{k+1}$ quitte le groupe, le point $A_{k+301}$ y entre, et les $299$ autres points ne changent pas. Le nombre de points verts perd $1$ si $A_{k+1}$ est vert, et gagne $1$ si $A_{k+301}$ est vert. Donc $v_{k+1} - v_k$ vaut $-1$, $0$ ou $1$ : **la suite $v_0, v_1, \ldots, v_{300}$ avance par pas d'au plus $1$.**

**Étape 3 : on ne peut pas sauter la valeur $100$.** Supposons d'abord $v_0 < 100 < v_{300}$. Il existe des indices $k$ tels que $v_k \geqslant 100$, par exemple $k = 300$. Prenons le plus petit d'entre eux. Comme $v_0 < 100$, ce plus petit indice $k$ vaut au moins $1$, et $v_{k-1} < 100$, c'est-à-dire $v_{k-1} \leqslant 99$. D'après l'étape 2, $v_k \leqslant v_{k-1} + 1 \leqslant 100$. Comme par ailleurs $v_k \geqslant 100$, on obtient $v_k = 100$.

Si au contraire $v_0 > 100 > v_{300}$, on raisonne de la même façon avec le plus petit indice $k$ tel que $v_k \leqslant 100$ : on a $v_{k-1} \geqslant 101$, donc $v_k \geqslant v_{k-1} - 1 \geqslant 100$, et finalement $v_k = 100$.

**Conclusion.** Dans tous les cas, il existe un entier $k$ entre $0$ et $300$ tel que $v_k = 100$. Le segment $[A_{k+1} A_{k+300}]$ contient alors exactement $300$ points, dont $100$ verts et $200$ bleus.

## Going further

On place maintenant sur une droite $6$ points : $2$ bleus, $2$ verts et $2$ rouges. Trouver une disposition pour laquelle aucun segment ne contient exactement un point de chaque couleur. L'idée ci-dessus ne marche donc plus avec trois couleurs. Quelle étape tombe en défaut ?
