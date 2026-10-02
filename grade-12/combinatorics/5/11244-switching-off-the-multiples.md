---
id: "11244"
title: "Éteindre les multiples"
grade: 12
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [multiples, ppcm, recurrence, construction, algorithme]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 4 (combinatoire)"
  reference: "2017-10_ofm-2016-2017-envoi-4.pdf, Exercices du groupe A, exercice 10 ; corrigé 2017-10_ofm-2016-2017-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-4.pdf"
---

## Statement

On dispose d'une rangée infinie de cases, numérotées $1$, $2$, $3$, … Au départ, toutes les cases
contiennent le nombre $1$. À chaque étape, on choisit un entier $a \geqslant 1$ tel que :

- soit toutes les cases dont le numéro est un multiple de $a$ contiennent $1$, et alors on remplace
  tous ces $1$ par des $0$ ;
- soit toutes les cases dont le numéro est un multiple de $a$ contiennent $0$, et alors on remplace
  tous ces $0$ par des $1$.

Montrer que, pour tout entier $n \geqslant 2$, on peut faire en sorte qu'après un certain nombre
d'étapes, toutes les cases de numéro $2$, $3$, …, $n$ contiennent $0$, et que la case numéro $1$
contienne $1$.

## Hints

1. Essaie avec $n = 3$. On aimerait mettre à $0$ les multiples de $2$, puis les multiples de $3$,
   mais la case $6$ gêne : pourquoi ?
2. Pour $n = 3$, on peut s'en sortir en trois étapes, en utilisant au milieu les multiples de $6$.
3. Un nombre est à la fois multiple de $a$ et de $b$ si et seulement s'il est multiple de
   $\mathrm{PPCM}(a, b)$. Que vaut alors la partie commune aux multiples de $a$ et aux multiples
   de $b$ ?
4. Montre plus généralement que, pour n'importe quels entiers $d_1, \ldots, d_m$, on peut mettre
   à $0$ d'un seul coup toutes les cases dont le numéro est un multiple d'au moins un des $d_i$
   (si elles contiennent toutes $1$), et aussi les remettre à $1$ (si elles contiennent toutes $0$).
   Démontre les deux propriétés **en même temps**, par récurrence sur $m$.

## Solution

Disons qu'une case est **allumée** si elle contient $1$, et **éteinte** si elle contient $0$. Pour
un entier $a \geqslant 1$, notons $M_a$ l'ensemble des multiples de $a$ parmi $1, 2, 3, \ldots$
Un état de la rangée est décrit par l'ensemble $Z$ des numéros des cases éteintes. Au départ,
$Z$ est vide. Les deux sortes d'étapes s'écrivent ainsi :

- **éteindre $M_a$** : c'est permis si aucune case de $M_a$ n'est éteinte, c'est-à-dire si $M_a$
  et $Z$ n'ont aucun élément commun ; le nouvel état est alors $Z \cup M_a$ ;
- **rallumer $M_a$** : c'est permis si toutes les cases de $M_a$ sont éteintes, c'est-à-dire si
  $M_a \subset Z$ ; le nouvel état est alors $Z \setminus M_a$, l'ensemble $Z$ privé de $M_a$.

### Pourquoi c'est difficile, et l'outil qui sauve

Pour $n = 3$, on éteint $M_2$. On voudrait ensuite éteindre $M_3$, mais c'est interdit : la case $6$
est déjà éteinte. On s'en sort ainsi : on rallume $M_6$, ce qui est permis car tous les multiples
de $6$ sont pairs, donc éteints. Les cases éteintes sont alors les nombres pairs qui ne sont pas
multiples de $6$, donc aucun multiple de $3$. On peut maintenant éteindre $M_3$. Les cases éteintes
sont alors exactement les multiples de $2$ ou de $3$, et les cases $1$, $2$, $3$ contiennent
$1$, $0$, $0$.

L'outil qui sert ici : un nombre est multiple de $a$ et de $b$ si et seulement s'il est multiple
de leur plus petit commun multiple. Autrement dit,
$$M_a \cap M_b = M_{\mathrm{PPCM}(a, b)} .$$

### Le lemme

Pour des entiers $d_1, \ldots, d_m \geqslant 1$, notons
$$V(d_1, \ldots, d_m) = M_{d_1} \cup M_{d_2} \cup \cdots \cup M_{d_m}$$
l'ensemble des nombres qui sont multiples d'au moins un des $d_i$.

**Lemme.** Soit $m \geqslant 1$, soient $d_1, \ldots, d_m \geqslant 1$ des entiers, et posons
$V = V(d_1, \ldots, d_m)$. Partons d'un état $Z$ quelconque.

- **(É)** Si $V$ et $Z$ n'ont aucun élément commun, on peut, par une suite d'étapes permises,
  arriver à l'état $Z \cup V$.
- **(R)** Si $V \subset Z$, on peut, par une suite d'étapes permises, arriver à l'état
  $Z \setminus V$.

On démontre les deux propriétés ensemble, par récurrence sur $m$, et pour tous les états $Z$ à la
fois.

**Pour $m = 1$**, ce sont exactement les deux sortes d'étapes : une seule étape suffit.

**Passage de $m$ à $m + 1$.** Supposons le lemme vrai pour $m$, quels que soient les entiers et
l'état de départ. Prenons $d_1, \ldots, d_{m+1}$, et notons $d = d_{m+1}$,
$V = V(d_1, \ldots, d_m)$ et $V' = V \cup M_d = V(d_1, \ldots, d_{m+1})$.

L'ingrédient principal est l'ensemble $W$ des éléments de $V$ qui sont aussi dans $M_d$. D'après
l'outil, un élément de $V$ multiple de $d$ est un multiple commun de $d$ et d'un des $d_i$, donc
$$W = M_{e_1} \cup \cdots \cup M_{e_m} = V(e_1, \ldots, e_m), \qquad \text{avec } e_i = \mathrm{PPCM}(d_i, d) .$$
C'est encore une réunion de $m$ ensembles de multiples : on peut lui appliquer le lemme pour $m$.
Retenons aussi que $W \subset V$ et $W \subset M_d$.

*Preuve de (É) pour $V'$.* On suppose que $V'$ et $Z$ n'ont aucun élément commun.

1. $V$ et $Z$ n'ont aucun élément commun. Par (É) pour $m$, on arrive à l'état $Z \cup V$.
2. $W \subset V$, donc $W$ est contenu dans l'état actuel $Z \cup V$. Par (R) pour $m$, appliqué à
   $W$, on arrive à l'état $(Z \cup V) \setminus W$.
3. Dans cet état, aucune case de $M_d$ n'est éteinte. En effet, $M_d$ n'a aucun élément commun
   avec $Z$, et ses éléments communs avec $V$ forment $W$, que l'on vient de rallumer. On peut donc
   éteindre $M_d$, et on arrive à l'état $((Z \cup V) \setminus W) \cup M_d$. Comme
   $W \subset M_d$, les cases de $W$ sont éteintes à nouveau, et cet état est $Z \cup V \cup M_d$,
   c'est-à-dire $Z \cup V'$.

*Preuve de (R) pour $V'$.* On suppose que $V' \subset Z$.

1. $M_d \subset Z$. On rallume $M_d$, et on arrive à l'état $Z \setminus M_d$.
2. $W \subset M_d$, donc $W$ n'a aucun élément commun avec l'état actuel $Z \setminus M_d$. Par
   (É) pour $m$, appliqué à $W$, on arrive à l'état $(Z \setminus M_d) \cup W$.
3. Montrons que $V$ est contenu dans cet état. Un élément de $V$ qui est dans $M_d$ est dans $W$.
   Un élément de $V$ qui n'est pas dans $M_d$ est dans $Z$ (car $V \subset Z$), donc dans
   $Z \setminus M_d$. Par (R) pour $m$, on arrive à l'état
   $((Z \setminus M_d) \cup W) \setminus V$. Comme $W \subset V$, cet état est
   $(Z \setminus M_d) \setminus V$, c'est-à-dire $Z \setminus V'$.

Le lemme est démontré pour $m + 1$, donc pour tout $m$ par récurrence.

### La conclusion

Soit $n \geqslant 2$. Appliquons (É) avec $m = n - 1$ et les entiers $d_1 = 2$, $d_2 = 3$, …,
$d_{n-1} = n$, en partant de l'état de départ $Z = \varnothing$ (rien n'est éteint, donc la condition
de (É) est vraie). On arrive à l'état $V = V(2, 3, \ldots, n)$ :

- chaque entier $k$ compris entre $2$ et $n$ est multiple de lui-même, donc il est dans $V$ : la case
  $k$ est éteinte ;
- $1$ n'est multiple d'aucun entier $d \geqslant 2$, donc $1$ n'est pas dans $V$ : la case $1$ est
  allumée.

**Conclusion : pour tout $n \geqslant 2$, on peut arriver à un état où les cases $2, 3, \ldots, n$
contiennent $0$ et où la case $1$ contient $1$.**

## Going further

- Si $u_m$ est le nombre d'étapes utilisées par la méthode pour $m$ entiers, la preuve donne
  $u_1 = 1$ et $u_{m+1} = 2u_m + 1$, donc $u_m = 2^m - 1$. Avec les entiers $2, \ldots, n$, cela
  fait $2^{n-1} - 1$ étapes.
- On peut faire beaucoup mieux en n'utilisant que les **nombres premiers** $p_1, \ldots, p_r$
  inférieurs ou égaux à $n$ : tout entier $k$ entre $2$ et $n$ a un diviseur premier, qui est
  au plus $n$, donc il est dans $V(p_1, \ldots, p_r)$, et $1$ n'y est pas. Cela fait $2^r - 1$
  étapes. Pour $n = 10$, il y a $4$ nombres premiers ($2$, $3$, $5$ et $7$), donc $15$ étapes au
  lieu de $511$.
