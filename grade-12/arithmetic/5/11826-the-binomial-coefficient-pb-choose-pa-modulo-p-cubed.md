---
id: "11826"
title: "Le coefficient binomial « pb parmi pa » modulo p³"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [coefficients-binomiaux, congruences, nombres-premiers, formule-du-binome, polynome, inverse-modulo-p, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 15 ; corrigé 2021-04_corrige-envoi-5.pdf. Le corrigé raisonne par récurrence sur a et divise par a modulo p³, ce qui n'est pas permis lorsque p divise a : la solution ci-dessous suit une autre voie, valable dans tous les cas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soit $p \geqslant 5$ un nombre premier, et soient $a$ et $b$ deux entiers avec $1 \leqslant a \leqslant b$.

Montrer que

$$\binom{pb}{pa} \equiv \binom{b}{a} \pmod{p^3}.$$

## Hints

1. Le nombre $\binom{pb}{pa}$ est le coefficient de $x^{pa}$ dans $(1 + x)^{pb} = \left((1 + x)^p\right)^b$. Commencer par écrire $(1 + x)^p = 1 + x^p + p\,F(x)$, où $F$ est un polynôme à coefficients entiers.
2. Développer $\left((1 + x^p) + p\,F(x)\right)^b$ avec la formule du binôme. Les termes qui contiennent $p^3$ ne comptent pas. Que dire des exposants de $x$ dans $F(x)\,(1 + x^p)^{b-1}$ ?
3. Il reste à montrer que $p$ divise $\sum_{k=1}^{p-1} u_k^2$, où $u_k = \frac{1}{p}\binom{p}{k}$. Montrer que $k\,u_k \equiv \pm 1 \pmod p$, puis utiliser les inverses modulo $p$.

## Solution

Dans toute la solution, « le coefficient de $x^m$ » d'un polynôme $Q$ est noté $[x^m]\,Q$.

**Étape 1 : écrire $(1 + x)^p$.** Pour $1 \leqslant k \leqslant p - 1$, on a $k \binom{p}{k} = p \binom{p-1}{k-1}$. Donc $p$ divise $k \binom{p}{k}$, et comme $p$ ne divise pas $k$, le lemme de Gauss donne : $p$ divise $\binom{p}{k}$. On pose $u_k = \frac{1}{p}\binom{p}{k}$, qui est un entier, et l'on remarque que $u_{p-k} = u_k$. La formule du binôme donne alors

$$(1 + x)^p = 1 + x^p + p\,F(x), \qquad \text{où} \qquad F(x) = \sum_{k=1}^{p-1} u_k\, x^k .$$

Le point important : **les exposants de $x$ dans $F$ vont de $1$ à $p - 1$, aucun n'est un multiple de $p$.**

**Étape 2 : développer.** Le nombre $\binom{pb}{pa}$ est le coefficient de $x^{pa}$ dans $(1 + x)^{pb}$. Or, par la formule du binôme,

$$(1 + x)^{pb} = \left((1 + x^p) + p\,F(x)\right)^b = \sum_{j=0}^{b} \binom{b}{j}\, p^j\, F(x)^j\, (1 + x^p)^{b - j}.$$

Tous ces polynômes sont à coefficients entiers. Donc

$$\binom{pb}{pa} = \sum_{j=0}^{b} c_j, \qquad \text{avec} \qquad c_j = \binom{b}{j}\, p^j\, [x^{pa}]\left(F(x)^j (1 + x^p)^{b-j}\right).$$

Étudions les termes $c_j$ un par un.

- **$j = 0$.** $c_0 = [x^{pa}]\,(1 + x^p)^b = \binom{b}{a}$, d'après la formule du binôme en $x^p$.
- **$j = 1$.** Les exposants de $(1 + x^p)^{b-1}$ sont des multiples de $p$, ceux de $F$ sont entre $1$ et $p - 1$. Les exposants du produit sont donc de la forme $pm + k$ avec $1 \leqslant k \leqslant p - 1$ : jamais un multiple de $p$. Donc $c_1 = 0$.
- **$j \geqslant 3$.** $c_j$ est un entier multiple de $p^j$, donc de $p^3$.

Il reste donc à montrer que $c_2$ est un multiple de $p^3$.

**Étape 3 : le terme $j = 2$.** Les exposants de $F(x)^2$ vont de $2$ à $2p - 2$. Le seul multiple de $p$ parmi eux est $p$, et

$$[x^p]\,F(x)^2 = \sum_{k=1}^{p-1} u_k\, u_{p-k} = \sum_{k=1}^{p-1} u_k^2 .$$

En raisonnant comme pour $j = 1$, le coefficient de $x^{pa}$ dans $F(x)^2 (1 + x^p)^{b-2}$ ne provient que de ce terme en $x^p$, multiplié par le terme en $x^{p(a-1)}$ de $(1 + x^p)^{b-2}$. Donc

$$c_2 = p^2 \binom{b}{2} \binom{b - 2}{a - 1} \times \sum_{k=1}^{p-1} u_k^2$$

(avec la convention habituelle $\binom{n}{k} = 0$ lorsque $k > n$ ; par exemple $c_2 = 0$ si $a = b$). Il suffit donc de montrer que **$p$ divise $s = \sum_{k=1}^{p-1} u_k^2$.**

**Étape 4 : $p$ divise $s$.** D'abord, pour $1 \leqslant k \leqslant p - 1$,

$$k\, u_k = \binom{p-1}{k-1} \equiv (-1)^{k-1} \pmod p.$$

En effet, $(k-1)! \binom{p-1}{k-1} = (p-1)(p-2)\cdots(p-k+1) \equiv (-1)(-2)\cdots(-(k-1)) = (-1)^{k-1}(k-1)! \pmod p$, et l'on peut simplifier par $(k-1)!$, qui est premier avec $p$ (lemme de Gauss).

Ensuite, d'après le théorème de Bézout, chaque $k$ entre $1$ et $p - 1$ a un **inverse modulo $p$** : un unique entier $k'$ entre $1$ et $p - 1$ tel que $k k' \equiv 1 \pmod p$. En multipliant la congruence précédente par $k'$, on obtient $u_k \equiv (-1)^{k-1} k' \pmod p$, donc $u_k^2 \equiv k'^2 \pmod p$.

Enfin, l'application $k \mapsto k'$ est une bijection de $\{1, \ldots, p-1\}$ dans lui-même (l'inverse de $k'$ est $k$). Donc

$$s \equiv \sum_{k=1}^{p-1} k'^2 = \sum_{j=1}^{p-1} j^2 = \frac{(p-1)\,p\,(2p-1)}{6} \pmod p.$$

Comme $p \geqslant 5$, $p$ est premier avec $6$. Le nombre $(p-1)p(2p-1)$ est divisible par $6$ et par $p$, donc par $6p$, et $\frac{(p-1)p(2p-1)}{6}$ est un multiple de $p$. Ainsi $p$ divise $s$.

**Conclusion.** On a $c_0 = \binom{b}{a}$, $c_1 = 0$, et $c_2$, $c_3$, ... sont des multiples de $p^3$. Donc

$$\binom{pb}{pa} \equiv \binom{b}{a} \pmod{p^3}.$$

## Going further

- Pourquoi faut-il $p \geqslant 5$ ? Vérifier que pour $p = 3$, $a = 1$, $b = 2$, on a $\binom{6}{3} = 20$ et $\binom{2}{1} = 2$, et que $27$ ne divise pas $18$. Où la preuve ne marche-t-elle plus ?
- Cas particulier ($a = 1$, $b = 2$) : $\binom{2p}{p} \equiv 2 \pmod{p^3}$ pour tout premier $p \geqslant 5$. C'est le théorème de Wolstenholme.
