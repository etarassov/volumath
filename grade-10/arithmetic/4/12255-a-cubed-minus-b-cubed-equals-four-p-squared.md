---
id: "12255"
title: "a³ − b³ = 4p² est-il possible ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [nombres premiers, diviseurs, factorisation, parite, restes, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de mai 2016"
  reference: "2017-10_ofm-2015-2016-test-mai.pdf, test du 11 mai 2016, exercice 3 (groupe B) ; pas de corrigé publié, solution rédigée pour cette base et réponse vérifiée par ordinateur pour tous a < 3000"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mai.pdf"
---

## Statement

Existe-t-il deux entiers $a$ et $b$ strictement positifs et un nombre premier $p$ tels que
$$a^3 - b^3 = 4p^2 \; ?$$

## Hints

1. Factorise $a^3 - b^3$. Que peux-tu dire de la parité de $a$ et de $b$ ?
2. Si $a$ et $b$ sont pairs, simplifie par $8$. Sinon, montre que $a^2 + ab + b^2$ est un diviseur impair de $4p^2$, plus grand que $a - b$.
3. Dans le cas impair, montre que $a - b = 4$ et $a^2 + ab + b^2 = p^2$.
4. Regarde alors les deux membres dans la division par $8$. Que vaut le carré d'un nombre impair dans cette division ?

## Solution

La réponse est **non**. On raisonne par l'absurde : on suppose que $a^3 - b^3 = 4p^2$, et l'on cherche une contradiction.

**Étape 1. Une factorisation, et la parité.**

On a
$$a^3 - b^3 = (a - b)(a^2 + ab + b^2).$$
On pose $d = a - b$ et $Q = a^2 + ab + b^2$, de sorte que $d \times Q = 4p^2$. Comme $4p^2 > 0$ et $Q > 0$, on a $d > 0$, donc $a > b \geqslant 1$.

Le nombre $a^3 - b^3$ est pair. Or un cube a la même parité que le nombre de départ. Donc $a$ et $b$ ont la même parité : ils sont tous les deux pairs, ou tous les deux impairs.

**Étape 2. Le cas où $a$ et $b$ sont pairs.**

On écrit $a = 2a'$ et $b = 2b'$. Alors $8(a'^3 - b'^3) = 4p^2$, donc $p^2 = 2(a'^3 - b'^3)$ est pair. Comme $p$ est premier, cela impose $p = 2$, et alors $a'^3 - b'^3 = 2$.

C'est impossible : on a $a' > b' \geqslant 1$, donc $a' \geqslant b' + 1$, et
$$a'^3 - b'^3 \geqslant (b' + 1)^3 - b'^3 = 3b'^2 + 3b' + 1 \geqslant 7.$$

**Étape 3. Le cas où $a$ et $b$ sont impairs : on trouve $d$ et $Q$.**

Les nombres $a^2$, $ab$ et $b^2$ sont impairs, donc leur somme $Q$ est impaire. De plus $Q > a^2 \geqslant a > a - b = d$.

- *Si $p = 2$*, alors $d \times Q = 16$. Le seul diviseur impair de $16$ est $1$, donc $Q = 1$, ce qui contredit $Q > a^2 \geqslant 1$.
- *Si $p$ est impair*, les diviseurs de $4p^2$ sont $1, 2, 4, p, 2p, 4p, p^2, 2p^2, 4p^2$, et les seuls qui sont impairs et plus grands que $1$ sont $p$ et $p^2$. Si $Q = p$, alors $d = 4p > Q$, ce qui contredit $Q > d$. Donc
$$Q = p^2 \qquad \text{et} \qquad d = 4.$$

**Étape 4. Le cas où $a$ et $b$ sont impairs : la contradiction.**

On a $a = b + 4$, donc
$$Q = (b + 4)^2 + (b + 4)\,b + b^2 = 3b^2 + 12b + 16.$$

On regarde les restes dans la division par $8$. Un nombre impair s'écrit $2k + 1$, et son carré vaut
$$(2k + 1)^2 = 4k(k + 1) + 1.$$
L'un des deux entiers consécutifs $k$ et $k + 1$ est pair, donc $4k(k + 1)$ est un multiple de $8$ : **le carré d'un nombre impair laisse le reste $1$ dans la division par $8$.**

- D'un côté, $p$ est impair, donc $p^2$ laisse le reste $1$.
- De l'autre, $b$ est impair, donc $b^2 = 8m + 1$ pour un certain entier $m$, et $12b = 8b + 4b$, où $4b$ est le produit de $4$ par un nombre impair, donc laisse le reste $4$. On écrit $4b = 8n + 4$. Alors
$$Q = 3(8m + 1) + 8b + 8n + 4 + 16 = 8(3m + b + n + 2) + 7,$$
qui laisse le reste $7$.

Les deux nombres $Q$ et $p^2$ sont égaux mais ne laissent pas le même reste dans la division par $8$ : c'est absurde.

**Conclusion.** Dans tous les cas on aboutit à une contradiction. Il n'existe donc pas d'entiers $a, b \geqslant 1$ et de nombre premier $p$ tels que $a^3 - b^3 = 4p^2$.

## Going further

1. Montre qu'il n'existe pas non plus d'entiers $a, b \geqslant 1$ tels que $a^3 - b^3 = 4$.
2. Trouve des entiers $a$ et $b$ et un nombre premier $p$ tels que $a^3 - b^3 = p$. Montre que dans ce cas on a forcément $a = b + 1$.
