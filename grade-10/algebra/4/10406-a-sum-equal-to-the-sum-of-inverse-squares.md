---
id: "10406"
title: "Une somme égale à la somme des inverses des carrés"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, moyenne, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 4 (algèbre)"
  reference: "2017-10_ofm-2012-2013-envoi4.pdf, Exercices Communs, exercice 6 ; corrigé 2017-10_ofm-2012-2013-envoi4-corrige.pdf (qui passe par l'inégalité entre moyennes arithmétique, géométrique et harmonique ; la solution ci-dessous l'évite)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi4.pdf"
---

## Statement

Soient $n \geqslant 1$ un entier et $u_1, u_2, \ldots, u_n$ des réels tels que $0 < u_1 < u_2 < \cdots < u_n$ et

$$u_1 + u_2 + \cdots + u_n = \frac{1}{u_1^2} + \frac{1}{u_2^2} + \cdots + \frac{1}{u_n^2} .$$

Montrer que, pour tout entier $k$ compris entre $1$ et $n$, on peut choisir $k$ nombres parmi $u_1, u_2, \ldots, u_n$ dont la somme est supérieure ou égale à $k$.

## Hints

1. Commence par le cas $k = n$ : il faut montrer que $u_1 + u_2 + \cdots + u_n \geqslant n$. Que se passe-t-il quand $n = 1$ ?
2. Un petit $u$ donne un grand $\frac{1}{u^2}$. Cherche une inégalité valable pour **tout** $u > 0$, qui compare $\frac{1}{u^2}$ à une expression de la forme $a - b\,u$, avec égalité pour $u = 1$.
3. Montre que $\frac{1}{u^2} \geqslant 3 - 2u$ pour tout $u > 0$. Multiplie par $u^2$ et factorise en utilisant que $u = 1$ annule l'expression.
4. Écris cette inégalité pour chaque $u_i$ et additionne.
5. Pour $k < n$, les nombres sont rangés dans l'ordre croissant : prends les $k$ plus grands. Compare leur moyenne à la moyenne de tous.

## Solution

Notons $S = u_1 + u_2 + \cdots + u_n$.

**Étape 1 : une inégalité pour un seul nombre.** Montrons que, pour tout réel $u > 0$,

$$\frac{1}{u^2} \geqslant 3 - 2u . \qquad (\star)$$

Comme $u^2 > 0$, cela revient à $1 \geqslant 3u^2 - 2u^3$, c'est-à-dire à $2u^3 - 3u^2 + 1 \geqslant 0$. Or ce polynôme s'annule en $u = 1$, et on vérifie en développant que

$$2u^3 - 3u^2 + 1 = (u - 1)^2\,(2u + 1) .$$

Pour $u > 0$, le carré $(u-1)^2$ est positif et $2u + 1$ aussi. Leur produit est positif, ce qui prouve $(\star)$.

(D'où vient $3 - 2u$ ? C'est l'équation de la tangente en $u = 1$ à la courbe de $u \mapsto \frac{1}{u^2}$. La courbe reste au-dessus de cette tangente.)

**Étape 2 : le cas $k = n$.** Écrivons $(\star)$ pour $u_1$, $u_2$, …, $u_n$ et additionnons :

$$\frac{1}{u_1^2} + \cdots + \frac{1}{u_n^2} \geqslant 3n - 2(u_1 + \cdots + u_n) .$$

Le membre de gauche vaut $S$ par hypothèse, donc $S \geqslant 3n - 2S$, soit $3S \geqslant 3n$ :

$$S \geqslant n .$$

Les $n$ nombres eux-mêmes ont donc une somme au moins égale à $n$.

**Étape 3 : le cas $k < n$.** Prenons les $k$ plus grands nombres, $u_{n-k+1}, \ldots, u_n$. Notons $T$ leur somme et $R$ la somme des $n - k$ autres, de sorte que $S = T + R$.

Chacun des $k$ grands nombres est supérieur à chacun des $n - k$ petits. Donc la moyenne des grands, $A = \frac{T}{k}$, est au moins égale au plus petit des grands, qui dépasse le plus grand des petits, qui est lui-même au moins égal à la moyenne des petits, $B = \frac{R}{n - k}$. Ainsi $A \geqslant B$, et

$$S = kA + (n - k)B \leqslant kA + (n - k)A = nA .$$

Avec l'étape 2, $nA \geqslant S \geqslant n$, donc $A \geqslant 1$, et $T = kA \geqslant k$.

**Conclusion.** Pour tout $k$ entre $1$ et $n$, les $k$ plus grands des nombres $u_1, \ldots, u_n$ ont une somme supérieure ou égale à $k$.

## Going further

1. Montrer de la même manière que si $u_1 + \cdots + u_n = \frac{1}{u_1} + \cdots + \frac{1}{u_n}$, avec tous les $u_i > 0$, alors $u_1 + \cdots + u_n \geqslant n$. Quelle tangente utiliser ?
2. Sous l'hypothèse de l'exercice, montrer sans calcul que $u_1 \leqslant 1 \leqslant u_n$. (Que se passerait-il si tous les $u_i$ étaient plus grands que $1$ ?)
