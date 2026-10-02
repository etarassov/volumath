---
id: "12004"
title: "xᵃ + yᵇ n'est pas divisible par xᶜ + yᵈ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [congruences, divisibilite, puissances, gauss, premiers-entre-eux, raisonnement-par-l-absurde, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier, année 2011-2012"
  reference: "2017-10_ofm-2011-2012-test-janvier.pdf (en-tête « Janvier 2011 »), exercice 4 ; corrigé 2017-10_ofm-2011-2012-test-janvier-corrige.pdf (coquille dans le corrigé : il écrit x^{bc} ≡ (−1)^c y^{bd}, il faut (−1)^b ; la suite du corrigé utilise bien la bonne valeur)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2011-2012-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2011-2012-test-janvier.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ des entiers naturels tels que

$$0 < |ad - bc| < \min(c, d) .$$

Démontrer que, pour tous entiers $x > 1$ et $y > 1$ premiers entre eux, le nombre $x^a + y^b$ n'est pas divisible par $x^c + y^d$.

## Hints

1. Raisonnez par l'absurde : supposez que $s = x^c + y^d$ divise $x^a + y^b$, et traduisez cela en congruences modulo $s$.
2. Modulo $s$, on a $x^c \equiv -y^d$ et $x^a \equiv -y^b$. Calculez $x^{ad}$ et $x^{bc}$ modulo $s$ en fonction de la même puissance de $y$.
3. Vérifiez que $x$ et $s$ sont premiers entre eux. Cela permet de « simplifier » par une puissance de $x$ dans une congruence modulo $s$ (théorème de Gauss). Vous devez obtenir $x^k \equiv \pm 1 \pmod{s}$, avec $k = |ad - bc|$, et de même pour $y$.
4. Concluez que $s$ divise $x^k + y^k$ ou $x^k - y^k$, et comparez ces nombres à $s$.

## Solution

Posons $k = |ad - bc|$. L'hypothèse dit que $k \ge 1$, que $k < c$ et que $k < d$.

Raisonnons par l'absurde. Soient $x > 1$ et $y > 1$ premiers entre eux, et supposons que $s = x^c + y^d$ divise $x^a + y^b$.

**Étape 1 : $x$ et $s$ sont premiers entre eux, ainsi que $y$ et $s$.** Si un nombre premier $p$ divisait $x$ et $s$, il diviserait $s - x^c = y^d$, donc $y$ (un nombre premier qui divise un produit divise l'un des facteurs). Il diviserait alors $x$ et $y$, ce qui est impossible. De même pour $y$.

**Étape 2 : deux calculs de $x^{ad}$ et $x^{bc}$ modulo $s$.** On a

$$x^c \equiv -y^d \pmod{s} \qquad \text{et} \qquad x^a \equiv -y^b \pmod{s},$$

la seconde parce que $s$ divise $x^a + y^b$. En élevant la seconde à la puissance $d$, et la première à la puissance $b$ :

$$x^{ad} \equiv (-1)^d\, y^{bd} \pmod{s} \qquad \text{et} \qquad x^{bc} \equiv (-1)^b\, y^{bd} \pmod{s} .$$

Comme $(-1)^b \times (-1)^b = 1$, la seconde donne $y^{bd} \equiv (-1)^b x^{bc}$, et en remplaçant dans la première :

$$x^{ad} \equiv (-1)^{b+d}\, x^{bc} \pmod{s} .$$

Posons $\varepsilon = (-1)^{b+d}$, qui vaut $1$ ou $-1$.

**Étape 3 : simplification.** Supposons par exemple $ad > bc$, de sorte que $ad = bc + k$. La congruence s'écrit

$$x^{bc}\,(x^k - \varepsilon) \equiv 0 \pmod{s},$$

c'est-à-dire que $s$ divise $x^{bc}(x^k - \varepsilon)$. Or $s$ est premier avec $x$, donc avec $x^{bc}$. D'après le théorème de Gauss, $s$ divise $x^k - \varepsilon$. Si au contraire $bc > ad$, on écrit $bc = ad + k$ et on obtient de même que $s$ divise $x^{ad}(1 - \varepsilon x^k)$, donc $1 - \varepsilon x^k$, donc aussi $x^k - \varepsilon$ (on a multiplié par $-\varepsilon = \pm 1$). Dans tous les cas :

$$x^k \equiv \varepsilon \pmod{s} .$$

**Étape 4 : la même chose pour $y$.** On recommence en échangeant les rôles. On a $y^d \equiv -x^c$ et $y^b \equiv -x^a$ modulo $s$, d'où

$$y^{ad} = (y^d)^a \equiv (-1)^a x^{ac} \qquad \text{et} \qquad y^{bc} = (y^b)^c \equiv (-1)^c x^{ac} \pmod{s},$$

donc $y^{ad} \equiv (-1)^{a+c} y^{bc}$. Comme $s$ est premier avec $y$, la même simplification donne

$$y^k \equiv \eta \pmod{s}, \qquad \text{avec } \eta = (-1)^{a+c} = \pm 1 .$$

**Étape 5 : la contradiction.**

- Si $\eta = -\varepsilon$, alors $x^k + y^k \equiv \varepsilon - \varepsilon = 0$ : $s$ divise $x^k + y^k$.
- Si $\eta = \varepsilon$, alors $x^k - y^k \equiv 0$ : $s$ divise $x^k - y^k$.

Comparons ces nombres à $s$. Comme $x \ge 2$, $y \ge 2$, $k < c$ et $k < d$, on a $x^k < x^c$ et $y^k < y^d$, donc

$$0 < x^k + y^k < x^c + y^d = s .$$

Un entier strictement compris entre $0$ et $s$ n'est pas divisible par $s$ : le premier cas est impossible.

Pour le second, on a $|x^k - y^k| < \max(x^k, y^k) < s$. De plus $x^k \ne y^k$ : un nombre premier $p$ qui divise $x$ (il en existe, car $x > 1$) diviserait $y^k$, donc $y$, ce qui contredit le fait que $x$ et $y$ sont premiers entre eux. Donc $0 < |x^k - y^k| < s$, et $s$ ne divise pas non plus $x^k - y^k$.

Dans les deux cas on aboutit à une contradiction.

**Conclusion.** Le nombre $x^c + y^d$ ne divise jamais $x^a + y^b$.
