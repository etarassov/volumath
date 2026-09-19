---
id: "0376"
title: "L'aire d'un triangle pythagoricien"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pythagore, parite, restes, aire, entiers]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей (А. А. Аксёнов, А. А. Севастьянов)"
  reference: "AU2.pdf, листок 6 «Пифагоровы треугольники», задача 6"
  url: "https://mmmf.msu.ru/for_schools/AU2.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/AU2.pdf"
---

## Statement

On appelle **triangle pythagoricien** un triangle rectangle dont les trois côtés ont des longueurs entières. Le triangle de côtés $3$, $4$ et $5$ en est un exemple.

1. Quels restes peut donner le carré d'un entier naturel dans la division euclidienne par $4$ ?
2. Dans un triangle pythagoricien, les deux côtés de l'angle droit peuvent-ils être tous les deux de longueur impaire ?
3. Montrer que l'aire d'un triangle pythagoricien est toujours un nombre entier.

## Hints

1. Question 1 : un entier naturel est soit pair, soit impair. Écris-le $2k$ dans le premier cas, $2k+1$ dans le second, puis élève au carré.
2. Question 2 : note $a$ et $b$ les longueurs des côtés de l'angle droit et suppose qu'elles sont toutes les deux impaires. Calcule $a^2 + b^2$ et regarde son reste dans la division par $4$.
3. Question 2 : d'après le théorème de Pythagore, $a^2 + b^2$ est un carré. Le reste que tu viens de trouver figure-t-il dans la liste de la question 1 ?
4. Question 3 : l'aire d'un triangle rectangle est la moitié du produit des longueurs des deux côtés de l'angle droit. Que dit la question 2 sur la parité de ce produit ?

## Solution

**Question 1. Les restes des carrés dans la division par 4.**

Soit $n$ un entier naturel. Il y a deux cas.

*Si $n$ est pair*, on écrit $n = 2k$ avec $k$ entier :

$$n^2 = (2k)^2 = 4k^2.$$

Le reste dans la division par $4$ est $0$.

*Si $n$ est impair*, on écrit $n = 2k+1$ avec $k$ entier :

$$n^2 = (2k+1)^2 = 4k^2 + 4k + 1 = 4(k^2+k) + 1.$$

Le reste dans la division par $4$ est $1$.

**Un carré ne peut donc donner que le reste $0$ ou le reste $1$ dans la division par $4$.** Les restes $2$ et $3$ sont impossibles. C'est le fait dont on va se servir dans toute la suite.

**Question 2. Les deux côtés de l'angle droit ne sont jamais impairs ensemble.**

L'idée est de **raisonner par l'absurde** : on suppose le contraire et on arrive à une impossibilité.

Notons $a$ et $b$ les longueurs des côtés de l'angle droit, $c$ celle de l'hypoténuse, et supposons que $a$ et $b$ soient tous les deux impairs. On écrit alors

$$a = 2p+1 \qquad \text{et} \qquad b = 2q+1,$$

avec $p$ et $q$ entiers. Donc

$$a^2 + b^2 = \big(4(p^2+p) + 1\big) + \big(4(q^2+q) + 1\big) = 4\big(p^2+p+q^2+q\big) + 2.$$

Le nombre $a^2 + b^2$ donne donc le reste $2$ dans la division par $4$.

Mais le théorème de Pythagore dit que $a^2 + b^2 = c^2$ : ce nombre est un carré, et d'après la question 1 il devrait donner le reste $0$ ou le reste $1$. C'est impossible.

**L'hypothèse de départ est donc fausse : au moins l'un des deux côtés de l'angle droit a une longueur paire.**

**Question 3. L'aire est un nombre entier.**

L'aire d'un triangle rectangle vaut la moitié du produit des longueurs des deux côtés de l'angle droit :

$$\mathcal{A} = \frac{ab}{2}.$$

D'après la question 2, l'un au moins des deux nombres $a$ et $b$ est pair. Leur produit $ab$ est donc pair : on peut écrire $ab = 2m$ avec $m$ entier, et alors

$$\mathcal{A} = \frac{2m}{2} = m.$$

**Conclusion.** L'aire d'un triangle pythagoricien est toujours un nombre entier. Par exemple, pour le triangle $(3, 4, 5)$ elle vaut $6$, et pour le triangle $(5, 12, 13)$ elle vaut $30$.

## Going further

1. Un triangle pythagoricien est dit **primitif** lorsque les longueurs de ses trois côtés n'ont aucun diviseur commun autre que $1$. Montrer que dans un triangle primitif l'hypoténuse est de longueur impaire, et que les deux côtés de l'angle droit sont l'un de longueur paire, l'autre de longueur impaire.
2. Existe-t-il un triangle pythagoricien isocèle ? (On pourra utiliser le fait que $\sqrt{2}$ n'est pas un nombre rationnel.)
