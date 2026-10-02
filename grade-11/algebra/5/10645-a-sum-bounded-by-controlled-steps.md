---
id: "10645"
title: "Une somme bornée par des pas contrôlés"
grade: 11
theme: algebra
difficulty: 5
duration_min: 60
tags: [inegalite, somme-telescopique, valeur-absolue, majoration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 9, repris en Exercices Seniors, exercice 16 ; corrigé 2023-01_corrige-envoi-2.pdf. La solution ci-dessous remplace les doubles sommes du corrigé par des sommes télescopiques de carrés."
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Soient $b_1, \ldots, b_{2022}$ des réels positifs ou nuls tels que $b_1 + b_2 + \cdots + b_{2022} = 2$. Soient $a_0, a_1, \ldots, a_{2022}$ des réels tels que $a_0 = a_{2022} = 0$ et, pour tout $i$ compris entre $1$ et $2022$,

$$|a_i - a_{i-1}| \leqslant b_i$$

Montrer que

$$(a_0 + a_1)\,b_1 + (a_1 + a_2)\,b_2 + \cdots + (a_{2021} + a_{2022})\,b_{2022} \leqslant 2$$

## Hints

1. Imagine un marcheur qui part de $0$ et fait $2022$ pas : au pas numéro $i$, il avance ou recule d'au plus $b_i$. Pourquoi $a_i$ est-il au plus égal à $b_1 + \cdots + b_i$ ? Et au plus égal à $b_{i+1} + \cdots + b_{2022}$ ?
2. Note $B_i = b_1 + \cdots + b_i$. Vérifie que $(B_{i-1} + B_i)\,b_i = B_i^2 - B_{i-1}^2$. Que donne la somme de ces termes ?
3. Utilise la première majoration de $a_i$ tant que $B_i \leqslant 1$, et la seconde ensuite. Il reste à traiter avec soin le terme où l'on change de majoration.

## Solution

Notons $n = 2022$. Notons aussi $T_i = (a_{i-1} + a_i)\,b_i$ pour $i = 1, \ldots, n$ : il faut montrer que $T_1 + \cdots + T_n \leqslant 2$.

Posons $B_0 = 0$ et, pour $i \geqslant 1$, $B_i = b_1 + \cdots + b_i$. Posons aussi $C_i = 2 - B_i = b_{i+1} + \cdots + b_n$. Ainsi $B_n = 2$, $C_n = 0$, et $b_i = B_i - B_{i-1} = C_{i-1} - C_i$.

**Étape 1. Deux majorations de $a_i$.**

En partant de $a_0 = 0$ :

$$a_i = (a_1 - a_0) + (a_2 - a_1) + \cdots + (a_i - a_{i-1}) \leqslant b_1 + b_2 + \cdots + b_i = B_i$$

car chaque différence est au plus égale à sa valeur absolue, donc à $b_j$. De même, en partant de $a_n = 0$ :

$$a_i = (a_i - a_{i+1}) + \cdots + (a_{n-1} - a_n) \leqslant b_{i+1} + \cdots + b_n = C_i$$

**Étape 2. Deux majorations de $T_i$.**

Comme $b_i \geqslant 0$, on peut multiplier par $b_i$ sans changer le sens des inégalités. La première majoration donne

$$T_i \leqslant (B_{i-1} + B_i)\,b_i = (B_i + B_{i-1})(B_i - B_{i-1}) = B_i^2 - B_{i-1}^2$$

et la seconde donne

$$T_i \leqslant (C_{i-1} + C_i)\,b_i = (C_{i-1} + C_i)(C_{i-1} - C_i) = C_{i-1}^2 - C_i^2$$

Ces deux majorations sont faites pour être ajoutées : leurs sommes se simplifient.

**Étape 3. Où changer de majoration.**

Comme $B_0 = 0$ et $B_n = 2$, il existe un plus petit indice $m$ tel que $B_m > 1$, et $m \geqslant 1$. Posons

$$x = B_{m-1} \qquad \text{et} \qquad y = C_m = 2 - B_m$$

Par le choix de $m$, on a $0 \leqslant x \leqslant 1$ et $0 \leqslant y < 1$. De plus $b_m = B_m - B_{m-1} = 2 - x - y$.

**Étape 4. On découpe la somme en trois morceaux.**

- Pour $i < m$, la première majoration donne une somme qui se simplifie :
$$T_1 + \cdots + T_{m-1} \leqslant (B_1^2 - B_0^2) + \cdots + (B_{m-1}^2 - B_{m-2}^2) = B_{m-1}^2 - B_0^2 = x^2$$
- Pour $i > m$, la seconde majoration donne de même :
$$T_{m+1} + \cdots + T_n \leqslant (C_m^2 - C_{m+1}^2) + \cdots + (C_{n-1}^2 - C_n^2) = C_m^2 - C_n^2 = y^2$$
- Pour $i = m$, on majore $a_{m-1}$ par $B_{m-1} = x$ et $a_m$ par $C_m = y$ :
$$T_m \leqslant (x + y)\,b_m = (x + y)(2 - x - y)$$

(Si $m = 1$ ou $m = n$, l'un des deux premiers morceaux est vide et vaut $0$, ce qui ne change rien à la suite.)

**Étape 5. Le calcul final.**

En ajoutant les trois morceaux :

$$T_1 + \cdots + T_n \leqslant x^2 + y^2 + (x + y)(2 - x - y) = 2x + 2y - 2xy = 2 - 2(1 - x)(1 - y)$$

Or $1 - x \geqslant 0$ et $1 - y > 0$, donc $(1 - x)(1 - y) \geqslant 0$.

**Conclusion : la somme $(a_0 + a_1)\,b_1 + \cdots + (a_{2021} + a_{2022})\,b_{2022}$ est au plus égale à $2$.**

## Going further

Le nombre $2022$ ne joue aucun rôle : la même preuve marche avec $n$ réels $b_i$ de somme $2$. Peux-tu trouver des valeurs des $a_i$ et des $b_i$, par exemple avec $n = 2$, pour lesquelles la somme vaut exactement $2$ ?
