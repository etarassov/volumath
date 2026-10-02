---
id: "12653"
title: "Des nombres en cercle dont toutes les sommes de k voisins sont nulles"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, algorithme-d-euclide, cercle, somme, periodicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2022"
  reference: "2022-07_Enonce-Web-Test-4.pdf, exercice 2 (junior) ; corrigé 2022-04_Corrige-Web-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/07/Énoncé-Web-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2022-07_Enonce-Web-Test-4.pdf"
---

## Statement

Soit $n$ un entier tel que $n \geqslant 3$. Lucie dispose $n$ feuilles blanches en cercle, puis elle écrit un nombre réel sur chaque feuille.

Trouver tous les entiers $k$ tels que $1 \leqslant k \leqslant n$ pour lesquels la propriété suivante est vraie :

> Si au moins un des nombres écrits par Lucie n'est pas nul, alors il existe $k$ feuilles consécutives dont la somme des nombres n'est pas nulle.

## Hints

1. Pour $n = 4$ et $k = 2$, trouve des nombres, pas tous nuls, tels que la somme de deux feuilles voisines soit toujours nulle. Même question pour $n = 6$ et $k = 3$.
2. Quand $k$ et $n$ ont un diviseur commun $d \geqslant 2$, généralise ces exemples en découpant le cercle en blocs de $d$ feuilles consécutives.
3. Dans l'autre sens, suppose que toutes les sommes de $k$ feuilles consécutives sont nulles. Compare deux de ces sommes décalées d'une seule feuille. Que peux-tu dire des nombres écrits sur deux feuilles séparées par $k$ crans ?
4. Si avancer de $k$ crans ne change pas le nombre lu, et si avancer de $n$ crans non plus (on fait un tour complet), que se passe-t-il quand on avance de $n - k$ crans ? Pense à l'algorithme d'Euclide.

## Solution

On va montrer que **les entiers $k$ cherchés sont ceux qui sont premiers avec $n$**, c'est-à-dire tels que $\mathrm{PGCD}(k, n) = 1$.

**Les notations.** On numérote les feuilles de $1$ à $n$ en tournant dans le sens des aiguilles d'une montre, et l'on note $x_i$ le nombre écrit sur la feuille $i$. Comme les feuilles sont en cercle, après la feuille $n$ vient la feuille $1$ : on lit donc les numéros « en faisant des tours », c'est-à-dire que la feuille $n + 1$ est la feuille $1$, la feuille $n + 2$ est la feuille $2$, et ainsi de suite. Autrement dit, deux numéros qui diffèrent d'un multiple de $n$ désignent la même feuille.

Pour tout entier $a$, on note
$$S_a = x_{a+1} + x_{a+2} + \cdots + x_{a+k}$$
la somme des nombres écrits sur les $k$ feuilles qui suivent la feuille $a$. Ce sont toutes les sommes de $k$ feuilles consécutives. La propriété de l'énoncé dit : si toutes les sommes $S_a$ sont nulles, alors tous les nombres $x_i$ sont nuls.

**Étape 1 : si $k$ et $n$ ont un diviseur commun $d \geqslant 2$, la propriété est fausse.**

Soit $d \geqslant 2$ un diviseur commun de $k$ et de $n$. On appelle **motif** la suite de $d$ nombres
$$1, \; -1, \; 0, \; 0, \; \ldots, \; 0$$
(pour $d = 2$, le motif est simplement $1, -1$). En partant de la feuille $1$, Lucie écrit le motif sur les $d$ premières feuilles, puis de nouveau sur les $d$ suivantes, et ainsi de suite. Comme $d$ divise $n$, le cercle est formé de $n/d$ motifs complets, et le motif se raccorde bien quand on passe de la feuille $n$ à la feuille $1$.

Les nombres ne sont pas tous nuls. Prenons $k$ feuilles consécutives. Comme $d$ divise $k$, on peut les découper en $k/d$ groupes de $d$ feuilles consécutives. Or $d$ feuilles consécutives couvrent exactement une fois chaque position du motif : chaque groupe contient une fois $1$, une fois $-1$ et des $0$, donc sa somme est nulle. Ainsi toutes les sommes $S_a$ sont nulles, alors que les nombres ne sont pas tous nuls : la propriété est fausse pour ce $k$.

Par exemple, pour $n = 6$ et $k = 3$, Lucie écrit $1, -1, 0, 1, -1, 0$.

**Étape 2 : une première conséquence quand toutes les sommes sont nulles.**

Supposons maintenant que toutes les sommes $S_a$ sont nulles. Les sommes $S_{a-1}$ et $S_a$ ont presque tous leurs termes en commun :
$$S_{a-1} = x_a + x_{a+1} + \cdots + x_{a+k-1}, \qquad S_a = x_{a+1} + \cdots + x_{a+k-1} + x_{a+k}.$$
En faisant la différence, il ne reste que $S_a - S_{a-1} = x_{a+k} - x_a$. Comme les deux sommes sont nulles, on obtient
$$x_{a+k} = x_a \qquad \text{pour tout entier } a.$$

Disons qu'un entier $p$ est un **bon décalage** si $x_{a+p} = x_a$ pour tout entier $a$ : quand on avance de $p$ crans, on lit le même nombre. On vient de voir que $k$ est un bon décalage. Le nombre $n$ en est un aussi, puisque la feuille $a + n$ est la feuille $a$.

**Étape 3 : la différence de deux bons décalages est un bon décalage.**

Soient $p$ et $q$ deux bons décalages. Pour tout entier $a$, on applique la définition de $q$ au numéro $a - q$ : on obtient $x_{(a-q)+q} = x_{a-q}$, c'est-à-dire $x_{a-q} = x_a$. Puis on applique celle de $p$ au numéro $a - q$ :
$$x_{a + p - q} = x_{(a-q) + p} = x_{a-q} = x_a.$$
Donc $p - q$ est un bon décalage.

**Étape 4 : on descend jusqu'au $\mathrm{PGCD}$.** On part du couple $(n, k)$, formé de deux bons décalages. Tant que les deux nombres du couple sont différents, on remplace le plus grand par la différence des deux. C'est l'algorithme d'Euclide par soustractions. On remarque trois choses.

- Les nombres obtenus sont toujours des bons décalages, d'après l'étape 3.
- Le $\mathrm{PGCD}$ ne change pas : si $p > q$, les diviseurs communs de $p$ et $q$ sont exactement les diviseurs communs de $p - q$ et $q$. En effet, un nombre qui divise $p$ et $q$ divise leur différence, et un nombre qui divise $p - q$ et $q$ divise leur somme $p$.
- Les nombres restent des entiers strictement positifs et la somme des deux diminue à chaque fois : l'algorithme s'arrête. Il s'arrête sur un couple $(g, g)$, dont le $\mathrm{PGCD}$ vaut $g$.

Comme le $\mathrm{PGCD}$ n'a jamais changé, $g = \mathrm{PGCD}(n, k)$, et $g$ est un bon décalage.

Par exemple, pour $n = 7$ et $k = 3$ : $(7, 3) \to (4, 3) \to (1, 3) \to (1, 2) \to (1, 1)$.

**Étape 5 : si $\mathrm{PGCD}(k, n) = 1$, la propriété est vraie.**

Supposons $\mathrm{PGCD}(k, n) = 1$ et toutes les sommes $S_a$ nulles. D'après l'étape 4, $1$ est un bon décalage : $x_{a+1} = x_a$ pour tout $a$. Deux feuilles voisines portent donc le même nombre, et tous les nombres sont égaux à un même réel $c$. Mais alors
$$0 = S_0 = \underbrace{c + c + \cdots + c}_{k \text{ termes}} = kc,$$
et comme $k \geqslant 1$, on a $c = 0$. Tous les nombres sont nuls : la propriété est vraie.

**Conclusion.** La propriété est vraie **si et seulement si $k$ est premier avec $n$.** Par exemple, $k = 1$ convient toujours, et $k = n$ ne convient jamais, puisque $\mathrm{PGCD}(n, n) = n \geqslant 3$.

## Going further

- Le corrigé officiel conclut l'étape 5 autrement, avec le théorème de Bézout : quand $\mathrm{PGCD}(k, n) = 1$, il existe un entier $m$ tel que $km - 1$ soit un multiple de $n$. Avancer $m$ fois de $k$ crans revient alors à avancer d'un seul cran. L'algorithme d'Euclide utilisé ici est au fond la preuve de ce théorème.
- Pour $k = n$, la propriété dit : « si les nombres ne sont pas tous nuls, leur somme n'est pas nulle ». C'est évidemment faux, avec $1$, $-1$, $0$, …, $0$. L'étape 1 généralise cet exemple.
- Le commentaire des correcteurs note que beaucoup d'élèves ont tenté de distinguer des cas selon le signe des nombres, sans aboutir : il fallait voir le problème sous l'angle de l'arithmétique. Certains ont aussi cherché les $k$ qui conviennent pour tous les $n$ à la fois, alors que $n$ est fixé. Enfin, il fallait traiter les deux sens de l'équivalence.
