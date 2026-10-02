---
id: "10452"
title: "(X + 1)P(X − 1) − (X − 1)P(X) est constant"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynomes, coefficients, degre, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 3 (algèbre)"
  reference: "2017-12_pofm-2017-2018-envoi3.pdf, Exercices du groupe A, exercice 7 ; corrigé 2018-01_pofm-2017-2018-envoi3-corrige.pdf (qui donne aussi une solution par factorisation ; ici on suit la solution par les coefficients, avec le développement de (X − 1)^d démontré par récurrence)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/12/pofm-2017-2018-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-12_pofm-2017-2018-envoi3.pdf"
---

## Statement

Trouver tous les polynômes $P$ à coefficients réels tels que le polynôme

$$(X + 1)\,P(X - 1) - (X - 1)\,P(X)$$

soit constant.

## Hints

1. Commence par les petits degrés : que se passe-t-il si $P$ est constant ? Si $P$ est de degré $1$ ?
2. Montre par récurrence que $(X - 1)^d = X^d - d\,X^{d-1} + (\text{termes de degré au plus } d - 2)$.
3. Soit $d$ le degré de $P$ et $a_d$ son coefficient dominant. Calcule les coefficients de $X^{d+1}$ et de $X^d$ dans le polynôme de l'énoncé. Pour quelles valeurs de $d$ celui de $X^d$ peut-il être nul ?
4. Il reste à traiter à la main le cas $P = aX^2 + bX + c$.

## Solution

Notons $E(X) = (X + 1)\,P(X - 1) - (X - 1)\,P(X)$. Un polynôme est constant exactement quand tous ses coefficients devant $X, X^2, X^3, \ldots$ sont nuls.

**Le polynôme nul et les constantes.** Si $P = k$ est constant (éventuellement nul), alors $E(X) = (X + 1)k - (X - 1)k = 2k$, qui est constant. Tous les polynômes constants conviennent.

Supposons désormais que $P$ est de degré $d \geqslant 1$ et écrivons

$$P(X) = a_d X^d + a_{d-1} X^{d-1} + (\text{termes de degré au plus } d - 2), \qquad a_d \neq 0 .$$

**Étape 1 : un développement.** Montrons par récurrence sur $n \geqslant 1$ que

$$(X - 1)^n = X^n - n\,X^{n-1} + (\text{termes de degré au plus } n - 2) .$$

Pour $n = 1$, c'est $X - 1$. Si c'est vrai au rang $n$, on multiplie par $X - 1$ :

$$(X - 1)^{n+1} = X^{n+1} - n\,X^n - X^n + (\text{termes de degré au plus } n - 1) = X^{n+1} - (n + 1)\,X^n + \cdots$$

ce qui est la propriété au rang $n + 1$.

**Étape 2 : les deux coefficients du haut.** D'après l'étape 1, $a_d (X - 1)^d = a_d X^d - d\,a_d X^{d-1} + \cdots$, et $a_{d-1}(X - 1)^{d-1} = a_{d-1} X^{d-1} + \cdots$, les autres termes de $P(X - 1)$ étant de degré au plus $d - 2$. Donc

$$P(X - 1) = a_d X^d + (a_{d-1} - d\,a_d)\,X^{d-1} + (\text{termes de degré au plus } d - 2) .$$

On en déduit, en multipliant par $X + 1$ et en ne gardant que les termes de degré $d + 1$ et $d$ :

$$(X + 1)\,P(X - 1) = a_d X^{d+1} + (a_{d-1} - d\,a_d + a_d)\,X^d + \cdots$$

De même, en multipliant $P(X)$ par $X - 1$ :

$$(X - 1)\,P(X) = a_d X^{d+1} + (a_{d-1} - a_d)\,X^d + \cdots$$

Dans la différence $E(X)$, le coefficient de $X^{d+1}$ vaut $a_d - a_d = 0$, et celui de $X^d$ vaut

$$(a_{d-1} - d\,a_d + a_d) - (a_{d-1} - a_d) = (2 - d)\,a_d .$$

**Étape 3 : le degré vaut 2.** Comme $d \geqslant 1$, le terme en $X^d$ n'est pas constant. Si $E$ est constant, ce coefficient doit donc être nul : $(2 - d)\,a_d = 0$. Comme $a_d \neq 0$, on obtient $d = 2$.

**Étape 4 : le cas du degré 2.** Écrivons $P(X) = aX^2 + bX + c$ avec $a \neq 0$. Alors $P(X - 1) = aX^2 + (b - 2a)X + (a - b + c)$, et en développant,

$$(X + 1)\,P(X - 1) = aX^3 + (b - a)X^2 + (c - a)X + (a - b + c) ,$$

$$(X - 1)\,P(X) = aX^3 + (b - a)X^2 + (c - b)X - c .$$

Donc $E(X) = (b - a)X + (a - b + 2c)$. Ce polynôme est constant si et seulement si $b = a$, et il vaut alors $2c$. Les polynômes de degré $2$ qui conviennent sont donc les $aX^2 + aX + c = aX(X + 1) + c$, avec $a \neq 0$.

**Conclusion.** Les polynômes qui conviennent sont exactement les

$$P(X) = a\,X(X + 1) + c, \qquad a, c \in \mathbb{R} .$$

Le cas $a = 0$ donne les constantes, et le cas $a \neq 0$ les polynômes de degré $2$ de l'étape 4. Pour chacun d'eux, $E(X)$ est la constante $2c$.

## Going further

1. Une autre méthode. En donnant à $X$ les valeurs $1$ puis $-1$ dans $E(X) = 2k$, montrer que $P(0) = P(-1) = k$, puis que $P(X) = X(X + 1)\,Q(X) + k$ pour un polynôme $Q$. Que doit vérifier $Q$ ?
2. Trouver tous les polynômes $P$ à coefficients réels tels que $E(X)$ soit de degré au plus $1$.
