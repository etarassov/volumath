---
id: "8169"
title: "Géométrique, arithmétique, géométrique, arithmétique…"
grade: 12
theme: algebra
difficulty: 4
duration_min: 50
tags: [suite-arithmetique, suite-geometrique, racine-carree, pgcd]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 3, exercice 99 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soit $a_1 < a_2 < a_3 < \cdots$ une suite strictement croissante d'entiers strictement positifs telle que, pour tout entier $k \geqslant 1$ :

- les trois termes $a_{2k-1},\ a_{2k},\ a_{2k+1}$ forment une suite **géométrique** ;
- les trois termes $a_{2k},\ a_{2k+1},\ a_{2k+2}$ forment une suite **arithmétique**.

Sachant que $a_{13} = 2016$, combien vaut $a_1$ ?

## Hints

1. Écris ce que disent les deux conditions : $a_{2k}^2 = a_{2k-1}a_{2k+1}$ et $a_{2k+2} = 2a_{2k+1} - a_{2k}$.
2. Tous les termes sont positifs, donc $a_{2k} = \sqrt{a_{2k-1}a_{2k+1}}$. Remplace dans la seconde relation, puis utilise-la deux fois de suite.
3. Tu devrais arriver à $\sqrt{a_{2k+3}} = 2\sqrt{a_{2k+1}} - \sqrt{a_{2k-1}}$. Que cela dit-il de la suite des racines carrées des termes de rang impair ?
4. Note $x_k = \sqrt{a_{2k-1}}$. Alors $a_1 = x_1^2$ et $a_{13} = x_7^2 = 2016$. Écris $x_k = x_1 + (k-1)r$.
5. Il reste de l'arithmétique : pose $A = x_1^2$, $B = x_1 r$, $C = r^2$. Ce sont des entiers, ils vérifient $B^2 = AC$, et $a_{13} = A + 12B + 36C$. Factorise.

## Solution

**Étape 1 : les racines carrées des termes impairs forment une suite arithmétique.**

Tous les termes sont strictement positifs. La condition « géométrique » sur $a_{2k-1}, a_{2k}, a_{2k+1}$ donne $a_{2k}^2 = a_{2k-1}a_{2k+1}$, donc

$$a_{2k} = \sqrt{a_{2k-1}}\,\sqrt{a_{2k+1}} .$$

De même, en remplaçant $k$ par $k+1$,

$$a_{2k+2} = \sqrt{a_{2k+1}}\,\sqrt{a_{2k+3}} .$$

La condition « arithmétique » sur $a_{2k}, a_{2k+1}, a_{2k+2}$ dit $a_{2k+2} = 2a_{2k+1} - a_{2k}$, donc

$$\sqrt{a_{2k+1}}\,\sqrt{a_{2k+3}} = 2a_{2k+1} - \sqrt{a_{2k-1}}\,\sqrt{a_{2k+1}} .$$

Divisons par $\sqrt{a_{2k+1}}$, qui est non nul :

$$\sqrt{a_{2k+3}} = 2\sqrt{a_{2k+1}} - \sqrt{a_{2k-1}} .$$

Posons $x_k = \sqrt{a_{2k-1}}$ pour $k \geqslant 1$. La relation ci-dessus s'écrit $x_{k+2} - x_{k+1} = x_{k+1} - x_k$ : la suite $(x_k)$ est **arithmétique**. Notons $r$ sa raison, de sorte que

$$x_k = x_1 + (k-1)r .$$

Comme la suite $(a_n)$ est strictement croissante, $(x_k)$ l'est aussi, donc $r > 0$ ; et $x_1 > 0$.

**Étape 2 : trois entiers.**

Posons

$$A = x_1^2 = a_1, \qquad B = x_1 r, \qquad C = r^2 .$$

Ce sont des entiers. En effet :

- $A = a_1$ est un entier ;
- $a_2 = \sqrt{a_1}\sqrt{a_3} = x_1 x_2 = x_1(x_1 + r) = A + B$, donc $B = a_2 - a_1$ est un entier ;
- $a_3 = x_2^2 = (x_1+r)^2 = A + 2B + C$, donc $C = a_3 - a_1 - 2B$ est un entier.

Ils sont tous les trois strictement positifs, et ils vérifient

$$B^2 = x_1^2 r^2 = AC .$$

Enfin, pour tout $k$,

$$a_{2k-1} = x_k^2 = \left(x_1 + (k-1)r\right)^2 = A + 2(k-1)B + (k-1)^2 C .$$

Avec $k = 7$ (puisque $2 \times 7 - 1 = 13$) :

$$a_{13} = A + 12B + 36C = 2016 .$$

**Étape 3 : factoriser.**

Soit $g = \mathrm{PGCD}(A, C)$, et écrivons $A = g\,A'$, $C = g\,C'$ avec $\mathrm{PGCD}(A', C') = 1$. De $B^2 = AC = g^2 A'C'$ on tire que $g$ divise $B$ ; posons $B = g\,B'$, de sorte que

$$B'^2 = A'C' .$$

Deux entiers positifs premiers entre eux dont le produit est un carré sont chacun un carré : il existe donc des entiers $p, q > 0$ avec

$$A' = p^2, \qquad C' = q^2, \qquad B' = pq .$$

Ainsi $A = g p^2$, $B = gpq$, $C = gq^2$, et

$$2016 = A + 12B + 36C = g\left(p^2 + 12pq + 36q^2\right) = g\,(p + 6q)^2 .$$

**Étape 4 : conclure.**

Il faut donc que $(p+6q)^2$ divise $2016 = 2^5 \times 3^2 \times 7$. Les carrés parfaits qui divisent $2016$ sont

$$1,\quad 4,\quad 9,\quad 16,\quad 36,\quad 144 ,$$

donc $p + 6q \in \{1, 2, 3, 4, 6, 12\}$.

Or $p \geqslant 1$ et $q \geqslant 1$, donc $p + 6q \geqslant 7$. La seule possibilité est

$$p + 6q = 12 .$$

Avec $q \geqslant 1$ et $p \geqslant 1$ : $q = 1$ donne $p = 6$, et $q = 2$ donnerait $p = 0$, exclu. Donc $p = 6$, $q = 1$, et

$$g = \frac{2016}{144} = 14, \qquad A = g p^2 = 14 \times 36 = 504 .$$

$$\boxed{\ a_1 = 504\ }$$

**Vérification.** Avec $A = 504$, $B = 84$, $C = 14$, la suite commence par

$$504,\ 588,\ 686,\ 784,\ 896,\ 1008,\ 1134,\ 1260,\ 1400,\ 1540,\ 1694,\ 1848,\ 2016 ,$$

et l'on vérifie que $588^2 = 504 \times 686$, que $686$, $784$, $896$ sont bien en progression arithmétique, et ainsi de suite jusqu'à $a_{13} = 2016$.

## Going further

Le cœur de l'exercice est l'étape 1 : une suite définie par deux conditions entremêlées se révèle n'être, au fond, qu'une suite arithmétique déguisée, à condition de regarder les racines carrées des termes de rang impair. Ceux-ci sont donc les carrés d'une progression arithmétique. Ici

$$a_{2k-1} = 504 + 168(k-1) + 14(k-1)^2 = 14\,(k+5)^2 ,$$

ce qui redonne $a_1 = 14 \times 36 = 504$ pour $k = 1$ et $a_{13} = 14 \times 144 = 2016$ pour $k = 7$.
