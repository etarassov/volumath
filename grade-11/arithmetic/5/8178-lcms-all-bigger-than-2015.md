---
id: "8178"
title: "Des PPCM tous plus grands que 2015"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [ppcm, multiples, partie-entiere, denombrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 60 (trois étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On considère $n$ entiers $a_1, a_2, \ldots, a_n$ compris entre $1$ et $2015$ tels que le PPCM de deux quelconques d'entre eux soit toujours **strictement supérieur à $2015$**.

Montrer que

$$\frac{1}{a_1} + \frac{1}{a_2} + \cdots + \frac{1}{a_n} \ <\ 2 .$$

## Hints

1. Commence par une remarque facile : les $a_i$ sont-ils forcément distincts ? Que vaut le PPCM d'un nombre avec lui-même ?
2. Pour chaque $i$, considère l'ensemble des multiples de $a_i$ qui sont inférieurs ou égaux à $2015$. Combien y en a-t-il ?
3. Montre que ces ensembles, pour des indices différents, n'ont aucun élément commun. Que serait un élément commun à deux d'entre eux ?
4. Tu obtiens une inégalité sur la somme des $\left\lfloor \dfrac{2015}{a_i} \right\rfloor$. Remplace la partie entière par une minoration simple.
5. Il te manquera une dernière information : combien vaut $n$ au maximum ?

## Solution

Notons $N = 2015$ pour alléger.

**Étape 1 : les $a_i$ sont deux à deux distincts.**

Si l'on avait $a_i = a_j$ avec $i \neq j$, leur PPCM vaudrait $a_i$, qui est au plus $N$ : cela contredirait l'hypothèse. Les $n$ nombres $a_1, \ldots, a_n$ sont donc deux à deux distincts, et comme ils vivent tous dans $\{1, 2, \ldots, N\}$,

$$n \ \leqslant\ N .$$

**Étape 2 : des paquets de multiples, deux à deux disjoints.**

Pour chaque $i$, notons

$$M_i = \{\, x \ :\ 1 \leqslant x \leqslant N \ \text{ et } \ a_i \text{ divise } x \,\} .$$

Les éléments de $M_i$ sont $a_i, 2a_i, 3a_i, \ldots$, tant qu'ils ne dépassent pas $N$, donc

$$\#M_i = \left\lfloor \frac{N}{a_i} \right\rfloor .$$

Montrons que ces ensembles sont **deux à deux disjoints**. Soit $x$ un élément commun à $M_i$ et $M_j$ avec $i \neq j$. Alors $a_i$ et $a_j$ divisent tous les deux $x$, donc leur PPCM divise $x$ :

$$\mathrm{PPCM}(a_i, a_j) \ \leqslant\ x \ \leqslant\ N .$$

Cela contredit l'hypothèse. Donc $M_i \cap M_j = \varnothing$.

Tous ces ensembles sont contenus dans $\{1, 2, \ldots, N\}$, qui compte $N$ éléments. En additionnant leurs tailles :

$$\sum_{i=1}^{n} \left\lfloor \frac{N}{a_i} \right\rfloor \ \leqslant\ N .$$

**Étape 3 : enlever la partie entière.**

Pour tout réel $y$, on a $\lfloor y \rfloor > y - 1$. Donc

$$\sum_{i=1}^{n}\left(\frac{N}{a_i} - 1\right) \ <\ \sum_{i=1}^{n}\left\lfloor \frac{N}{a_i}\right\rfloor \ \leqslant\ N ,$$

c'est-à-dire

$$N \sum_{i=1}^{n} \frac{1}{a_i} \ -\ n \ <\ N, \qquad \text{donc} \qquad \sum_{i=1}^{n} \frac{1}{a_i} \ <\ 1 + \frac{n}{N} .$$

**Étape 4 : conclure.**

D'après l'étape 1, $n \leqslant N$, donc $\dfrac{n}{N} \leqslant 1$ et

$$\sum_{i=1}^{n} \frac{1}{a_i} \ <\ 1 + 1 = 2 .$$

$$\boxed{\ \frac{1}{a_1} + \cdots + \frac{1}{a_n} < 2\ }$$

## Going further

L'idée centrale est de transformer une somme de fractions, difficile à majorer directement, en un décompte d'entiers : à chaque $a_i$ on associe ses multiples jusqu'à $2015$, et l'hypothèse sur les PPCM garantit que ces paquets ne se chevauchent pas. Comme il n'y a que $2015$ entiers disponibles, les paquets ne peuvent pas être trop gros, donc les $a_i$ ne peuvent pas être trop petits.

La borne $2$ est confortable. Voici une famille qui vérifie l'hypothèse : prenons tous les entiers de $1008$ à $2015$. Deux d'entre eux, $a < b$, vérifient $a < b < 2a$, donc $b$ n'est pas un multiple de $a$ ; leur PPCM est un multiple de $a$ strictement plus grand que $a$, donc au moins $2a > 2015$. La somme des inverses vaut alors

$$\frac{1}{1008} + \frac{1}{1009} + \cdots + \frac{1}{2015} \approx \text{0,69} ,$$

bien loin de $2$. Déterminer la plus grande valeur possible de la somme est une question nettement plus difficile.
