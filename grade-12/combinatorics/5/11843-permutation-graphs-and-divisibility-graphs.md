---
id: "11843"
title: "Graphes de permutation et graphes de divisibilité"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 75
tags: [maths-expertes, graphe, orientation, ordre, nombres-premiers, permutations, transitivite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Seniors, exercice 18 ; corrigé 2022-05_corrige-envoi-5.pdf (énoncé précisé : les numéros sont des entiers strictement positifs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Un *graphe* $G$ est formé d'un ensemble fini de $n$ sommets et d'arêtes, chaque arête reliant deux sommets distincts, et deux sommets étant reliés par au plus une arête. Le *complémentaire* de $G$ est le graphe qui a les mêmes sommets, et dans lequel deux sommets distincts sont reliés exactement quand ils ne le sont pas dans $G$.

On dit que $G$ est *divisible* si l'on peut attribuer à chaque sommet $s$ un entier strictement positif $n_s$, deux sommets distincts recevant toujours deux entiers distincts, de sorte que deux sommets distincts $s$ et $s'$ soient reliés par une arête si et seulement si $n_s$ divise $n_{s'}$ ou $n_{s'}$ divise $n_s$.

On dit que $G$ est *permutable* si l'on peut numéroter ses sommets de $1$ à $n$ et trouver une permutation $\sigma$ de $\{1, \ldots, n\}$ de sorte que les sommets de numéros $i$ et $j$ soient reliés par une arête si et seulement si

$$(i - j)\left(\sigma(i) - \sigma(j)\right) < 0.$$

Montrer qu'un graphe $G$ est permutable si et seulement si $G$ et son complémentaire sont tous les deux divisibles.

## Hints

1. *Orienter* un graphe, c'est choisir un sens pour chaque arête. Montrer que $G$ est divisible si et seulement si on peut l'orienter de façon que, chaque fois qu'il y a une flèche de $s$ vers $t$ et une flèche de $t$ vers $u$, il y ait aussi une flèche de $s$ vers $u$.
2. Pour obtenir des numéros à partir d'une telle orientation, donner à chaque sommet un nombre premier différent, puis à $s$ le produit de son nombre premier et des nombres premiers des sommets d'où part une flèche vers $s$.
3. Si $G$ est permutable, orienter l'arête entre les sommets $i$ et $j$ de $i$ vers $j$ quand $i < j$. Faire de même pour le complémentaire.
4. Dans l'autre sens, mettre ensemble les flèches de $G$ et celles de son complémentaire : entre deux sommets distincts, il y a alors exactement une flèche. Montrer que cela range les sommets en une file. Retourner les flèches de $G$ donne une seconde file.

## Solution

**Vocabulaire.** *Orienter* un graphe, c'est choisir pour chaque arête $\{s, t\}$ un sens, qu'on note $s \to t$ ou $t \to s$. Une orientation est *transitive* si, chaque fois que $s \to t$ et $t \to u$, les sommets $s$ et $u$ sont distincts, reliés par une arête, et $s \to u$.

### Étape 1 : divisible veut dire « orientable de façon transitive »

*Si $G$ est divisible*, on oriente l'arête $\{s, t\}$ de $s$ vers $t$ quand $n_s$ divise $n_t$. Les deux divisibilités ne peuvent pas avoir lieu en même temps, car deux entiers strictement positifs qui se divisent l'un l'autre sont égaux, et les numéros sont distincts : chaque arête reçoit donc un seul sens. Si $s \to t$ et $t \to u$, alors $n_s$ divise $n_t$ qui divise $n_u$, donc $n_s$ divise $n_u$. On a $s \neq u$, sinon $n_s$ et $n_t$ se diviseraient l'un l'autre. Donc $s$ et $u$ sont reliés et $s \to u$. L'orientation est transitive.

*Si $G$ a une orientation transitive*, on choisit pour chaque sommet $s$ un nombre premier $p_s$, deux sommets différents ayant des nombres premiers différents (il y a une infinité de nombres premiers). On pose

$$n_s = p_s \times \prod_{t \to s} p_t,$$

le produit portant sur les sommets $t$ tels que $t \to s$. Chaque $n_s$ est un produit de nombres premiers distincts.

- *Si $s \to t$, alors $n_s$ divise $n_t$.* Le facteur $p_s$ figure dans $n_t$ car $s \to t$. Un autre facteur $p_u$ de $n_s$ vient d'un sommet $u$ tel que $u \to s$. Par transitivité, $u \to t$, donc $p_u$ figure aussi dans $n_t$. Tous les facteurs premiers de $n_s$, qui sont distincts, figurent dans $n_t$, donc $n_s$ divise $n_t$.
- *Si $n_s$ divise $n_t$ avec $s \neq t$, alors $s \to t$.* En effet $p_s$ divise $n_t$, et $p_s \neq p_t$, donc $p_s$ est l'un des $p_u$ avec $u \to t$, c'est-à-dire $s \to t$.
- *Les numéros sont distincts.* Si $n_s = n_t$ avec $s \neq t$, chacun divise l'autre, donc $s \to t$ et $t \to s$, ce qui est impossible.

Ainsi deux sommets distincts sont reliés exactement quand l'un des numéros divise l'autre : $G$ est divisible.

### Étape 2 : un graphe permutable et son complémentaire sont divisibles

Numérotons les sommets comme dans la définition. Comme $\sigma$ est une permutation, $\sigma(i) \neq \sigma(j)$ pour $i \neq j$. Donc, pour $i < j$ :

- les sommets $i$ et $j$ sont reliés dans $G$ exactement quand $\sigma(i) > \sigma(j)$ ;
- ils sont reliés dans le complémentaire exactement quand $\sigma(i) < \sigma(j)$.

Dans $G$, orientons chaque arête $\{i, j\}$ avec $i < j$ de $i$ vers $j$. Si $i \to j$ et $j \to k$, alors $i < j < k$ et $\sigma(i) > \sigma(j) > \sigma(k)$. Donc $i < k$ et $\sigma(i) > \sigma(k)$ : les sommets $i$ et $k$ sont reliés, et $i \to k$. L'orientation est transitive. Le même raisonnement, avec $\sigma(i) < \sigma(j) < \sigma(k)$, s'applique au complémentaire. D'après l'étape 1, $G$ et son complémentaire sont divisibles.

### Étape 3 : si $G$ et son complémentaire sont divisibles, $G$ est permutable

D'après l'étape 1, on dispose d'une orientation transitive de $G$, notée $s \xrightarrow{P} t$, et d'une orientation transitive du complémentaire, notée $s \xrightarrow{Q} t$. Deux sommets distincts sont reliés soit dans $G$, soit dans le complémentaire, jamais dans les deux. Il y a donc entre eux exactement une flèche, de type $P$ ou de type $Q$.

**Un premier ordre.** Écrivons $s \prec t$ quand $s \xrightarrow{P} t$ ou $s \xrightarrow{Q} t$. Pour deux sommets distincts, on a exactement l'un des deux : $s \prec t$ ou $t \prec s$. Montrons que si $s \prec t$ et $t \prec u$, alors $s \prec u$.

- Si les deux flèches sont de type $P$, ou toutes deux de type $Q$, c'est la transitivité de $P$ ou de $Q$.
- Supposons $s \xrightarrow{P} t$ et $t \xrightarrow{Q} u$. D'abord $s \neq u$, sinon la paire $\{s, t\}$ serait à la fois reliée dans $G$ et dans le complémentaire. Supposons par l'absurde $u \prec s$. Si $u \xrightarrow{P} s$, alors $u \xrightarrow{P} s \xrightarrow{P} t$ donne $u \xrightarrow{P} t$, donc $\{t, u\}$ serait reliée dans $G$, alors que $t \xrightarrow{Q} u$. Si $u \xrightarrow{Q} s$, alors $t \xrightarrow{Q} u \xrightarrow{Q} s$ donne $t \xrightarrow{Q} s$, donc $\{s, t\}$ serait reliée dans le complémentaire, alors que $s \xrightarrow{P} t$. Les deux cas sont impossibles, donc $s \prec u$.
- Le cas $s \xrightarrow{Q} t$ et $t \xrightarrow{P} u$ se traite de la même façon, en échangeant les rôles de $P$ et de $Q$.

**Ranger les sommets en file.** Pour un sommet $v$, notons $r(v)$ le nombre de sommets $w$ tels que $w \prec v$. Si $v \prec v'$, tout sommet $w \prec v$ vérifie aussi $w \prec v'$, et de plus $v \prec v'$, donc $r(v') \geqslant r(v) + 1$. Deux sommets distincts ont donc des valeurs de $r$ distinctes. Les $n$ valeurs $r(v)$ sont $n$ entiers distincts entre $0$ et $n - 1$ : ce sont exactement $0, 1, \ldots, n - 1$. De plus $v \prec v'$ exactement quand $r(v) < r(v')$.

**Un second ordre.** En retournant toutes les flèches de $P$, on obtient une autre orientation transitive de $G$. Le même raisonnement donne un second ordre : $s \prec' t$ quand $t \xrightarrow{P} s$ ou $s \xrightarrow{Q} t$, avec une fonction $r'$ qui prend aussi les valeurs $0, 1, \ldots, n - 1$, et $v \prec' v'$ exactement quand $r'(v) < r'(v')$.

**La numérotation.** On donne au sommet $v$ le numéro $r(v) + 1$, et on définit $\sigma$ par $\sigma\left(r(v) + 1\right) = r'(v) + 1$. Les numéros vont de $1$ à $n$ et $\sigma$ est une permutation de $\{1, \ldots, n\}$. Soient $v$ et $w$ deux sommets distincts, de numéros $i$ et $j$.

- Si $v$ et $w$ sont reliés dans $G$, disons $v \xrightarrow{P} w$, alors $v \prec w$ et $w \prec' v$, donc $i < j$ et $\sigma(i) > \sigma(j)$ : le produit $(i - j)\left(\sigma(i) - \sigma(j)\right)$ est strictement négatif.
- Sinon, disons $v \xrightarrow{Q} w$, alors $v \prec w$ et $v \prec' w$, donc $i < j$ et $\sigma(i) < \sigma(j)$ : le produit est strictement positif.

Deux sommets sont donc reliés exactement quand $(i - j)\left(\sigma(i) - \sigma(j)\right) < 0$ : le graphe $G$ est permutable.

**Conclusion.** Les étapes 2 et 3 montrent qu'un graphe est permutable si et seulement si lui et son complémentaire sont divisibles.

## Going further

Montrer que le cycle à $5$ sommets (cinq sommets placés en cercle, chacun relié à ses deux voisins) n'est pas divisible. Il n'est donc pas permutable.
