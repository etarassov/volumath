---
id: "12001"
title: "Points bleus, points rouges et cercles de rayon 1"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [double comptage, geometrie combinatoire, cercle, mediatrice, maximum, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier, année 2011-2012"
  reference: "2017-10_ofm-2011-2012-test-janvier.pdf (en-tête « Janvier 2011 »), exercice 1 ; corrigé 2017-10_ofm-2011-2012-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-janvier.pdf"
---

## Statement

Dans le plan, on place $2011$ points, tous différents. Chacun est colorié soit en bleu, soit en rouge.

1. On suppose que, pour chaque point bleu, le **disque** de centre ce point et de rayon $1$ contient exactement deux points rouges. Quel est le plus grand nombre possible de points bleus ?

2. On suppose maintenant que, pour chaque point bleu, le **cercle** de centre ce point et de rayon $1$ passe par exactement deux points rouges. Quel est le plus grand nombre possible de points bleus ?

Dans la question 2, un point rouge compte seulement s'il est **sur** le cercle, c'est-à-dire exactement à distance $1$ du point bleu.

## Hints

1. Question 1 : combien faut-il au moins de points rouges dès qu'il y a un point bleu ? Essayez ensuite de serrer tous les points bleus tout près de deux points rouges.
2. Question 2 : notez $r$ le nombre de points rouges et $b$ le nombre de points bleus. À chaque point bleu, associez la paire des deux points rouges qui sont sur son cercle.
3. Fixez deux points rouges $R_1$ et $R_2$. Combien de points du plan sont exactement à distance $1$ de $R_1$ **et** de $R_2$ ? Où se trouvent-ils par rapport au segment $[R_1R_2]$ ?
4. Vous devez obtenir $b \le r(r-1)$. Avec $r + b = 2011$, cela donne une borne sur $r$, donc sur $b$. Pour montrer que la borne est atteinte, placez tous les points rouges sur un même petit segment.

## Solution

**Question 1.**

S'il y a au moins un point bleu, son disque contient deux points rouges, donc il y a au moins $2$ points rouges. Il y a donc au plus $2011 - 2 = 2009$ points bleus.

Ce nombre est atteint. Prenons deux points rouges $R_1$ et $R_2$ à distance $\text{0,1}$ l'un de l'autre, et plaçons $2009$ points bleus, tous différents et différents de $R_1$ et $R_2$, à moins de $\text{0,1}$ de $R_1$. Chaque point bleu est alors à moins de $\text{0,2}$ de $R_1$ et de $R_2$, donc son disque de rayon $1$ contient les deux points rouges, et il n'y en a pas d'autres.

Le plus grand nombre possible de points bleus est donc $2009$.

**Question 2.**

Notons $r$ le nombre de points rouges et $b$ le nombre de points bleus, de sorte que $r + b = 2011$. Comme à la question 1, s'il y a un point bleu, alors $r \ge 2$.

*Une remarque de géométrie.* Soient deux points distincts $R_1$ et $R_2$. Un point $X$ tel que $XR_1 = XR_2 = 1$ est à égale distance de $R_1$ et $R_2$, donc il est sur la médiatrice de $[R_1R_2]$. Sur cette droite, il y a au plus deux points à distance $1$ de $R_1$ (un cercle coupe une droite en au plus deux points). Donc **au plus deux points du plan sont à distance $1$ à la fois de $R_1$ et de $R_2$**. Il y en a exactement deux, un de chaque côté de la droite $(R_1R_2)$, quand $R_1R_2 < 2$.

*La borne.* À chaque point bleu $X$, associons la paire $\{R_1, R_2\}$ des deux points rouges situés sur son cercle. Chaque point bleu reçoit ainsi une seule paire. Une paire donnée ne peut être reçue que par des points bleus situés à distance $1$ de ses deux points, donc par au plus deux points bleus d'après la remarque.

Il y a $\dfrac{r(r-1)}{2}$ paires de points rouges, et chacune sert au plus deux fois. Donc

$$b \le 2 \times \frac{r(r-1)}{2} = r(r-1).$$

En remplaçant $b$ par $2011 - r$ :

$$2011 - r \le r^2 - r, \qquad \text{c'est-à-dire} \qquad r^2 \ge 2011.$$

Or $44^2 = 1936 < 2011$ et $45^2 = 2025$. Donc $r \ge 45$, et $b = 2011 - r \le 1966$.

*La construction.* Plaçons $45$ points rouges, tous différents, sur un segment de longueur $1$ porté par une droite $d$. Deux d'entre eux sont à distance au plus $1$, donc moins de $2$ : d'après la remarque, il y a exactement deux points à distance $1$ de chacun des deux. On obtient ainsi $2 \times \dfrac{45 \times 44}{2} = 1980$ points. Vérifions qu'ils sont tous différents et qu'ils conviennent.

- Si $X$ est l'un de ces points, son cercle de rayon $1$ coupe la droite $d$ en au plus deux points. Il passe donc par exactement deux points rouges, ceux de la paire qui l'a fabriqué, et par aucun autre.
- Par conséquent un point $X$ détermine sa paire : deux paires différentes donnent des points différents. Et les deux points d'une même paire sont de part et d'autre de $d$.
- Aucun de ces points n'est sur $d$, donc aucun n'est un point rouge. En effet, la médiatrice de $[R_1R_2]$ coupe $d$ seulement au milieu $M$ de $[R_1R_2]$, et $MR_1 \le \frac{1}{2}$, donc $M$ n'est pas à distance $1$ de $R_1$.

On colorie en bleu $1966$ de ces $1980$ points. Avec les $45$ points rouges, cela fait $2011$ points, et le cercle de chaque point bleu passe par exactement deux points rouges.

Le plus grand nombre possible de points bleus est donc $1966$.

**Conclusion.** Avec des disques, le maximum est $2009$ points bleus. Avec des cercles, il est de $1966$ points bleus.
