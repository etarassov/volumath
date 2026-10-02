---
id: "8164"
title: "Une suite où chaque terme vaut plus ou moins le précédent plus un"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [suites, telescopage, parite, minimum]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 83 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On construit une suite $(u_n)$ de nombres entiers relatifs de la façon suivante : on pose $u_0 = 0$, puis, pour chaque $n \geqslant 1$, on choisit $u_n$ de sorte que

$$|u_n| = |u_{n-1} + 1| .$$

À chaque étape il y a donc deux choix possibles, $u_n = u_{n-1}+1$ ou $u_n = -(u_{n-1}+1)$.

Quelle est la plus petite valeur que puisse prendre

$$\big|\,u_1 + u_2 + \cdots + u_{2017}\,\big| \ ?$$

## Hints

1. La condition porte sur des valeurs absolues, qui sont pénibles à manipuler. Élève-la au carré : que devient-elle ?
2. Tu obtiens $u_n^2 = u_{n-1}^2 + 2u_{n-1} + 1$. Additionne cette égalité pour $n$ allant de $1$ à $2018$ et regarde ce qui se télescope.
3. Tu devrais arriver à exprimer la somme cherchée uniquement en fonction de $u_{2018}$.
4. Quelle est la parité de $u_n$ ? Regarde les premiers termes.
5. Il reste à choisir $u_{2018}$ pour rendre la valeur absolue la plus petite possible, puis à construire une suite qui atteint ce choix.

## Solution

**Étape 1 : se débarrasser des valeurs absolues.**

Deux nombres ont la même valeur absolue si et seulement si ils ont le même carré. La relation $|u_n| = |u_{n-1}+1|$ équivaut donc à

$$u_n^2 = (u_{n-1}+1)^2 = u_{n-1}^2 + 2u_{n-1} + 1 .$$

**Étape 2 : sommer.**

Écrivons cette égalité pour $n = 1, 2, \ldots, 2018$ et additionnons. À gauche apparaît $u_1^2 + \cdots + u_{2018}^2$, à droite $u_0^2 + \cdots + u_{2017}^2$ plus le reste. Après simplification des termes communs :

$$u_{2018}^2 - u_0^2 = 2\left(u_0 + u_1 + \cdots + u_{2017}\right) + 2018 .$$

Comme $u_0 = 0$, en notant $S = u_1 + u_2 + \cdots + u_{2017}$ on obtient

$$u_{2018}^2 = 2S + 2018, \qquad \text{donc} \qquad S = \frac{u_{2018}^2 - 2018}{2} .$$

**Étape 3 : la parité de $u_{2018}$.**

Comme $u_n = \pm(u_{n-1}+1)$, les entiers $u_n$ et $u_{n-1}+1$ ont la même parité, donc $u_n$ et $u_{n-1}$ ont des parités **différentes**. Puisque $u_0 = 0$ est pair, $u_n$ a la parité de $n$. En particulier $u_{2018}$ est **pair**.

Écrivons $u_{2018} = 2m$ avec $m$ entier naturel (quitte à prendre $|u_{2018}|$). Alors

$$S = \frac{4m^2 - 2018}{2} = 2m^2 - 1009 .$$

**Étape 4 : minimiser.**

On cherche l'entier $m \geqslant 0$ qui rend $\left|2m^2 - 1009\right|$ le plus petit possible, c'est-à-dire $2m^2$ le plus proche possible de $1009$, donc $m^2$ le plus proche de $\text{504,5}$. Comme $22^2 = 484$ et $23^2 = 529$ :

- $m = 22$ donne $S = 968 - 1009 = -41$, donc $|S| = 41$ ;
- $m = 23$ donne $S = 1058 - 1009 = 49$ ;
- toute autre valeur de $m$ éloigne encore $2m^2$ de $1009$, donc donne $|S| > 49$.

Le minimum possible est donc $41$, **à condition qu'une suite atteigne $u_{2018} = 44$.**

**Étape 5 : une suite qui atteint $41$.**

Remarquons d'abord que si $u_{n-1} = 0$ on peut prendre $u_n = -1$, et que si $u_{n-1} = -1$ alors $|u_n| = |-1+1| = 0$, donc forcément $u_n = 0$. On peut donc faire osciller la suite entre $0$ et $-1$ :

$$u_0 = 0,\ u_1 = -1,\ u_2 = 0,\ u_3 = -1,\ \ldots$$

Faisons cela jusqu'au rang $1974$, qui est pair, donc $u_{1974} = 0$. Puis, pour $n = 1975, \ldots, 2018$, choisissons systématiquement $u_n = u_{n-1}+1$ : la suite monte de $1$ à chaque pas pendant $2018 - 1974 = 44$ étapes, et

$$u_{2018} = 0 + 44 = 44 .$$

Cette suite respecte bien la règle à chaque étape, et donne $m = 22$, donc $S = -41$.

$$\boxed{\ \text{La plus petite valeur possible de } |u_1 + \cdots + u_{2017}| \text{ est } 41.\ }$$

## Going further

L'idée qui débloque tout est de passer au carré : une relation avec des valeurs absolues, difficile à sommer, devient une relation entre $u_n^2$ et $u_{n-1}^2$ qui se télescope. La somme cherchée, qui semblait dépendre de $2017$ choix indépendants, ne dépend en fait que du tout dernier terme.

On voit au passage que $S$ est toujours de la forme $2m^2 - 1009$ : la somme ne peut pas prendre n'importe quelle valeur, seulement celles-là.
