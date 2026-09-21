---
id: "8039"
title: "Uniquement les chiffres 0, 1, 2 et 6"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, bijection, base quatre, numeration, chiffres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, « La muraille », exercice 33 (une étoile), résolu par Thomas Soulignac et Auguste de Lambilly"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

On écrit dans l'ordre croissant tous les entiers naturels dont l'écriture décimale ne comporte
que les chiffres $0$, $1$, $2$ et $6$. La liste commence donc par

$$0,\quad 1,\quad 2,\quad 6,\quad 10,\quad 11,\quad 12,\quad 16,\quad 20,\quad \ldots$$

1. À quelle position se trouve l'entier $2016$ ?
2. Quel entier se trouve à la $2016^{\text{e}}$ position ?

*(Le nombre $0$ occupe la première position.)*

## Hints

1. Il y a exactement quatre chiffres autorisés. Ce nombre $4$ doit te faire penser à quelque
   chose.
2. Remplace chaque $6$ par un $3$. Quelle liste obtiens-tu ? L'ordre est-il préservé ?
3. Les entiers dont l'écriture décimale n'utilise que $0$, $1$, $2$ et $3$, rangés dans
   l'ordre : si tu lis ces écritures **en base $4$**, que lis-tu ?
4. Il ne reste plus qu'à convertir : $2013$ lu en base $4$ pour la première question, et $2015$
   écrit en base $4$ pour la seconde.

## Solution

**L'idée : remplacer $6$ par $3$.** Dans chaque nombre de la liste, remplaçons le chiffre $6$
par le chiffre $3$. On obtient exactement la liste des entiers dont l'écriture décimale
n'utilise que les chiffres $0$, $1$, $2$ et $3$ :

$$0,\quad 1,\quad 2,\quad 3,\quad 10,\quad 11,\quad 12,\quad 13,\quad 20,\quad \ldots$$

Cette transformation conserve l'ordre. En effet, pour comparer deux entiers, on compare
d'abord leur nombre de chiffres, puis leurs chiffres de gauche à droite ; or la substitution
$0 \to 0$, $1 \to 1$, $2 \to 2$, $6 \to 3$ ne change pas le nombre de chiffres et respecte
l'ordre des chiffres, puisque $0 < 1 < 2 < 3$ comme $0 < 1 < 2 < 6$.

**On lit ces écritures en base $4$.** Une suite de chiffres pris parmi $0$, $1$, $2$, $3$ est
exactement une écriture en base $4$. Et lire dans l'ordre croissant toutes les écritures en
base $4$, c'est lire $0$, $1$, $2$, $3$, $4$, $5$, $\ldots$

Autrement dit :

> **le nombre en position $k$ de notre liste s'obtient en écrivant $k - 1$ en base $4$, puis
> en remplaçant chaque chiffre $3$ par un $6$.**

### 1. La position de $2016$

Remplaçons le $6$ par un $3$ : on obtient l'écriture $2013$. Lisons-la en base $4$ :

$$2 \times 4^3 + 0 \times 4^2 + 1 \times 4^1 + 3 = 2 \times 64 + 0 + 4 + 3 = 135 .$$

Le nombre $2016$ est donc le nombre d'indice $135$ en comptant à partir de $0$.

**L'entier $2016$ occupe la $136^{\text{e}}$ position.**

### 2. Le nombre en position $2016$

Il faut écrire $2016 - 1 = 2015$ en base $4$. Divisions successives par $4$ :

$$2015 = 4 \times 503 + 3, \quad 503 = 4 \times 125 + 3, \quad 125 = 4 \times 31 + 1,$$

$$31 = 4 \times 7 + 3, \quad 7 = 4 \times 1 + 3, \quad 1 = 4 \times 0 + 1 .$$

En lisant les restes de bas en haut :

$$2015 = \overline{133133}^{\,4} .$$

*(Contrôle : $1024 + 3 \times 256 + 3 \times 64 + 16 + 3 \times 4 + 3 = 1024 + 768 + 192 + 16 + 12 + 3 = 2015$.)*

Il ne reste qu'à remplacer chaque $3$ par un $6$ :

**Le nombre en $2016^{\text{e}}$ position est $166\,166$.**

## Going further

Le même procédé marche avec n'importe quel ensemble de chiffres autorisés : si l'on s'en
autorise $b$, la liste est une copie de la numération en base $b$, à condition que $0$ fasse
partie des chiffres autorisés et que l'on respecte leur ordre.

Si $0$ n'est **pas** autorisé, tout change : la liste des entiers n'utilisant que les chiffres
$1$ et $2$, par exemple, n'est plus une base mais ce qu'on appelle une numération bijective, et
le comptage se fait longueur par longueur ($2$ nombres à un chiffre, $4$ à deux chiffres, $8$ à
trois chiffres, et ainsi de suite).
