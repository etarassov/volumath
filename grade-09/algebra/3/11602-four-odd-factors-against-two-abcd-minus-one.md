---
id: "11602"
title: "(2a − 1)(2b − 1)(2c − 1)(2d − 1) et 2abcd − 1"
grade: 9
theme: algebra
difficulty: 3
duration_min: 25
tags: [inegalite, factorisation, cas d egalite, entiers]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices Juniors, exercice 2 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

Soient $a$, $b$, $c$ et $d$ des entiers strictement positifs. Montrer que

$$(2a - 1)(2b - 1)(2c - 1)(2d - 1) \geqslant 2abcd - 1.$$

Pour quelles valeurs de $a$, $b$, $c$, $d$ a-t-on égalité ?

## Hints

1. Commence avec deux nombres seulement : compare $(2x - 1)(2y - 1)$ et $2xy - 1$ quand $x$ et $y$ sont des entiers supérieurs ou égaux à $1$.
2. Développe la différence $(2x - 1)(2y - 1) - (2xy - 1)$. Elle se factorise, et il est utile de savoir que $x - 1 \geqslant 0$ et $y - 1 \geqslant 0$.
3. Utilise ce résultat pour le couple $(a, b)$, pour le couple $(c, d)$, puis une troisième fois pour le couple $(ab, cd)$.
4. Pour l'égalité, il faut que les trois inégalités utilisées soient des égalités en même temps.

## Solution

**Étape 1 : le cas de deux nombres.** Soient $x$ et $y$ deux entiers supérieurs ou égaux à $1$. On développe :

$$(2x - 1)(2y - 1) - (2xy - 1) = 4xy - 2x - 2y + 1 - 2xy + 1 = 2xy - 2x - 2y + 2.$$

Cette expression se factorise : $2xy - 2x - 2y + 2 = 2(x - 1)(y - 1)$. Comme $x - 1 \geqslant 0$ et $y - 1 \geqslant 0$, ce produit est positif ou nul. Donc

$$(2x - 1)(2y - 1) \geqslant 2xy - 1,$$

avec égalité exactement quand $(x - 1)(y - 1) = 0$, c'est-à-dire quand $x = 1$ ou $y = 1$.

**Étape 2 : on assemble.** Tous les nombres qui apparaissent sont strictement positifs : $2a - 1 \geqslant 1$, et de même pour $b$, $c$, $d$, et aussi $2ab - 1 \geqslant 1$ et $2cd - 1 \geqslant 1$.

L'étape 1 appliquée à $(a, b)$ puis à $(c, d)$ donne

$$(2a - 1)(2b - 1) \geqslant 2ab - 1 \qquad \text{et} \qquad (2c - 1)(2d - 1) \geqslant 2cd - 1.$$

On peut multiplier ces deux inégalités membre à membre, parce que tout est positif. En effet, si $P \geqslant p > 0$ et $Q \geqslant q > 0$, alors $PQ \geqslant pQ$ (on multiplie $P \geqslant p$ par $Q > 0$), puis $pQ \geqslant pq$ (on multiplie $Q \geqslant q$ par $p > 0$). On obtient

$$(2a - 1)(2b - 1)(2c - 1)(2d - 1) \geqslant (2ab - 1)(2cd - 1).$$

Enfin l'étape 1 appliquée à $x = ab$ et $y = cd$, qui sont des entiers au moins égaux à $1$, donne

$$(2ab - 1)(2cd - 1) \geqslant 2abcd - 1.$$

En mettant bout à bout les deux dernières inégalités, on obtient l'inégalité demandée.

**Étape 3 : le cas d'égalité.** L'égalité finale a lieu exactement quand chaque inégalité de la chaîne est une égalité. Dans la multiplication $PQ \geqslant pQ \geqslant pq$, on a égalité seulement si $P = p$ et $Q = q$. Il faut donc à la fois :

- $(2a - 1)(2b - 1) = 2ab - 1$, c'est-à-dire $a = 1$ ou $b = 1$ ;
- $(2c - 1)(2d - 1) = 2cd - 1$, c'est-à-dire $c = 1$ ou $d = 1$ ;
- $(2ab - 1)(2cd - 1) = 2abcd - 1$, c'est-à-dire $ab = 1$ ou $cd = 1$.

Comme $a$ et $b$ sont des entiers strictement positifs, $ab = 1$ veut dire $a = b = 1$. De même $cd = 1$ veut dire $c = d = 1$.

- Si $a = b = 1$, il faut encore $c = 1$ ou $d = 1$ : trois des quatre nombres valent $1$.
- Si $c = d = 1$, il faut encore $a = 1$ ou $b = 1$ : là aussi, trois des quatre nombres valent $1$.

Réciproquement, si trois des nombres valent $1$, par exemple $a = b = c = 1$, les deux membres valent $2d - 1$ : il y a bien égalité. C'est pareil pour les autres choix des trois nombres égaux à $1$, puisque l'inégalité ne change pas quand on échange les lettres.

**Conclusion : l'inégalité est vraie pour tous entiers strictement positifs $a$, $b$, $c$, $d$, et il y a égalité exactement quand au moins trois des quatre nombres sont égaux à $1$.**
