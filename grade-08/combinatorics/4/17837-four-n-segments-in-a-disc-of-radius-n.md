---
id: "17837"
title: "4n segments dans un disque de rayon n"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, projection, pythagore, segments, disque, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, jeudi matin, « Le principe des tiroirs » (Margaret Bilu), exercice 10, p.72 ; solution p.74. La solution imprimée dit « quitte à faire une rotation » là où il suffit d'échanger les deux axes, et passe vite sur le fait que des projections qui ne se touchent pas laissent des trous entre elles."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $n \ge 1$ un entier. On a tracé $4n$ segments de longueur $1$ à l'intérieur d'un disque de rayon $n$. Le plan est muni d'un repère orthonormé.

Montrer qu'il existe une droite parallèle à l'un des deux axes du repère qui coupe au moins deux de ces segments.

## Hints

1. Une droite verticale coupe deux segments exactement quand les « ombres » de ces deux segments sur l'axe des abscisses ont un point commun. On appelle ombre, ou projection, l'ensemble des abscisses des points du segment.
2. Pour un segment, notez $a$ la longueur de son ombre sur l'axe des abscisses et $b$ celle de son ombre sur l'axe des ordonnées. Que vaut $a^2 + b^2$ ?
3. Comme $a$ et $b$ sont entre $0$ et $1$, comparez $a$ et $a^2$. Déduisez-en que $a + b \ge 1$.
4. Les ombres sur l'axe des abscisses sont toutes dans un intervalle de longueur $2n$. Que se passe-t-il si leurs longueurs ont une somme d'au moins $2n$ ?

## Solution

Numérotons les segments de $1$ à $4n$.

**Les ombres.** Pour le segment numéro $i$, appelons **ombre horizontale** l'ensemble des abscisses de ses points : c'est un intervalle de l'axe des abscisses (réduit à un point si le segment est vertical). Notons $a_i$ sa longueur. De même, l'**ombre verticale** est l'ensemble des ordonnées de ses points, de longueur $b_i$.

L'idée est la suivante : si les ombres horizontales de deux segments ont un point commun d'abscisse $x_0$, alors la droite verticale d'équation $x = x_0$ coupe ces deux segments. Elle est parallèle à l'axe des ordonnées. De même avec les ombres verticales et une droite horizontale.

**Étape 1 : $a_i + b_i \ge 1$.** Si le segment n'est ni horizontal ni vertical, il est l'hypoténuse d'un triangle rectangle dont les deux autres côtés, parallèles aux axes, mesurent $a_i$ et $b_i$. Par le théorème de Pythagore,

$$a_i^2 + b_i^2 = 1 .$$

C'est encore vrai si le segment est horizontal ($a_i = 1$, $b_i = 0$) ou vertical ($a_i = 0$, $b_i = 1$). En particulier $a_i$ et $b_i$ sont entre $0$ et $1$. Or un nombre $x$ compris entre $0$ et $1$ vérifie $x^2 = x \times x \le x \times 1 = x$. Donc

$$a_i + b_i \ge a_i^2 + b_i^2 = 1 .$$

**Étape 2 : un des deux axes.** En ajoutant ces $4n$ inégalités,

$$(a_1 + a_2 + \cdots + a_{4n}) + (b_1 + b_2 + \cdots + b_{4n}) \ge 4n .$$

L'une des deux sommes entre parenthèses est donc au moins égale à $2n$ (sinon le total serait plus petit que $4n$). Quitte à échanger le rôle des deux axes, supposons que

$$a_1 + a_2 + \cdots + a_{4n} \ge 2n .$$

**Étape 3 : deux ombres se touchent.** Tous les segments sont dans le disque de rayon $n$. Si son centre a pour abscisse $c$, toutes les ombres horizontales sont dans l'intervalle $[c - n, c + n]$, de longueur $2n$.

Supposons que deux ombres horizontales n'aient jamais de point commun. Rangeons-les de gauche à droite. Entre deux ombres consécutives, il y a alors un trou de longueur strictement positive, puisqu'elles ne se touchent pas. Les ombres et les trous tiennent tous dans l'intervalle de longueur $2n$, donc

$$a_1 + a_2 + \cdots + a_{4n} < 2n ,$$

ce qui contredit l'étape 2. Il existe donc deux segments dont les ombres horizontales ont un point commun, d'abscisse $x_0$.

**Conclusion :** la droite d'équation $x = x_0$, parallèle à l'axe des ordonnées, coupe ces deux segments. (Si on a échangé les axes à l'étape 2, c'est une droite parallèle à l'axe des abscisses qui convient.)

## Going further

L'inégalité $a_i + b_i \ge 1$ se voit aussi sans calcul : dans le triangle rectangle, aller tout droit le long de l'hypoténuse est plus court que suivre les deux autres côtés. Cette remarque marche pour un segment de n'importe quelle longueur $\ell$, et donne $a + b \ge \ell$.

On en déduit une version plus générale, avec la même preuve : si des segments de longueurs quelconques sont tracés dans un disque de rayon $n$, et que **la somme de leurs longueurs** est au moins $4n$, alors une droite parallèle à l'un des axes coupe au moins deux d'entre eux.
