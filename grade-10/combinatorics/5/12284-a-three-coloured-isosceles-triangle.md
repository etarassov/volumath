---
id: "12284"
title: "Un triangle isocèle aux trois couleurs"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [polygone-regulier, coloriage, triangle-isocele, double-comptage, parite, rotation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test de mai 2017"
  reference: "2017-10_ofm-2016-2017-test-mai.pdf, test du 3 mai 2017, exercice 6 (groupe A, élèves nés en 2001 ou avant) ; pas de corrigé publié, solution rédigée pour cette base. Les deux faits clés (chaque paire de sommets est dans exactement trois triangles isocèles, et le nombre de triangles isocèles tricolores est impair) ont été vérifiés par ordinateur pour tous les n premiers avec 6 jusqu'à 35"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mai.pdf"
---

## Statement

Soit $n$ un entier premier avec $6$, c'est-à-dire un entier qui n'est ni pair ni multiple de $3$. On colorie chaque sommet d'un polygone régulier à $n$ côtés en bleu, en vert ou en rouge, de sorte que le nombre de sommets bleus, le nombre de sommets verts et le nombre de sommets rouges soient tous les trois impairs.

Montrer qu'il existe un triangle isocèle dont les trois sommets sont des sommets du polygone, de trois couleurs différentes.

## Hints

1. Regarde les paires formées d'un sommet bleu et d'un sommet vert. Combien y en a-t-il, et ce nombre est-il pair ou impair ?
2. Pour chaque paire bleu-vert et chaque triangle isocèle qui contient cette paire, fais une croix. Compte les croix de deux façons : paire par paire, puis triangle par triangle.
3. Montre que deux sommets $P$ et $Q$ du polygone sont toujours dans exactement trois triangles isocèles : un dont le sommet principal est $P$, un dont c'est $Q$, et un dont c'est le troisième sommet. C'est là que sert l'hypothèse sur $n$.
4. Combien de paires bleu-vert contient un triangle tricolore ? Et un triangle qui n'est pas tricolore ?

## Solution

**Notations.** On note $\Gamma$ le cercle qui passe par les sommets du polygone et $O$ son centre. Comme $n \geqslant 3$ n'est ni pair ni multiple de $3$, on a $n \geqslant 5$. Passer d'un sommet à son voisin s'appelle un **pas** : cela correspond à un angle au centre de $\frac{360°}{n}$. Une rotation de centre $O$ qui fait avancer chaque sommet d'un certain nombre de pas, toujours dans le même sens, envoie le polygone sur lui-même et conserve les longueurs.

Un triangle $XYZ$ tel que $XY = XZ$ est dit **isocèle en $X$**. Un triangle isocèle en deux de ses sommets a ses trois côtés égaux : il est équilatéral.

Dans toute la suite, « triangle » veut dire triangle dont les trois sommets sont des sommets du polygone. Trois points distincts d'un cercle ne sont jamais alignés, donc ce sont de vrais triangles.

### Étape 1. Aucun triangle n'est équilatéral

Supposons que trois sommets $S$, $S'$, $S''$ forment un triangle équilatéral. Le centre $O$ de son cercle circonscrit est aussi le point de concours de ses médianes, il est donc à l'intérieur du triangle. Les triangles $OSS'$, $OS'S''$ et $OS''S$ ont leurs trois côtés égaux deux à deux (deux rayons et un côté du triangle équilatéral), donc leurs angles en $O$ sont égaux. Ces trois angles font le tour du point $O$, donc chacun vaut $120°$.

L'arc de $\Gamma$ qui va de $S$ à $S'$ sans passer par $S''$ correspond donc à un angle au centre de $120°$. Il est formé d'un nombre entier $j$ de pas, donc $j \times \frac{360°}{n} = 120°$, ce qui donne $n = 3j$. C'est impossible, car $n$ n'est pas un multiple de $3$.

### Étape 2. Deux sommets sont dans exactement trois triangles isocèles

Soient $P$ et $Q$ deux sommets distincts du polygone. Un premier fait servira deux fois :

**Il n'y a pas deux sommets diamétralement opposés.** En effet, si $V$ et $V'$ étaient deux sommets diamétralement opposés, l'arc qui va de $V$ à $V'$ serait un demi-cercle, d'angle au centre $180°$. S'il est formé de $j$ pas, on a $j \times \frac{360°}{n} = 180°$, donc $n = 2j$ serait pair.

*a) Exactement un triangle isocèle en $P$ contient $Q$.* En tournant dans un certain sens, on va de $P$ à $Q$ en $k$ pas. Soit $Q'$ le sommet obtenu en faisant $k$ pas depuis $P$ dans l'autre sens. La rotation de centre $O$ qui fait avancer chaque sommet de $k$ pas dans ce second sens envoie $Q$ sur $P$ et $P$ sur $Q'$, donc $QP = PQ'$.

On a $Q' \neq Q$ : sinon $Q$ et $Q'$ seraient le même point, que l'on atteint depuis $P$ en $k$ pas dans un sens comme dans l'autre, et le tour complet compterait $2k$ pas, c'est-à-dire $n = 2k$, ce qui est impossible. Le triangle $PQQ'$ est donc isocèle en $P$.

C'est le seul. Si $PQT$ est isocèle en $P$, le point $T$ est à la fois sur $\Gamma$ et sur le cercle de centre $P$ et de rayon $PQ$. Ces deux cercles n'ont pas le même centre, donc ils ont au plus deux points communs. Comme $Q$ et $Q'$ sont deux points communs, et que $T \neq Q$, on a $T = Q'$.

*b) Exactement un triangle isocèle en $Q$ contient $P$.* C'est le même raisonnement, en échangeant les rôles de $P$ et de $Q$.

*c) Exactement un triangle isocèle en son troisième sommet contient $P$ et $Q$.* Les deux arcs de $\Gamma$ qui vont de $P$ à $Q$ comptent ensemble $n$ pas. Comme $n$ est impair, l'un d'eux compte un nombre pair de pas, disons $2m$ avec $m \geqslant 1$. Soit $T$ le sommet situé au milieu de cet arc, à $m$ pas de $P$ et à $m$ pas de $Q$. La rotation de centre $O$ qui fait avancer chaque sommet de $m$ pas, dans le sens qui va de $P$ vers $Q$ le long de cet arc, envoie $P$ sur $T$ et $T$ sur $Q$, donc $PT = TQ$. Le triangle $PQT$ est isocèle en $T$.

C'est le seul. Si un sommet $T'$ vérifie $T'P = T'Q$, il est sur la médiatrice de $[PQ]$. Cette droite passe par $O$, puisque $OP = OQ$, donc elle coupe $\Gamma$ en deux points diamétralement opposés. D'après le fait démontré plus haut, un seul de ces deux points peut être un sommet du polygone, et c'est $T$. Donc $T' = T$.

*Conclusion de l'étape 2.* Un triangle isocèle qui contient $P$ et $Q$ est isocèle en $P$, en $Q$ ou en son troisième sommet. D'après l'étape 1, il n'est pas équilatéral, donc il n'est isocèle qu'en un seul de ses sommets. Les triangles isocèles qui contiennent $P$ et $Q$ se répartissent donc en trois groupes sans élément commun, et chaque groupe contient exactement un triangle d'après a), b) et c). **La paire $\{P, Q\}$ est dans exactement trois triangles isocèles.**

### Étape 3. On compte les croix de deux façons

On note $b$ le nombre de sommets bleus et $v$ le nombre de sommets verts. Ce sont deux nombres impairs. On appelle **paire bleu-vert** un ensemble de deux sommets, l'un bleu et l'autre vert. Il y en a $b \times v$, un produit de deux nombres impairs, donc un nombre impair.

Pour chaque paire bleu-vert et chaque triangle isocèle qui contient cette paire, on fait une croix. Soit $N$ le nombre total de croix.

- *Paire par paire.* D'après l'étape 2, chaque paire bleu-vert est dans exactement trois triangles isocèles. Donc $N = 3 \times b \times v$, qui est **impair**.
- *Triangle par triangle.* Un triangle isocèle reçoit autant de croix qu'il contient de paires bleu-vert.
  - S'il est tricolore, il contient exactement une paire bleu-vert : son sommet bleu avec son sommet vert.
  - S'il n'a aucun sommet bleu, ou aucun sommet vert, il n'en contient aucune.
  - Sinon, il a un sommet bleu, un sommet vert, et son troisième sommet n'est pas rouge puisque le triangle n'est pas tricolore. Il a donc deux sommets bleus et un vert, ou un bleu et deux verts. Dans les deux cas, il contient exactement deux paires bleu-vert.

  Ainsi, si $t$ désigne le nombre de triangles isocèles tricolores, $N$ est égal à $t$ plus une somme de $0$ et de $2$, c'est-à-dire à $t$ plus un nombre pair.

Comme $N$ est impair, $t$ est impair. En particulier $t \geqslant 1$.

**Conclusion.** Il existe au moins un triangle isocèle dont les trois sommets sont de trois couleurs différentes. On a même montré que le nombre de tels triangles est impair.

## Going further

1. On n'a pas utilisé l'hypothèse sur le nombre de sommets rouges. Montre qu'elle découle en fait des deux autres.
2. En utilisant l'étape 2, montre que le polygone possède exactement $\frac{n(n-1)}{2}$ triangles isocèles.
3. Pour $n = 9$, trouve une paire de sommets qui n'est que dans un seul triangle isocèle. Pourquoi la démonstration ne marche-t-elle plus ?
