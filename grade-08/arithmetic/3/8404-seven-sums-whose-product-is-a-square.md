---
id: "8404"
title: "Sept sommes dont le produit est un carré"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, appariement, construction, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, Coupe Animath de printemps 2021"
  reference: "Poly-2021-Valbonne.pdf, « Coupe Animath de printemps 2021 », énoncés destinés aux élèves de collège, exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Rémi range les quatorze entiers

$$0, \; 1, \; 2, \; \ldots, \; 13$$

en sept paires : chaque entier appartient à exactement une paire. Pour chacune des sept paires, il écrit au tableau la somme des deux entiers de cette paire. Il obtient ainsi sept nombres.

Montrer que Rémi peut s'y prendre de façon que le **produit** des sept nombres écrits au tableau soit un carré parfait.

*Un carré parfait est un entier qui s'écrit $n^2$ avec $n$ entier : par exemple $0$, $1$, $4$, $9$, $16$, $25$.*

## Hints

1. On ne te demande pas de montrer que ça marche toujours : il suffit de trouver **un** rangement qui convient, et de le vérifier.
2. Un produit de deux nombres égaux est toujours un carré : $a \times a = a^2$. Essaie donc de fabriquer beaucoup de paires qui donnent la même somme.
3. Si six des sept sommes sont égales à un même nombre $s$, leur produit vaut $s^6 = (s \times s \times s)^2$, qui est un carré. Il ne reste plus qu'à s'arranger pour que la septième somme soit, elle aussi, un carré.
4. Quelle paire donne la somme $1$ ? Et une fois cette paire mise de côté, que reste-t-il comme entiers ?

## Solution

Il suffit d'exhiber un rangement qui convient. En voici un.

**Le rangement.**

On met d'abord de côté la paire $\{0, 1\}$, dont la somme vaut $1$.

Il reste les douze entiers $2, 3, 4, \ldots, 13$. On les apparie en mettant ensemble le plus petit et le plus grand, puis le deuxième plus petit et le deuxième plus grand, et ainsi de suite :

$$\{2, 13\}, \quad \{3, 12\}, \quad \{4, 11\}, \quad \{5, 10\}, \quad \{6, 9\}, \quad \{7, 8\}.$$

Chacune de ces six paires a pour somme $15$ : en effet, quand on avance d'un cran dans le premier nombre il augmente de $1$, et le second diminue de $1$, donc la somme ne bouge pas. On vérifie d'ailleurs directement :

$$2 + 13 = 3 + 12 = 4 + 11 = 5 + 10 = 6 + 9 = 7 + 8 = 15.$$

Chaque entier de $0$ à $13$ est bien utilisé exactement une fois, et on a bien sept paires.

**Les sept nombres écrits au tableau.**

Ce sont

$$1, \quad 15, \quad 15, \quad 15, \quad 15, \quad 15, \quad 15.$$

**Le produit.**

$$1 \times 15 \times 15 \times 15 \times 15 \times 15 \times 15 = 15^6 = (15^3)^2 = 3375^2.$$

C'est bien un carré parfait, ce qu'il fallait montrer.

## Going further

D'autres rangements marchent aussi. Par exemple

$$\{0, 11\}, \; \{1, 10\}, \; \{2, 9\}, \; \{3, 8\}, \; \{4, 7\}, \; \{5, 6\}, \; \{12, 13\}$$

donne les sommes $11, 11, 11, 11, 11, 11$ et $25$, dont le produit vaut $11^6 \times 25 = (11^3 \times 5)^2$.

Ou encore

$$\{0, 1\}, \; \{2, 5\}, \; \{3, 4\}, \; \{6, 9\}, \; \{7, 8\}, \; \{10, 13\}, \; \{11, 12\}$$

donne $1, 7, 7, 15, 15, 23, 23$, de produit $(7 \times 15 \times 23)^2$. Ici l'idée est différente : les sommes se regroupent **deux par deux**.

Il existe en tout $1825$ rangements qui conviennent.
