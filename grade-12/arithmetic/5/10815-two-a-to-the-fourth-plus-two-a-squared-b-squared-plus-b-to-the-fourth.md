---
id: "10815"
title: "2a⁴ + 2a²b² + b⁴ = c² n'a pas de solution avec a non nul"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [triplets-pythagoriciens, descente-infinie, congruences, pgcd, puissances, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 4 (arithmétique)"
  reference: "2017-10_ofm-2013-2014-envoi-4.pdf, Exercices du groupe A, exercice 8 (Corée 2003) ; corrigé 2017-10_ofm-2013-2014-envoi-4-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-4.pdf"
---

## Statement

Trouver tous les triplets d'entiers relatifs $(a, b, c)$ tels que $a \neq 0$ et

$$2a^4 + 2a^2 b^2 + b^4 = c^2 .$$

## Hints

1. Suppose qu'il existe des solutions, et prends-en une avec $a > 0$ le plus petit possible. Montre que $a$ et $b$ sont alors premiers entre eux.
2. Regarde l'équation modulo $8$ pour montrer que $a$ est pair et $b$ impair.
3. Récris l'équation sous la forme $(a^2)^2 + (a^2 + b^2)^2 = c^2$. C'est un triangle rectangle à côtés entiers : décris ces triangles à l'aide de deux entiers $u$ et $v$.
4. Tu dois arriver à $a = 2mn$, puis fabriquer une nouvelle solution $(k, l, m)$ de la même équation avec $0 < k < a$. Pourquoi est-ce une contradiction ?

## Solution

**Réponse : il n'existe aucun triplet solution avec $a \neq 0$.**

La preuve est une **descente infinie** : à partir d'une solution, on en fabrique une autre où le premier nombre est plus petit, ce qui est impossible si l'on est parti de la plus petite. On a besoin de deux lemmes.

### Deux lemmes

**Lemme 1.** Soient $x$ et $y$ deux entiers strictement positifs premiers entre eux.

- (a) Si $xy$ est un carré, alors $x$ et $y$ sont des carrés.
- (b) Si $xy = 2N^4$ pour un entier $N$, alors l'un des deux nombres est de la forme $2k^4$ et l'autre de la forme $l^4$, avec $k, l$ entiers strictement positifs.

*Preuve.* Comme $x$ et $y$ sont premiers entre eux, chaque nombre premier qui divise $xy$ divise un seul des deux, et son exposant dans $xy$ se retrouve en entier dans $x$ ou dans $y$. Pour (a), tous les exposants de $xy$ sont pairs, donc tous ceux de $x$ et de $y$ aussi. Pour (b), l'un des deux nombres, disons $x$, est pair, et l'autre est impair. Pour un premier $r$ impair, l'exposant de $r$ dans $2N^4$ est un multiple de $4$. L'exposant de $2$ dans $2N^4$ est $1$ plus un multiple de $4$, et il est tout entier dans $x$. Donc $y$ est une puissance quatrième, et $x$ est le double d'une puissance quatrième.

**Lemme 2 (triangles rectangles à côtés entiers).** Soient $X$, $Y$, $Z$ des entiers strictement positifs tels que $X^2 + Y^2 = Z^2$, avec $\mathrm{PGCD}(X, Y) = 1$ et $X$ pair. Alors il existe des entiers $u > v > 0$, premiers entre eux et de parités différentes, tels que
$$X = 2uv, \qquad Y = u^2 - v^2, \qquad Z = u^2 + v^2 .$$

*Preuve.* Comme $X$ est pair et premier avec $Y$, l'entier $Y$ est impair, donc $Z^2 = X^2 + Y^2$ est impair et $Z$ aussi. Ainsi $Z + Y$ et $Z - Y$ sont pairs, et $Z > Y$. Posons $s = (Z + Y) / 2$ et $t = (Z - Y) / 2$, deux entiers strictement positifs. On a
$$\left(\frac{X}{2}\right)^2 = \frac{Z^2 - Y^2}{4} = s\,t .$$
Un diviseur commun de $s$ et $t$ divise $s + t = Z$ et $s - t = Y$. Or un nombre premier qui divise $Y$ et $Z$ divise $X^2 = Z^2 - Y^2$, donc $X$ : c'est impossible puisque $\mathrm{PGCD}(X, Y) = 1$. Donc $s$ et $t$ sont premiers entre eux, et le lemme 1 (a) donne $s = u^2$ et $t = v^2$. Alors $Z = s + t = u^2 + v^2$, $Y = s - t = u^2 - v^2$ (donc $u > v$), et $X^2 = 4st$ donne $X = 2uv$. Enfin $u$ et $v$ sont premiers entre eux (comme $s$ et $t$), et de parités différentes puisque $Y = u^2 - v^2$ est impair.

### Étape 1 : une plus petite solution

Supposons qu'il existe des solutions avec $a \neq 0$. Changer le signe de $a$, de $b$ ou de $c$ donne encore une solution. On choisit une solution dont le nombre $|a|$ est le plus petit possible, et l'on peut supposer
$$a > 0, \qquad b \geqslant 0, \qquad c > 0$$
(on a $c \neq 0$ car $c^2 \geqslant 2a^4 > 0$).

### Étape 2 : $a$ et $b$ sont premiers entre eux

Soit $d = \mathrm{PGCD}(a, b)$, et $a = d\,a'$, $b = d\,b'$. Alors $c^2 = d^4 \left(2a'^4 + 2a'^2 b'^2 + b'^4\right)$, donc $d^4$ divise $c^2$. En comparant les exposants dans les décompositions en facteurs premiers, $d^2$ divise $c$. Ainsi $\left(a', b', c/d^2\right)$ est encore une solution, avec $0 < a' = a/d$. Par minimalité de $a$, on a $d = 1$.

### Étape 3 : $a$ est pair et $b$ impair

Rappelons qu'un carré est congru à $0$, $1$ ou $4$ modulo $8$, et qu'un carré impair est congru à $1$. Supposons $a$ impair : $a^2 \equiv 1$ et $a^4 \equiv 1 \pmod 8$.

- Si $b$ est pair, $b^2 \equiv 0$ ou $4$, donc $2a^2b^2 \equiv 2b^2 \equiv 0$ et $b^4 \equiv 0 \pmod 8$. La somme vaut $2 + 0 + 0 = 2 \pmod 8$.
- Si $b$ est impair, la somme vaut $2 + 2 + 1 = 5 \pmod 8$.

Dans les deux cas, ce n'est pas un carré. Donc **$a$ est pair**, et, puisque $\mathrm{PGCD}(a, b) = 1$, **$b$ est impair**. En particulier $b > 0$.

### Étape 4 : un triangle rectangle

On remarque que $(a^2)^2 + (a^2 + b^2)^2 = a^4 + a^4 + 2a^2b^2 + b^4$. L'équation s'écrit donc
$$(a^2)^2 + (a^2 + b^2)^2 = c^2 .$$
Posons $X = a^2$ (pair), $Y = a^2 + b^2$ (impair) et $Z = c$. Un nombre premier qui diviserait $X$ et $Y$ diviserait $a^2$ et $b^2$, donc $a$ et $b$ : il n'y en a pas, donc $\mathrm{PGCD}(X, Y) = 1$. Le lemme 2 donne des entiers $u > v > 0$, premiers entre eux et de parités différentes, avec
$$a^2 = 2uv, \qquad a^2 + b^2 = u^2 - v^2, \qquad c = u^2 + v^2 .$$

### Étape 5 : $u$ est impair et $v$ est pair

Comme $a$ est pair et $b$ impair, $a^2 + b^2 \equiv 0 + 1 = 1 \pmod 4$. Si $u$ était pair et $v$ impair, on aurait $u^2 - v^2 \equiv 0 - 1 \equiv 3 \pmod 4$. Donc **$u$ est impair et $v$ pair.**

### Étape 6 : $a = 2mn$

Écrivons $v = 2w$. Alors $a^2 = 4uw$, donc $(a / 2)^2 = u\,w$, avec $u$ et $w$ premiers entre eux (un diviseur commun diviserait $u$ et $v$). Le lemme 1 (a) donne $u = m^2$ et $w = n^2$, avec $m, n > 0$ premiers entre eux, et $m$ impair puisque $u$ l'est. Ainsi
$$u = m^2, \qquad v = 2n^2, \qquad a = 2mn .$$

### Étape 7 : une équation en $x$ et $y$

De $a^2 + b^2 = u^2 - v^2$ et $a^2 = 2uv$, on tire $b^2 = u^2 - v^2 - 2uv$. Donc
$$(u - v)^2 - b^2 = u^2 - 2uv + v^2 - \left(u^2 - v^2 - 2uv\right) = 2v^2 = 8n^4 ,$$
c'est-à-dire
$$(u - v + b)(u - v - b) = 8n^4 .$$
Le nombre $u - v = m^2 - 2n^2$ est impair, et $b$ aussi, donc $u - v + b$ et $u - v - b$ sont pairs. Posons
$$x = \frac{u - v + b}{2}, \qquad y = \frac{u - v - b}{2} .$$
Ce sont des entiers, et
$$xy = 2n^4, \qquad x - y = b, \qquad x + y = u - v = m^2 - 2n^2 .$$
Comme $u > v$ et $b > 0$, on a $x > 0$, puis $y = 2n^4 / x > 0$.

*$x$ et $y$ sont premiers entre eux.* Un nombre premier $r$ qui divise $x$ et $y$ divise $x - y = b$, qui est impair, donc $r \neq 2$. Il divise aussi $xy = 2n^4$, donc il divise $n$, et donc $a = 2mn$. Il diviserait $a$ et $b$, ce qui est impossible.

### Étape 8 : une nouvelle solution, plus petite

Le lemme 1 (b) montre que l'un des nombres $x$, $y$ vaut $2k^4$ et l'autre $l^4$, avec $k, l > 0$. Alors $2k^4 l^4 = xy = 2n^4$, donc $n = kl$. En additionnant :
$$2k^4 + l^4 = x + y = m^2 - 2n^2 = m^2 - 2k^2 l^2,$$
c'est-à-dire
$$2k^4 + 2k^2 l^2 + l^4 = m^2 .$$
Le triplet $(k, l, m)$ est donc une solution de l'équation, avec $k \neq 0$. Or
$$0 < k \leqslant kl = n \leqslant mn < 2mn = a .$$
C'est contraire au choix de $a$ comme plus petite valeur possible.

### Conclusion

L'hypothèse de départ est absurde : **il n'existe aucun triplet d'entiers $(a, b, c)$ avec $a \neq 0$ et $2a^4 + 2a^2 b^2 + b^4 = c^2$.**

## Going further

1. Que sont les solutions avec $a = 0$ ?
2. La même méthode, plus courte, montre un résultat célèbre de Fermat : l'équation $x^4 + y^4 = z^2$ n'a pas de solution en entiers avec $xy \neq 0$. *Indication : prends une solution avec $z > 0$ le plus petit possible, applique le lemme 2 à $(x^2)^2 + (y^2)^2 = z^2$, puis applique-le une seconde fois.*
3. Déduis du point 2 que l'équation $x^4 + y^4 = z^4$ n'a pas de solution en entiers non nuls.
