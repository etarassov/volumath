---
id: "8025"
title: "Chaque diviseur diminué de 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [divisibilite, nombres-premiers, plus-petit-diviseur, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017"
  reference: "stage_ete_2017.pdf, Coupe Animath du 6 juin 2017, énoncés lycée, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Déterminer tous les entiers $n \geqslant 2$ ayant la propriété suivante :

> pour tout entier $d \geqslant 2$, si $d$ divise $n$, alors $d - 1$ divise $n - 1$.

## Hints

1. Essaie les petites valeurs : $n = 2, 3, 4, \ldots, 12$. Lesquelles conviennent ? Regarde
   leur forme.
2. Les nombres premiers conviennent-ils ? Et les carrés de nombres premiers ?
3. Pour la réciproque, suppose que $n$ n'est ni premier ni le carré d'un nombre premier.
   Écris $n = ab$ où $a$ est le plus petit diviseur de $n$ supérieur ou égal à $2$. Que peut-on
   dire de $a$ et de $b$ ?
4. Applique l'hypothèse au diviseur $b$ et écris $n - 1 = ab - 1$ en faisant apparaître
   $b - 1$.

## Solution

**Réponse : les entiers qui conviennent sont les nombres premiers et les carrés de nombres
premiers.**

### Ces entiers conviennent

**Si $n$ est premier.** Le seul diviseur de $n$ supérieur ou égal à $2$ est $n$ lui-même, et
$n - 1$ divise bien $n - 1$. La condition est vérifiée.

**Si $n = p^2$ avec $p$ premier.** Les diviseurs de $n$ supérieurs ou égaux à $2$ sont $p$ et
$p^2$.

- Pour $d = p^2$ : $d - 1 = n - 1$ divise $n - 1$.
- Pour $d = p$ : il faut que $p - 1$ divise $p^2 - 1$. Or

$$p^2 - 1 = (p-1)(p+1),$$

donc $p - 1$ divise bien $p^2 - 1$.

La condition est vérifiée.

### Il n'y en a pas d'autres

Soit $n \geqslant 2$ vérifiant la condition, et supposons qu'il ne soit ni premier ni le carré
d'un nombre premier. Nous allons aboutir à une contradiction.

**On introduit le plus petit diviseur.** Notons $a$ le plus petit diviseur de $n$ supérieur ou
égal à $2$. Ce nombre $a$ est premier : si $a$ avait un diviseur $e$ avec $2 \leqslant e < a$,
alors $e$ diviserait aussi $n$ et serait un diviseur plus petit que $a$, ce qui est exclu.

Écrivons $n = ab$ avec $b$ entier.

- Comme $n$ n'est pas premier, $a \neq n$, donc $b \geqslant 2$.
- Comme $b$ est un diviseur de $n$ supérieur ou égal à $2$ et que $a$ est le plus petit,
  $b \geqslant a$.
- Comme $n$ n'est pas le carré d'un nombre premier et que $a$ est premier, $n \neq a^2$, donc
  $b \neq a$.

Au total, $b > a \geqslant 2$.

**On applique l'hypothèse au diviseur $b$.** Comme $b$ divise $n$ et $b \geqslant 2$, la
condition donne : $b - 1$ divise $n - 1$.

**On fait apparaître $b - 1$.** Écrivons

$$n - 1 = ab - 1 = a\,(b - 1) + a - 1 .$$

Le nombre $b - 1$ divise $n - 1$ et divise aussi $a\,(b-1)$. Il divise donc leur différence :

$$b - 1 \ \text{ divise } \ (n - 1) - a\,(b-1) = a - 1 .$$

**La contradiction.** On a $a \geqslant 2$, donc $a - 1 \geqslant 1 > 0$. Un diviseur positif
d'un entier strictement positif est inférieur ou égal à cet entier, donc

$$b - 1 \leqslant a - 1, \qquad \text{c'est-à-dire} \qquad b \leqslant a .$$

Cela contredit $b > a$.

**Conclusion : les entiers cherchés sont exactement les nombres premiers et les carrés de
nombres premiers**, c'est-à-dire $2$, $3$, $4$, $5$, $7$, $9$, $11$, $13$, $17$, $19$, $23$,
$25$, $29$, ...

## Going further

Pourquoi les carrés de nombres premiers passent-ils, alors que $6 = 2 \times 3$ échoue ? Pour
$n = 6$, le diviseur $d = 3$ demande que $2$ divise $5$, ce qui est faux. La démonstration
ci-dessus explique le phénomène général : dès que $n$ a deux facteurs **différents**, le plus
grand des deux est trop grand pour que $b - 1$ puisse se glisser dans $a - 1$.

Le point technique à retenir est la décomposition $ab - 1 = a(b-1) + (a-1)$ : c'est la façon
standard de faire apparaître un diviseur imposé dans une expression qui ne le contient pas
visiblement.
