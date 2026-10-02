---
id: "10813"
title: "Deux nombres premiers liés par des puissances de 5"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [nombres-premiers, congruences, petit-theoreme-de-fermat, bezout, pgcd, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf (le corrigé utilise l'ordre multiplicatif, remplacé ici par Fermat et Bézout)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Trouver tous les couples $(p, q)$ de nombres premiers tels que

$$p \text{ divise } 5^q + 1 \qquad \text{et} \qquad q \text{ divise } 5^p + 1 .$$

## Hints

1. Essaie de petites valeurs : $q = 2$, puis $q = 3$. Que vaut alors $5^q + 1$, et quels nombres premiers $p$ le divisent ?
2. De « $q$ divise $5^p + 1$ », déduis que $5^{2p} \equiv 1 \pmod q$. Le petit théorème de Fermat donne une autre puissance de $5$ congrue à $1$ modulo $q$.
3. Si $5^m \equiv 1$ et $5^k \equiv 1 \pmod q$, montre avec le théorème de Bézout que $5^{d} \equiv 1 \pmod q$, où $d = \mathrm{PGCD}(m, k)$.
4. Le nombre $\mathrm{PGCD}(2p, q - 1)$ divise $2p$. Montre que si $p$ ne divise pas $q - 1$, alors $q$ vaut $2$ ou $3$. Peut-on avoir à la fois « $p$ divise $q - 1$ » et « $q$ divise $p - 1$ » ?

## Solution

**Réponse : les six couples $(2, 2)$, $(3, 3)$, $(2, 13)$, $(13, 2)$, $(3, 7)$ et $(7, 3)$.**

On utilise le **petit théorème de Fermat** : si $q$ est un nombre premier et si $a$ n'est pas un multiple de $q$, alors $a^{q-1} \equiv 1 \pmod q$.

### Étape 1 : ni $p$ ni $q$ ne vaut $5$

Si $q = 5$, alors $5^p + 1 \equiv 1 \pmod 5$, donc $5$ ne divise pas $5^p + 1$ : impossible. De même $p \neq 5$.

### Étape 2 : un lemme sur les puissances congrues à $1$

**Lemme.** Soit $q \geqslant 2$ et $a$ deux entiers. Si $a^m \equiv 1$ et $a^k \equiv 1 \pmod q$, avec $m, k \geqslant 1$, alors $a^d \equiv 1 \pmod q$, où $d = \mathrm{PGCD}(m, k)$.

*Preuve.* D'après le théorème de Bézout, il existe des entiers $u$ et $w$ tels que $um + wk = d$. Pour tout entier $j$, le couple $(u + jk,\ w - jm)$ convient aussi. En prenant $j$ assez grand, on peut donc supposer $u > 0$ et $w < 0$. Posons $v = -w > 0$ : on a $um = d + vk$, avec des exposants tous positifs. Alors
$$1 \equiv \left(a^m\right)^u = a^{um} = a^d \times \left(a^k\right)^v \equiv a^d \pmod q .$$

### Étape 3 : l'un des deux nombres vaut $2$ ou $3$

Comme $q$ divise $5^p + 1$, il divise aussi $(5^p + 1)(5^p - 1) = 5^{2p} - 1$. Donc
$$5^{2p} \equiv 1 \pmod q .$$
Comme $q$ est premier et différent de $5$, le petit théorème de Fermat donne
$$5^{q-1} \equiv 1 \pmod q .$$
D'après le lemme, $5^d \equiv 1 \pmod q$ avec $d = \mathrm{PGCD}(2p, q - 1)$.

Le nombre $d$ divise $2p$, donc $d \in \{1, 2, p, 2p\}$ (quand $p = 2$, cela donne $d \in \{1, 2, 4\}$).

**Si $p$ ne divise pas $q - 1$**, alors $d$ ne peut être ni $p$ ni $2p$ (ni $4$ quand $p = 2$), car $d$ divise $q - 1$. Donc $d = 1$ ou $d = 2$. Ainsi $q$ divise $5^1 - 1 = 4$ ou $5^2 - 1 = 24$. Dans les deux cas, $q$ divise $24 = 2^3 \times 3$, donc **$q = 2$ ou $q = 3$**.

Les conditions de l'énoncé ne changent pas quand on échange $p$ et $q$. Par le même raisonnement : **si $q$ ne divise pas $p - 1$, alors $p = 2$ ou $p = 3$.**

Enfin, on ne peut pas avoir à la fois « $p$ divise $q - 1$ » et « $q$ divise $p - 1$ ». Sinon $p \leqslant q - 1$ et $q \leqslant p - 1$, ce qui donne $p \leqslant p - 2$, absurde.

Donc l'une des deux phrases « $p$ ne divise pas $q - 1$ » ou « $q$ ne divise pas $p - 1$ » est vraie, et **l'un des nombres $p$, $q$ vaut $2$ ou $3$.**

### Étape 4 : on traite les petits cas

**Si $q = 2$.** Alors $p$ divise $5^2 + 1 = 26 = 2 \times 13$, donc $p = 2$ ou $p = 13$.

- $(2, 2)$ : $2$ divise $26$. Ça marche.
- $(13, 2)$ : $13$ divise $26$, et $2$ divise $5^{13} + 1$, qui est pair. Ça marche.

**Si $q = 3$.** Alors $p$ divise $5^3 + 1 = 126 = 2 \times 3^2 \times 7$, donc $p \in \{2, 3, 7\}$.

- $(2, 3)$ : il faudrait que $3$ divise $5^2 + 1 = 26$. Non.
- $(3, 3)$ : $3$ divise $126$. Ça marche.
- $(7, 3)$ : $7$ divise $126$. De plus $5 \equiv -1 \pmod 3$, donc $5^7 \equiv (-1)^7 = -1$, et $3$ divise $5^7 + 1$. Ça marche.

**Si $p = 2$ ou $p = 3$**, on échange les rôles de $p$ et $q$ dans ce qui précède, et on obtient $(2, 2)$, $(2, 13)$, $(3, 3)$ et $(3, 7)$.

### Conclusion

Les couples cherchés sont
$$(2, 2), \quad (3, 3), \quad (2, 13), \quad (13, 2), \quad (3, 7), \quad (7, 3) .$$

## Going further

1. Dans le corrigé d'origine, on utilise **l'ordre** de $5$ modulo $q$ : le plus petit entier $\omega \geqslant 1$ tel que $5^{\omega} \equiv 1 \pmod q$. Montre, avec le lemme de l'étape 2, que $5^m \equiv 1 \pmod q$ si et seulement si $\omega$ divise $m$.
2. Même question en remplaçant $5$ par $2$ : trouver tous les nombres premiers $p$ et $q$ tels que $p$ divise $2^q + 1$ et $q$ divise $2^p + 1$.
