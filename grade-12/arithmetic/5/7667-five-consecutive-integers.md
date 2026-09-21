---
id: "7667"
title: "Cinq entiers consécutifs ne font jamais un carré"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [carre parfait, partie sans facteur carre, nombres premiers, principe des tiroirs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe B"
  reference: "stage_ete_2013.pdf, chapitre II, groupe B, cours d'arithmétique, exercice sur le produit de cinq entiers consécutifs"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

Démontrer que le produit

$$n(n+1)(n+2)(n+3)(n+4)$$

n'est jamais le carré d'un entier.

## Hints

1. Tout entier $m \geqslant 1$ s'écrit de façon unique $m = s\,t^2$ où $s$ n'a aucun diviseur carré autre que $1$. On appelle $s$ la **partie sans facteur carré** de $m$. Par exemple $12 = 3 \times 2^2$, donc la partie sans facteur carré de $12$ vaut $3$.
2. Soit $p$ un nombre premier au moins égal à $5$. Peut-il diviser deux des cinq facteurs à la fois ?
3. Si $p \geqslant 5$ ne divise qu'un seul des cinq facteurs, que dit la condition « le produit est un carré » sur l'exposant de $p$ dans ce facteur-là ?
4. Vous obtenez que la partie sans facteur carré de chaque facteur n'utilise que les premiers $2$ et $3$. Combien de valeurs cela laisse-t-il ?
5. Cinq facteurs, quatre valeurs possibles : principe des tiroirs. Deux facteurs ont la même partie sans facteur carré. Que vaut alors leur différence ?

## Solution

Notons $P = n(n+1)(n+2)(n+3)(n+4)$ et supposons, par l'absurde, que $P$ soit le carré d'un entier.

### Étape 1 : la partie sans facteur carré

Tout entier $m \geqslant 1$ s'écrit de manière unique sous la forme

$$m = s\,t^2 ,$$

où $t$ est le plus grand entier tel que $t^2$ divise $m$, et où $s = m/t^2$ n'a alors aucun diviseur carré autre que $1$. On dit que $s$ est la **partie sans facteur carré** de $m$. De façon équivalente : dans la décomposition de $m$ en facteurs premiers, $s$ est le produit des nombres premiers qui apparaissent avec un exposant **impair**.

Notons $a_1 = n$, $a_2 = n+1$, …, $a_5 = n+4$ les cinq facteurs, et $s_1, \ldots, s_5$ leurs parties sans facteur carré.

### Étape 2 : les grands nombres premiers ne peuvent pas apparaître

Soit $p$ un nombre premier avec $p \geqslant 5$.

Si $p$ divisait deux des cinq facteurs, il diviserait leur différence. Or deux facteurs distincts diffèrent d'au plus $4$, et cette différence est non nulle, donc elle vaut $1$, $2$, $3$ ou $4$. Aucun de ces nombres n'est divisible par $p \geqslant 5$. Contradiction.

Donc **$p$ divise au plus un des cinq facteurs**. Notons $v_p(m)$ l'exposant de $p$ dans la décomposition de $m$. On a alors

$$v_p(P) = v_p(a_1) + \cdots + v_p(a_5) = v_p(a_i)$$

pour l'unique indice $i$ concerné (et $v_p(P) = 0$ si $p$ ne divise aucun facteur).

Comme $P$ est un carré, tous les exposants $v_p(P)$ sont pairs. Donc $v_p(a_i)$ est pair, donc **$p$ ne figure pas dans la partie sans facteur carré $s_i$**.

Ce raisonnement vaut pour tout premier $p \geqslant 5$ et pour chaque indice. Par conséquent, **aucune des parties $s_1, \ldots, s_5$ n'est divisible par un premier $\geqslant 5$** : chacune n'utilise que les premiers $2$ et $3$.

### Étape 3 : seulement quatre valeurs possibles

Une partie sans facteur carré n'a aucun facteur premier répété. Si elle n'utilise que $2$ et $3$, elle vaut donc

$$1, \quad 2, \quad 3 \quad \text{ou} \quad 6 .$$

Il n'y a que ces quatre valeurs.

### Étape 4 : le principe des tiroirs

Nous avons cinq nombres $s_1, \ldots, s_5$, chacun dans un ensemble de quatre valeurs. Donc **deux d'entre eux sont égaux** : il existe $i \neq j$ avec $s_i = s_j = s$.

Écrivons alors

$$a_i = s\,u^2 \qquad \text{et} \qquad a_j = s\,v^2 ,$$

avec $u$ et $v$ entiers strictement positifs (ils le sont bien, car $n \geqslant 1$ entraîne $a_i, a_j \geqslant 1$).

Quitte à échanger $i$ et $j$, supposons $a_i > a_j$, donc $u > v \geqslant 1$.

### Étape 5 : la contradiction

Calculons la différence :

$$a_i - a_j = s\,(u^2 - v^2) = s\,(u - v)(u + v) .$$

Minorons chaque facteur. On a $s \geqslant 1$, puis $u \geqslant v + 1 \geqslant 2$, donc

$$u^2 - v^2 \geqslant 2^2 - 1^2 = 3 .$$

*(En effet, $u^2 - v^2$ croît quand $u$ croît à $v$ fixé, et quand $v$ décroît à $u$ fixé ; le minimum est donc atteint pour $u = 2$, $v = 1$.)*

D'où

$$a_i - a_j \geqslant 1 \times 3 = 3 .$$

Par ailleurs $a_i$ et $a_j$ sont deux des cinq entiers consécutifs $n, \ldots, n+4$, donc

$$a_i - a_j \leqslant 4 .$$

Il reste donc $a_i - a_j \in \{3, 4\}$, avec $s(u-v)(u+v) \leqslant 4$. Examinons les possibilités avec $u > v \geqslant 1$ :

- $u = 2$, $v = 1$ : $u^2 - v^2 = 3$, donc $s \times 3 \leqslant 4$ impose $s = 1$ ;
- $u = 3$, $v = 1$ : $u^2 - v^2 = 8 > 4$, impossible ;
- $u = 3$, $v = 2$ : $u^2 - v^2 = 5 > 4$, impossible ;
- tout autre couple donne $u^2 - v^2 \geqslant 5$, donc est impossible aussi.

Le seul cas survivant est $s = 1$, $u = 2$, $v = 1$, c'est-à-dire

$$a_j = 1 \qquad \text{et} \qquad a_i = 4 .$$

Les nombres $1$ et $4$ figurent donc tous les deux parmi $n, n+1, n+2, n+3, n+4$. Puisque $n \geqslant 1$ et que $1$ doit apparaître, on a forcément $n = 1$.

Il ne reste qu'à vérifier ce cas :

$$1 \times 2 \times 3 \times 4 \times 5 = 120 ,$$

et $10^2 = 100 < 120 < 121 = 11^2$, donc $120$ n'est pas un carré parfait.

### Conclusion

Dans tous les cas on aboutit à une contradiction. **Le produit de cinq entiers consécutifs strictement positifs n'est jamais un carré parfait.** $\blacksquare$

## Going further

**Le produit de quatre entiers consécutifs** se traite bien plus vite, sans parties sans facteur carré. En regroupant les facteurs extrêmes et ceux du milieu :
$$n(n+1)(n+2)(n+3) = (n^2+3n)(n^2+3n+2) = m(m+2) = (m+1)^2 - 1 ,$$
avec $m = n^2 + 3n \geqslant 4$. Comme $m^2 < (m+1)^2 - 1 < (m+1)^2$, ce n'est jamais un carré. Ce petit calcul ne se généralise malheureusement pas à cinq facteurs, ce qui explique pourquoi il a fallu un outil plus lourd.

**Un résultat beaucoup plus fort existe.** Erdős et Selfridge ont démontré en 1975 que le produit de deux entiers consécutifs ou plus n'est **jamais** une puissance parfaite (carré, cube, ou puissance $k$-ième quelconque). Leur démonstration est longue, mais l'argument des parties sans facteur carré en est l'un des ingrédients de départ.

**Une question pour s'entraîner.** Adaptez la démonstration ci-dessus au produit de **trois** entiers consécutifs $n(n+1)(n+2)$. Cette fois les premiers $p \geqslant 5$ sont encore exclus, les parties sans facteur carré valent encore $1$, $2$, $3$ ou $6$, mais il y a seulement trois facteurs pour quatre valeurs : le principe des tiroirs ne s'applique plus, et il faut un argument différent. Indice : $n$ et $n+1$ sont premiers entre eux, ainsi que $n+1$ et $n+2$.
