---
id: "0329"
title: "Ranger les nombres de 1 à 100 en file"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, ordre, voisins, cas-extreme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 14, задача 1"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On veut écrire sur une ligne, les uns à la suite des autres, tous les entiers de $1$ à $100$, chacun une fois et une seule, de façon que **deux nombres écrits côte à côte diffèrent d'au plus $1$**.

De combien de façons peut-on le faire ?

## Hints

1. Ne commence pas par le début de la ligne, commence par un nombre particulier. Lequel des cent nombres a le moins de voisins possibles ?
2. Quels nombres peuvent être écrits à côté du nombre $1$ ? Attention, $0$ ne fait pas partie de la liste, et $1$ n'est écrit qu'une seule fois.
3. Dans une file de cent nombres, combien de voisins a un nombre placé au milieu ? Et un nombre placé à une extrémité ? Où le nombre $1$ est-il donc obligé de se trouver ?
4. Une fois $1$ placé, son voisin est forcé. Et le voisin suivant ? Continue de proche en proche.

## Solution

**L'idée : regarder le cas extrême, c'est-à-dire le plus petit nombre.**

**Étape 1. Le nombre $1$ n'a qu'un seul voisin possible.**

Un nombre $k$ peut être écrit à côté de $1$ seulement si $|1 - k| \leqslant 1$, c'est-à-dire si $k$ vaut $0$, $1$ ou $2$.

- $0$ ne fait pas partie des nombres à écrire ;
- $1$ n'est écrit qu'une seule fois, il ne peut pas être son propre voisin.

Il ne reste que $k = 2$ : **le seul nombre qui peut être voisin de $1$ est $2$.**

**Étape 2. Le nombre $1$ est forcément à une extrémité.**

Dans une file de cent nombres, un nombre placé à une des $98$ places du milieu a **deux** voisins, alors qu'un nombre placé à une des deux extrémités n'en a qu'**un**.

Comme $1$ ne peut avoir qu'un seul voisin possible, il ne peut pas occuper une place du milieu. Donc $1$ est à l'extrémité gauche ou à l'extrémité droite.

**Étape 3. Tout le reste est alors forcé.**

Plaçons $1$ à l'extrémité gauche. D'après l'étape 1, le deuxième nombre de la file est $2$.

Regardons maintenant le troisième nombre. C'est un voisin de $2$, donc il vaut $1$, $2$ ou $3$. Mais $1$ et $2$ sont déjà écrits. Donc c'est $3$.

On continue de proche en proche. Supposons que les $j$ premières places portent $1, 2, \ldots, j$ dans cet ordre. Le nombre de la place $j+1$ est un voisin de $j$, il vaut donc $j-1$, $j$ ou $j+1$ ; les deux premiers sont déjà écrits, donc c'est $j+1$.

La file est donc entièrement déterminée :
$$1,\ 2,\ 3,\ \ldots,\ 99,\ 100 .$$

Si l'on avait placé $1$ à l'extrémité droite, le même raisonnement, lu de droite à gauche, donne
$$100,\ 99,\ \ldots,\ 3,\ 2,\ 1 .$$

**Étape 4. Ces deux files conviennent bien.**

Dans chacune, deux nombres côte à côte sont deux entiers consécutifs : ils diffèrent exactement de $1$, ce qui est autorisé. Et chaque nombre de $1$ à $100$ y figure une fois et une seule.

**Réponse : il y a exactement $2$ façons de ranger les nombres, la file croissante $1, 2, \ldots, 100$ et la file décroissante $100, 99, \ldots, 1$.**

## Going further

1. Même question si l'on autorise deux nombres voisins à différer d'au plus $2$. Trouve-t-on encore seulement deux rangements ?
2. Même question qu'au départ, mais les cent nombres sont écrits **en cercle** au lieu d'être écrits en ligne. Combien de rangements y a-t-il alors ?
