---
id: "10831"
title: "Si 2x² − 1 = y¹⁵, alors 5 divise x"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [divisibilite, pgcd, factorisation, carre-parfait, encadrement, congruences, nombres-premiers-entre-eux]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf (le passage « PGCD égal à 3, donc y⁵ + 1 = 6a² » est justifié ici en détail)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Soient $x$ et $y$ deux entiers, avec $x > 1$, tels que

$$2x^2 - 1 = y^{15} .$$

Montrer que $x$ est divisible par $5$.

## Hints

1. Pose $z = y^5$, de sorte que $y^{15} + 1 = z^3 + 1$, et factorise $z^3 + 1$ par $z + 1$.
2. Montre que le $\mathrm{PGCD}$ de $(z + 1) / 2$ et de $z^2 - z + 1$ vaut $1$ ou $3$. Rappelle-toi que si deux entiers positifs sans diviseur commun ont pour produit un carré, ce sont deux carrés.
3. Montre que $z^2 - z + 1$ n'est pas un carré, en l'encadrant entre deux carrés consécutifs. Le $\mathrm{PGCD}$ vaut donc $3$ : déduis-en que $z + 1 = 6a^2$ et $x = 3ab$.
4. Recommence avec $y^5 + 1 = (y + 1)\left(y^4 - y^3 + y^2 - y + 1\right)$ : cette fois, c'est le nombre $5$ qui apparaît. Pour montrer que $y^4 - y^3 + y^2 - y + 1$ n'est pas un carré, encadre $4$ fois ce nombre.

## Solution

### Deux outils

*Les restes.* On écrit $u \equiv v \pmod k$, et on lit « $u$ est congru à $v$ modulo $k$ », quand $u - v$ est un multiple de $k$. On peut ajouter et multiplier ces relations comme des égalités.

*Un produit qui est un carré.* **Lemme.** Si $U \geqslant 1$ et $V \geqslant 1$ sont deux entiers sans diviseur commun autre que $1$, et si $U \times V$ est un carré, alors $U$ et $V$ sont deux carrés.

*Preuve.* Dans la décomposition en facteurs premiers d'un carré, chaque nombre premier apparaît un nombre pair de fois. Un nombre premier qui divise $U$ ne divise pas $V$, donc il apparaît dans $U$ autant de fois que dans $U \times V$, c'est-à-dire un nombre pair de fois. Ainsi $U$ est un carré, et de même $V$.

### Étape 1 : $y$ est impair et $y \geqslant 3$

Le nombre $2x^2 - 1$ est impair, donc $y^{15}$ aussi, et $y$ est impair. De plus $x \geqslant 2$ donne $y^{15} = 2x^2 - 1 \geqslant 7$, donc $y \geqslant 2$, et comme $y$ est impair, $y \geqslant 3$.

### Étape 2 : une première factorisation

Posons $z = y^5$. C'est un entier impair, au moins égal à $3^5$. L'équation s'écrit $2x^2 = z^3 + 1$, et
$$z^3 + 1 = (z + 1)\left(z^2 - z + 1\right) .$$
Comme $z$ est impair, $z + 1$ est pair. Posons
$$U = \frac{z + 1}{2} \qquad \text{et} \qquad V = z^2 - z + 1 .$$
Ce sont des entiers positifs, et en divisant par $2$ : $\boxed{x^2 = U \times V}$.

### Étape 3 : le $\mathrm{PGCD}$ de $U$ et $V$ vaut $3$

*Il vaut $1$ ou $3$.* On a $V = (z + 1)^2 - 3z = (z + 1)(z - 2) + 3$. Un diviseur commun $d$ de $U$ et $V$ divise $z + 1 = 2U$, donc il divise $V - (z + 1)(z - 2) = 3$. Ainsi $d = 1$ ou $d = 3$.

*Il ne vaut pas $1$.* Sinon, d'après le lemme, $V$ serait un carré. Or, comme $z \geqslant 2$,
$$(z - 1)^2 = z^2 - 2z + 1 < z^2 - z + 1 < z^2 .$$
Le nombre $V$ est strictement compris entre les deux carrés consécutifs $(z - 1)^2$ et $z^2$ : ce n'est pas un carré. **Donc le $\mathrm{PGCD}$ de $U$ et $V$ vaut $3$.**

### Étape 4 : $z + 1 = 6a^2$ et $x = 3ab$

Comme $3$ divise $U$, il divise $z + 1$. Alors $(z + 1)(z - 2) = (z + 1)^2 - 3(z + 1)$ est divisible par $9$, donc $V = (z + 1)(z - 2) + 3$ a pour reste $3$ dans la division par $9$. Écrivons
$$U = 3U' \qquad \text{et} \qquad V = 3V', \qquad \text{où } V' \text{ n'est pas divisible par } 3 .$$

*$U'$ et $V'$ n'ont pas de diviseur commun.* Si $d$ divise $U'$ et $V'$, alors $3d$ divise $U$ et $V$, donc $3d$ divise leur $\mathrm{PGCD}$, qui vaut $3$. Donc $d = 1$.

*On applique le lemme.* On a $x^2 = 9\,U'V'$. Comme $3$ est premier et $9$ divise $x^2$, $3$ divise $x$, et $(x / 3)^2 = U' \times V'$. D'après le lemme, $U' = a^2$ et $V' = b^2$ pour des entiers $a, b \geqslant 1$. Donc
$$z + 1 = 2U = 6a^2 \qquad \text{et} \qquad x^2 = 9a^2b^2, \quad \text{soit } x = 3ab .$$
Il suffit donc de montrer que **$5$ divise $a$**.

### Étape 5 : une deuxième factorisation

Posons $W = y^4 - y^3 + y^2 - y + 1$. En développant, on vérifie que $(y + 1) \times W = y^5 + 1 = z + 1$. L'étape 4 donne donc
$$(y + 1) \times W = 6a^2 .$$

*$6$ divise $y + 1$.* Le nombre $y$ est impair, donc $y + 1$ est pair. Ensuite, $3$ divise $y^5 + 1$. Regardons le reste de $y$ dans la division par $3$ : si $y \equiv 0$, alors $y^5 + 1 \equiv 1$ ; si $y \equiv 1$, alors $y^5 + 1 \equiv 2$ ; si $y \equiv 2 \equiv -1$, alors $y^5 + 1 \equiv -1 + 1 = 0$. Donc $y \equiv -1 \pmod 3$, et $3$ divise $y + 1$. Ainsi $y + 1 = 6c$ avec $c \geqslant 1$ entier, et en simplifiant par $6$ :
$$c \times W = a^2 .$$

*Le $\mathrm{PGCD}$ de $c$ et $W$ vaut $1$ ou $5$.* En développant, on vérifie que
$$W = (y + 1)\left(y^3 - 2y^2 + 3y - 4\right) + 5 .$$
Un diviseur commun de $c$ et $W$ divise $y + 1 = 6c$, donc il divise $W - (y + 1)\left(y^3 - 2y^2 + 3y - 4\right) = 5$. Il vaut donc $1$ ou $5$.

### Étape 6 : on conclut

*Si le $\mathrm{PGCD}$ vaut $5$*, alors $5$ divise $c$, donc $5$ divise $c \times W = a^2$. Comme $5$ est premier, $5$ divise $a$, donc $5$ divise $x = 3ab$. C'est ce qu'on voulait.

*Si le $\mathrm{PGCD}$ vaut $1$*, alors d'après le lemme, $W$ est un carré, et $4W$ aussi. Or
$$4W = 4y^4 - 4y^3 + 4y^2 - 4y + 4 ,$$
$$\left(2y^2 - y\right)^2 = 4y^4 - 4y^3 + y^2 ,$$
$$\left(2y^2 - y + 1\right)^2 = 4y^4 - 4y^3 + 5y^2 - 2y + 1 .$$
On calcule les écarts :
$$4W - \left(2y^2 - y\right)^2 = 3y^2 - 4y + 4 = 2y^2 + (y - 2)^2 > 0,$$
$$\left(2y^2 - y + 1\right)^2 - 4W = y^2 + 2y - 3 = (y - 1)(y + 3) > 0 \quad \text{car } y \geqslant 3 .$$
Ainsi $4W$ est strictement compris entre deux carrés consécutifs : ce n'est pas un carré. Ce cas est impossible.

**Donc le $\mathrm{PGCD}$ de $c$ et $W$ vaut $5$, et $x$ est divisible par $5$.**

## Going further

1. Où a-t-on utilisé l'hypothèse $x > 1$ ? Que se passe-t-il pour $x = 1$ ?
2. Vérifie que $2 \times 78^2 - 1 = 23^3$ : l'équation $2x^2 - 1 = y^3$ a une solution avec $x > 1$, et $78$ n'est pas divisible par $5$. Refais les étapes 2 à 4 pour cette équation, avec $z = y$. Que valent $a$ et $b$ pour $x = 78$ ? Pourquoi ne peut-on pas aller plus loin ?
