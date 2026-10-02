---
id: "11802"
title: "Des produits de 1 et de −1 qui font 1010"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [parite, invariant, changement-de-signe]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 3 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Chacun des nombres ci-dessous vaut soit $1$, soit $-1$.

1. Peut-on choisir $2021$ nombres $a_0, a_1, \ldots, a_{2020}$, valant chacun $1$ ou $-1$, de sorte que
$$a_0 a_1 + a_1 a_2 + a_2 a_3 + \cdots + a_{2019} a_{2020} + a_{2020} a_0 = 1010 \;?$$

2. Peut-on choisir $2020$ nombres $a_1, a_2, \ldots, a_{2020}$, valant chacun $1$ ou $-1$, de sorte que
$$a_1 a_2 + a_2 a_3 + \cdots + a_{2019} a_{2020} + a_{2020} a_1 = 1010 \;?$$

Dans les deux cas, on fait le tour : chaque nombre est multiplié par le suivant, et le dernier par le premier.

## Hints

1. Que vaut le produit de deux nombres égaux à $1$ ou $-1$ ? Combien de termes la somme de la question 1 contient-elle ?
2. Question 1 : regarde la parité de la somme.
3. Question 2 : la parité ne suffit plus, car $2020$ et $1010$ sont pairs. Appelle $N$ le nombre de produits égaux à $-1$ et exprime la somme en fonction de $N$.
4. Un produit $a_i a_{i+1}$ vaut $-1$ exactement quand on passe d'un signe à l'autre. En faisant le tour complet, on revient au point de départ : combien de fois a-t-on pu changer de signe ?

## Solution

Le produit de deux nombres valant $1$ ou $-1$ vaut encore $1$ ou $-1$ : il vaut $1$ quand les deux nombres sont égaux, et $-1$ quand ils sont opposés.

**Question 1.** La somme contient $2021$ produits : $a_0 a_1$, $a_1 a_2$, ..., $a_{2019} a_{2020}$ (cela fait $2020$ produits), plus le dernier $a_{2020} a_0$. Chacun vaut $1$ ou $-1$, c'est donc un nombre impair.

Une somme de $2021$ nombres impairs est impaire, puisque $2021$ est impair. Or $1010$ est pair. La réponse est donc **non**.

**Question 2.** Cette fois la somme contient $2020$ produits, un nombre pair : la somme est paire, comme $1010$, et l'argument précédent ne conclut pas. Il faut compter plus finement.

Supposons qu'on ait trouvé de tels nombres. Appelons $N$ le nombre de produits égaux à $-1$. Les $2020 - N$ autres valent $1$, donc

$$a_1 a_2 + \cdots + a_{2020} a_1 = (2020 - N) - N = 2020 - 2N .$$

L'égalité $2020 - 2N = 1010$ donne $2N = 1010$, soit $N = 505$, qui est **impair**.

Montrons au contraire que $N$ est forcément pair. Parcourons la liste

$$a_1,\; a_2,\; a_3,\; \ldots,\; a_{2020},\; a_1 .$$

Un produit de deux voisins vaut $-1$ exactement quand on change de signe en passant de l'un à l'autre. Donc $N$ est le nombre de changements de signe le long de cette liste. Or la liste commence et finit par le même nombre $a_1$. Chaque changement de signe fait passer du signe de $a_1$ au signe opposé ou l'inverse ; pour revenir au signe de départ, il faut en avoir fait un nombre pair (on alterne : après un changement on est sur le signe opposé, après deux on est revenu, après trois on est de nouveau sur le signe opposé, et ainsi de suite).

Donc $N$ est pair, ce qui contredit $N = 505$. La réponse est encore **non**.

**Conclusion.** Dans les deux cas, c'est impossible : à la question 1 à cause de la parité de la somme, à la question 2 parce que le nombre de produits égaux à $-1$ est toujours pair.

## Going further

Avec $n$ nombres valant $1$ ou $-1$ disposés en cercle, l'argument montre que la somme vaut $n - 2N$ avec $N$ pair. Quelles sont toutes les valeurs possibles de la somme ? Vérifie que ce sont exactement les entiers $s$ compris entre $-n$ et $n$ tels que $n - s$ soit un multiple de $4$.
