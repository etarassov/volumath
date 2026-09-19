---
id: "0331"
title: "Des nombres écrits en cercle"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [moyenne, inegalites, cas-extreme, demonstration]
adapted_from: null
created: 2026-09-18
source:
  name: "Математический кружок (8–9 класс), первое полугодие, сост. Е. А. Асташов, Д. А. Удимов, МГУ, 2015"
  reference: "AU.pdf, листок 14, задача 3"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU.pdf"
---

## Statement

On écrit plusieurs nombres en cercle (au moins trois). Chaque nombre a donc exactement deux voisins.

1. Les nombres écrits sont des entiers naturels, et chacun d'eux est **inférieur ou égal à l'un au moins de ses deux voisins**. Montrer que deux au moins de ces nombres sont égaux.
2. Les nombres écrits sont des nombres quelconques, et chacun d'eux est **égal à la moyenne de ses deux voisins**. Montrer qu'ils sont alors tous égaux.

*Rappel : la moyenne de deux nombres $a$ et $b$ est le nombre $\dfrac{a+b}{2}$.*

## Hints

1. Les nombres sont en nombre fini : il y en a donc un qui est le plus grand de tous. C'est celui-là qu'il faut regarder. (S'il y en a plusieurs de même valeur maximale, choisis-en un.)
2. **Question 1.** Appelle $M$ ce plus grand nombre. L'hypothèse donne $M \leqslant c$ pour un de ses voisins $c$. Mais que sais-tu de $c$ par rapport à $M$ ?
3. **Question 2.** Appelle $M$ le plus grand nombre et $b$, $c$ ses deux voisins. Écris l'égalité de l'énoncé. Que se passerait-il si $b$ était strictement plus petit que $M$ ?
4. **Question 2, la fin.** Tu as montré que les deux voisins d'un plus grand nombre valent eux aussi $M$. Recommence maintenant avec ces voisins, et fais le tour du cercle.

## Solution

**L'idée commune aux deux questions : regarder le plus grand des nombres écrits.**

Il y a un nombre fini de nombres écrits, donc l'un d'eux est supérieur ou égal à tous les autres. Notons $M$ sa valeur, et choisissons une position du cercle où $M$ est écrit. Le point important est que
$$\text{tout nombre écrit au cercle est} \leqslant M .$$

### Question 1

Notons $b$ et $c$ les deux voisins de la position choisie.

L'hypothèse dit que le nombre $M$ est inférieur ou égal à l'un au moins de ses voisins. Quitte à échanger les noms, disons que c'est $c$ :
$$M \leqslant c .$$

Mais $c$ est lui aussi un des nombres écrits au cercle, donc
$$c \leqslant M .$$

Les deux inégalités donnent $c = M$.

Ainsi la position choisie et sa voisine portent toutes les deux le nombre $M$ : **deux des nombres écrits sont égaux.**

### Question 2

Notons de nouveau $b$ et $c$ les deux voisins de la position où est écrit $M$. L'hypothèse s'écrit
$$M = \frac{b+c}{2}, \qquad \text{c'est-à-dire} \qquad 2M = b + c .$$

Comme $b \leqslant M$ et $c \leqslant M$, on obtient
$$b + c \leqslant M + M = 2M .$$

Il y a donc égalité dans cette dernière inégalité, puisque $b+c = 2M$. Regardons pourquoi cela force $b = M$ et $c = M$. Écrivons
$$2M - (b+c) = (M - b) + (M - c) = 0 .$$
Les deux quantités $M - b$ et $M - c$ sont positives ou nulles, et leur somme est nulle : elles sont donc toutes les deux nulles. Autrement dit
$$b = M \qquad \text{et} \qquad c = M .$$

**Les deux voisins d'un nombre maximal sont donc eux aussi maximaux.**

On recommence alors le raisonnement à partir de la position du voisin de droite, qui porte elle aussi le nombre $M$ : son propre voisin de droite vaut encore $M$. En continuant de proche en proche, on avance d'une position à chaque fois et on finit par faire le tour complet du cercle.

Toutes les positions portent donc le nombre $M$ : **tous les nombres écrits sont égaux.**

**Conclusion. Dans le premier cas, deux nombres au moins sont égaux ; dans le second, ils sont tous égaux.**

## Going further

1. Dans la question 2, où a-t-on utilisé que les nombres sont écrits **en cercle** ? Le résultat reste-t-il vrai si les nombres sont écrits en ligne, les deux nombres des extrémités n'ayant qu'un seul voisin et n'étant soumis à aucune condition ?
2. Question 1 : l'énoncé demande deux nombres égaux. Peut-on toujours trouver deux nombres égaux qui sont **voisins** ?
3. Les nombres sont en cercle et chacun est égal à la moyenne de ses deux voisins, sauf **un seul** d'entre eux, qui échappe à la règle. Les nombres sont-ils encore tous égaux ?
