---
id: "7320"
title: "Les dominos couchés de l'échiquier"
grade: 9
theme: coloring
difficulty: 5
duration_min: 40
tags: [damier, dominos, coloriage, comptage-par-colonnes]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En colle », stratégies de base, exercice 13 (donné à William Fujiwara)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

On recouvre entièrement un échiquier $8 \times 8$ avec $32$ dominos, chacun couvrant exactement deux cases voisines. Les cases de l'échiquier sont noires et blanches en alternance, comme d'habitude.

Un domino **couché** (horizontal) couvre deux cases de la même ligne : l'une blanche, l'autre noire. Il y a donc deux sortes de dominos couchés :

- ceux dont la case **blanche est à gauche** ;
- ceux dont la case **blanche est à droite**.

Montrer que ces deux sortes sont toujours en **nombre égal**, quel que soit le recouvrement choisi.

## Hints

1. Commence par essayer sur un petit échiquier, $2 \times 2$ ou $4 \times 4$, avec plusieurs recouvrements. Le résultat a-t-il l'air vrai ?
2. Ne compte pas tous les dominos couchés d'un coup : compte-les **colonne par colonne**, en repérant chacun par la colonne où se trouve sa case de gauche.
3. Notons $b_i$ le nombre de dominos couchés dont la case blanche est à gauche et se trouve dans la colonne $i$, et $n_i$ le même compte avec une case noire à gauche. Il s'agit de montrer que $\sum b_i = \sum n_i$.
4. Regarde d'abord la colonne $1$ toute seule. Combien contient-elle de cases blanches, de cases noires ? Quelles cases de cette colonne sont couvertes par un domino debout (vertical) ? Par un domino couché ?
5. Passe ensuite aux deux premières colonnes réunies, puis aux trois premières, et ainsi de suite.

## Solution

**Les notations.**

Numérotons les colonnes de $1$ à $8$, de gauche à droite. Pour chaque $i$ entre $1$ et $7$, posons

- $b_i$ : le nombre de dominos couchés dont la case **blanche** est à gauche, cette case étant dans la colonne $i$ ;
- $n_i$ : le nombre de dominos couchés dont la case **noire** est à gauche, cette case étant dans la colonne $i$.

Le nombre total de dominos couchés « blanc à gauche » vaut $b_1 + b_2 + \cdots + b_7$, et de même pour les autres. Nous allons montrer bien mieux que l'égalité des sommes : nous allons montrer que
$$b_i = n_i \qquad \text{pour chaque } i .$$

**La colonne 1.**

Une colonne de l'échiquier contient $8$ cases, dont $4$ blanches et $4$ noires.

Chaque case de la colonne $1$ est couverte soit par un domino debout entièrement contenu dans cette colonne, soit par un domino couché qui déborde sur la colonne $2$ (il ne peut pas déborder à gauche, il n'y a rien).

Un domino debout couvre deux cases voisines d'une même colonne : une blanche et une noire. Donc les dominos debout de la colonne $1$ couvrent **autant de blanches que de noires**.

Comme la colonne contient autant de blanches que de noires, il reste, après les dominos debout, **autant de cases blanches que de cases noires** couvertes par des dominos couchés partant de la colonne $1$. Autrement dit :
$$b_1 = n_1 .$$

**On passe à la colonne 2.**

Regardons maintenant les deux premières colonnes réunies : $16$ cases, dont $8$ blanches et $8$ noires.

Les dominos qui touchent ces deux colonnes sont de trois sortes :

- ceux entièrement contenus dedans (debout, ou couchés de la colonne $1$ vers la colonne $2$) : chacun couvre une blanche et une noire ;
- ceux qui partent de la colonne $2$ vers la colonne $3$ : ils ne couvrent qu'une seule case de notre bloc, la case de la colonne $2$.

Les premiers couvrent autant de blanc que de noir. Il reste donc, parmi les cases débordant vers la colonne $3$, autant de blanches que de noires :
$$b_2 = n_2 .$$

**Et ainsi de suite.**

Le même raisonnement s'applique au bloc formé des $i$ premières colonnes, pour tout $i$ :

- ce bloc contient $8i$ cases, moitié blanches, moitié noires ;
- tous les dominos entièrement contenus dans le bloc couvrent une case blanche et une case noire chacun ;
- les seuls autres dominos touchant le bloc sont les dominos couchés qui partent de la colonne $i$ et débordent sur la colonne $i+1$ ; chacun d'eux ne place qu'une case dans le bloc.

En retranchant, le nombre de cases blanches laissées par les dominos intérieurs est égal au nombre de cases noires laissées. Donc
$$b_i = n_i \qquad \text{pour tout } i \in \{1, \ldots, 7\} .$$

**Conclusion.**

En additionnant :
$$b_1 + b_2 + \cdots + b_7 = n_1 + n_2 + \cdots + n_7 ,$$
c'est-à-dire : il y a autant de dominos couchés « blanc à gauche » que de dominos couchés « blanc à droite ».

**Remarque.** On a prouvé un résultat plus fort que demandé : l'égalité est vraie **colonne par colonne**, pas seulement au total.

## Going further

1. Le résultat reste-t-il vrai sur un échiquier $2n \times 2n$ ? Et sur un rectangle $6 \times 8$ ?
2. Que peut-on dire des dominos **debout** selon que leur case blanche est en haut ou en bas ?
3. Sur un échiquier $8 \times 8$ privé de deux coins opposés, on ne peut pas placer $31$ dominos. Pourquoi ? (Le coloriage sert ici d'une autre façon.)
