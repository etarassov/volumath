---
id: "12216"
title: "Si p divise uv − 1, alors p divise P(u)P(v) − 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, polynomes, congruences, nombres premiers, inverse modulo p, polynome reciproque, racines d un polynome]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe A et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier.pdf, exercice 2 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier.pdf"
---

## Statement

Trouver tous les polynômes $P$ à coefficients entiers qui ont la propriété suivante :

> pour tout nombre premier $p$ et tous entiers relatifs $u$ et $v$ tels que $p$ divise $uv - 1$, le nombre $p$ divise aussi $P(u)P(v) - 1$.

## Hints

1. Vérifie que $P = X^2$ convient. Avec $u = v = 1$, que peut-on dire de $P(1)$ ? Déduis-en que $P = X + 1$ ne convient pas.
2. Écris $P = a_0 + a_1X + \cdots + a_nX^n$ avec $a_n \neq 0$, et introduis le polynôme « retourné » $R = a_n + a_{n-1}X + \cdots + a_0X^n$.
3. Fixe un entier $x \neq 0$ et un nombre premier $p$ qui ne divise pas $x$. Prends $y$ tel que $xy \equiv 1 \pmod p$. Montre que $x^nP(y) \equiv R(x) \pmod p$, puis que $p$ divise $P(x)R(x) - x^n$.
4. En choisissant $p$ très grand, montre que $P(x)R(x) = x^n$ pour tout entier $x \neq 0$. Compare ensuite les degrés.

## Solution

**Réponse : les polynômes $P = X^n$ et $P = -X^n$, pour $n \in \mathbb{N}$** (y compris les constantes $1$ et $-1$, pour $n = 0$).

**Ces polynômes conviennent.** Si $p$ divise $uv - 1$, alors $uv \equiv 1 \pmod p$, donc $u^nv^n = (uv)^n \equiv 1 \pmod p$. Pour $P = X^n$ comme pour $P = -X^n$, on a $P(u)P(v) = u^nv^n$, et $p$ divise bien $P(u)P(v) - 1$.

**Il n'y en a pas d'autres.** Soit $P$ un polynôme qui a la propriété. Il n'est pas nul : avec $p = 2$ et $u = v = 1$, le nombre $2$ divise $uv - 1 = 0$, donc il doit diviser $P(1)^2 - 1$, ce qui est faux si $P = 0$. Écrivons

$$P = a_0 + a_1X + \cdots + a_nX^n, \qquad a_n \neq 0,$$

où $n \geqslant 0$ est le degré de $P$. Toutes les congruences ci-dessous sont modulo un nombre premier $p$.

*Étape 1. Le polynôme retourné.* On pose

$$R = a_n + a_{n-1}X + \cdots + a_1X^{n-1} + a_0X^n,$$

c'est-à-dire que le coefficient de $X^{n-k}$ dans $R$ est $a_k$. C'est encore un polynôme à coefficients entiers.

*Étape 2. Une congruence.* Fixons un entier $x \neq 0$, et un nombre premier $p$ qui ne divise pas $x$. Comme $p$ est premier, $x$ a un inverse modulo $p$ : il existe un entier $y$ tel que $xy \equiv 1$ (d'après le théorème de Bézout, ou en prenant $y = x^{p-2}$ grâce au petit théorème de Fermat).

D'une part, comme $k \leqslant n$ pour chaque terme,

$$x^nP(y) = \sum_{k=0}^{n} a_k\,x^n y^k = \sum_{k=0}^{n} a_k\,x^{n-k}\,(xy)^k \equiv \sum_{k=0}^{n} a_k\,x^{n-k} = R(x).$$

D'autre part, $p$ divise $xy - 1$, donc la propriété, avec $u = x$ et $v = y$, donne $P(x)P(y) \equiv 1$. En multipliant par $x^n$,

$$x^n \equiv x^n\,P(x)\,P(y) = P(x) \times x^nP(y) \equiv P(x)\,R(x).$$

Donc **$p$ divise l'entier $D = P(x)R(x) - x^n$**.

*Étape 3. On choisit $p$ très grand.* L'entier $x \neq 0$ est fixé, donc $D$ aussi. Il existe une infinité de nombres premiers, donc on peut choisir $p$ premier plus grand que $|x|$ et plus grand que $|D|$. Comme $0 < |x| < p$, ce nombre $p$ ne divise pas $x$, et l'étape 2 s'applique : $p$ divise $D$. Or un multiple non nul de $p$ a une valeur absolue au moins égale à $p$, et $|D| < p$. Donc $D = 0$ :

$$P(x)\,R(x) = x^n \qquad \text{pour tout entier } x \neq 0.$$

*Étape 4. Les coefficients.* Le polynôme $PR - X^n$ s'annule en tous les entiers non nuls, c'est-à-dire en une infinité de points. Un polynôme non nul n'a qu'un nombre fini de racines, donc $PR - X^n$ est le polynôme nul : $P\,R = X^n$.

En comparant les degrés, $\deg P + \deg R = n$ avec $\deg P = n$, donc $R$ est un polynôme constant. Or les coefficients de $X^n, X^{n-1}, \ldots, X$ dans $R$ sont $a_0, a_1, \ldots, a_{n-1}$ : ils sont tous nuls. Ainsi $P = a_nX^n$ et $R = a_n$, et $PR = X^n$ devient $a_n^2X^n = X^n$, d'où $a_n^2 = 1$ et $a_n = 1$ ou $a_n = -1$.

**Conclusion.** Les polynômes cherchés sont exactement $P = X^n$ et $P = -X^n$, avec $n \in \mathbb{N}$.

## Going further

Le polynôme $R$ de l'étape 1 vérifie $R(x) = x^nP\!\left(\frac{1}{x}\right)$ pour tout réel $x \neq 0$. C'est ce qui explique la congruence de l'étape 2 : modulo $p$, le nombre $y$ joue le rôle de $\frac{1}{x}$.

L'idée de l'étape 3 sert très souvent : pour montrer qu'un entier est nul, on montre qu'il est divisible par des nombres premiers arbitrairement grands.
