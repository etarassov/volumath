---
id: "8128"
title: "Quand n+1 nombres pèsent toujours plus lourd que les n autres"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, principe-de-l-extremum, somme]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Combinatoire – Principe de l'extremum », exercice 4"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On se donne $2n+1$ nombres réels. On suppose que, quels que soient les $n+1$ nombres que l'on choisit parmi eux, leur somme est strictement plus grande que la somme des $n$ nombres restants.

Montrer que tous ces nombres sont strictement positifs.

## Hints

1. L'hypothèse est vraie pour **tous** les choix possibles. Rien ne t'oblige à en utiliser beaucoup : un seul choix bien fait peut suffire.
2. Commence par ranger les $2n+1$ nombres dans l'ordre croissant. Lequel suffit-il alors de traiter ?
3. Applique l'hypothèse au choix des $n+1$ **plus petits**.
4. Fais passer tous les termes sauf le plus petit du même côté, et regroupe-les deux par deux astucieusement.

## Solution

**Ranger les nombres.**

Notons les $2n+1$ nombres $a_1, a_2, \ldots, a_{2n+1}$, rangés dans l'ordre croissant :

$$a_1 \leq a_2 \leq \cdots \leq a_{2n+1}.$$

Il suffit de montrer que $a_1 > 0$ : tous les autres lui sont supérieurs ou égaux, donc ils seront eux aussi strictement positifs.

**Le bon choix.**

Appliquons l'hypothèse au choix des $n+1$ plus petits nombres, c'est-à-dire $a_1, a_2, \ldots, a_{n+1}$. Les $n$ restants sont $a_{n+2}, \ldots, a_{2n+1}$, et l'hypothèse donne

$$a_1 + a_2 + \cdots + a_{n+1} > a_{n+2} + a_{n+3} + \cdots + a_{2n+1}.$$

**Le regroupement.**

Faisons passer $a_2, \ldots, a_{n+1}$ à droite :

$$a_1 > \left(a_{n+2} + a_{n+3} + \cdots + a_{2n+1}\right) - \left(a_2 + a_3 + \cdots + a_{n+1}\right).$$

Il y a $n$ termes dans chaque parenthèse. Apparions-les dans l'ordre :

$$a_1 > (a_{n+2} - a_2) + (a_{n+3} - a_3) + \cdots + (a_{2n+1} - a_{n+1}).$$

**Chaque parenthèse est positive.**

Regardons une parenthèse quelconque : elle est de la forme $a_{n+1+k} - a_{k+1}$, pour $k$ allant de $1$ à $n$. Comme $n \geq 1$, on a $n+1+k > k+1$, et la suite est croissante, donc

$$a_{n+1+k} - a_{k+1} \geq 0.$$

Toutes les parenthèses sont donc positives ou nulles, et leur somme aussi.

**Conclusion.**

$$a_1 > 0.$$

Le plus petit des $2n+1$ nombres est strictement positif, donc **tous les nombres sont strictement positifs**.
