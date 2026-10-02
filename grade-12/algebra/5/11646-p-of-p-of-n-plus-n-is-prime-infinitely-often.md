---
id: "11646"
title: "P(P(n) + n) est premier pour une infinité d'entiers n"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [maths-expertes, polynome, nombres-premiers, racines, degre, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Trouver tous les polynômes $P$ à coefficients entiers tels que le nombre $P\left(P(n) + n\right)$ est un nombre premier pour une infinité d'entiers $n$.

## Hints

1. Commence par les polynômes constants, puis par ceux de degré $1$ : si $P(X) = aX + b$, calcule $P\left(P(n) + n\right)$ et factorise-le.
2. Pour un entier $i \geqslant 1$, le polynôme $(X + P(X))^i - X^i$ est un multiple de $P(X)$. Pourquoi ? Déduis-en que $P\left(X + P(X)\right) = P(X)\,Q(X)$ pour un polynôme $Q$ à coefficients entiers.
3. Si $P(n)\,Q(n)$ est un nombre premier, l'un des deux facteurs vaut $1$ ou $-1$. Combien d'entiers $n$ peuvent vérifier $P(n) = \pm 1$ ?
4. Montre que $Q$ est constant, puis compare les degrés de $P\left(X + P(X)\right)$ et de $P(X)$.

## Solution

Dans tout l'exercice, un nombre premier est un entier $p \geqslant 2$ dont les seuls diviseurs positifs sont $1$ et $p$. On utilise deux résultats du cours.

- Pour tous nombres $u$ et $v$ et tout entier $i \geqslant 1$, $u^i - v^i = (u - v)\left(u^{i-1} + u^{i-2}v + \cdots + v^{i-1}\right)$.
- Un polynôme non nul de degré $d$ a au plus $d$ racines.

**Étape 1 : les polynômes constants.** Si $P$ est constant égal à $c$, alors $P\left(P(n) + n\right) = c$ pour tout $n$. **Les polynômes constants égaux à un nombre premier conviennent**, et ce sont les seuls polynômes constants qui conviennent.

**Étape 2 : les polynômes de degré 1.** Soit $P(X) = aX + b$ avec $a \neq 0$. Alors
$$P\left(P(n) + n\right) = a\left((a + 1)\,n + b\right) + b = a(a + 1)\,n + (a + 1)\,b = (a + 1)(an + b).$$
L'égalité $an + b = 1$, ou $an + b = -1$, n'a lieu que pour au plus une valeur de $n$ chacune, puisque $a \neq 0$. Pour une infinité d'entiers $n$, on a donc $|an + b| \geqslant 2$, et pour que le produit soit premier pour une infinité de $n$, il faut $a + 1 = 1$ ou $a + 1 = -1$. Comme $a \neq 0$, cela donne $a = -2$, et alors
$$P\left(P(n) + n\right) = -(-2n + b) = 2n - b.$$

- Si $b$ est pair, $2n - b$ est pair, donc premier seulement s'il vaut $2$, ce qui n'arrive que pour une valeur de $n$.
- Si $b$ est impair, pour tout nombre premier impair $p$, l'entier $n = (p + b)/2$ donne $2n - b = p$. Il y a une infinité de nombres premiers impairs, donc une infinité de tels $n$.

**Les polynômes $P(X) = -2X + b$ avec $b$ impair conviennent**, et ce sont les seuls de degré $1$.

**Étape 3 : $P(X + P(X))$ est un multiple de $P(X)$.** Soit maintenant $P$ de degré $k \geqslant 2$, que l'on écrit $P(X) = a_0 + a_1 X + \cdots + a_k X^k$ avec des $a_i$ entiers et $a_k \neq 0$. Pour $i \geqslant 1$, la factorisation rappelée plus haut, avec $u = X + P(X)$ et $v = X$, donne
$$\left(X + P(X)\right)^i - X^i = P(X)\,Q_i(X),$$
où $Q_i$ est un polynôme à coefficients entiers. En multipliant par $a_i$ et en additionnant pour $i = 1, \ldots, k$ :
$$P\left(X + P(X)\right) - P(X) = P(X) \sum_{i=1}^{k} a_i\,Q_i(X).$$
Donc $P\left(X + P(X)\right) = P(X)\,Q(X)$, avec $Q(X) = 1 + \sum_{i=1}^{k} a_i\,Q_i(X)$ à coefficients entiers.

**Étape 4 : $Q$ est constant.** Supposons que $P\left(P(n) + n\right) = P(n)\,Q(n)$ soit un nombre premier $p$. Les deux entiers $P(n)$ et $Q(n)$ ont pour produit $p$, donc l'un d'eux vaut $1$ ou $-1$.

Les polynômes $P - 1$ et $P + 1$ sont de degré $k$, donc non nuls : il n'y a qu'un nombre fini d'entiers $n$ tels que $P(n) = 1$ ou $P(n) = -1$. Comme il y a une infinité de $n$ pour lesquels $P(n)Q(n)$ est premier, il y en a une infinité pour lesquels $Q(n) = 1$ ou $Q(n) = -1$. L'un des polynômes $Q - 1$ ou $Q + 1$ a donc une infinité de racines : il est nul. Ainsi $Q$ est constant, égal à $1$ ou à $-1$, et $P\left(X + P(X)\right) = \pm P(X)$.

**Étape 5 : les degrés.** Comme $k \geqslant 2$, le polynôme $X + P(X)$ est de degré $k$, de coefficient dominant $a_k$. Le terme de plus haut degré de $P\left(X + P(X)\right)$ vient de $a_k \left(X + P(X)\right)^k$, et vaut $a_k \times a_k^k\,X^{k^2}$, qui n'est pas nul. Donc $P\left(X + P(X)\right)$ est de degré $k^2$. Mais il est aussi égal à $\pm P(X)$, de degré $k$. On aurait $k^2 = k$, donc $k = 1$, ce qui contredit $k \geqslant 2$. **Aucun polynôme de degré au moins $2$ ne convient.**

**Conclusion : les polynômes cherchés sont les polynômes constants égaux à un nombre premier, et les polynômes $P(X) = -2X + b$ avec $b$ un entier impair.**

## Going further

L'idée de l'étape 3 est qu'un entier $n + P(n)$ « ressemble » à $n$ pour la divisibilité par $P(n)$ : en termes de congruences, $n + P(n) \equiv n \pmod{P(n)}$, donc $P\left(n + P(n)\right) \equiv P(n) \equiv 0 \pmod{P(n)}$. Le nombre $P\left(n + P(n)\right)$ est donc toujours un multiple de $P(n)$, ce qui empêche, sauf cas particulier, qu'il soit premier.
