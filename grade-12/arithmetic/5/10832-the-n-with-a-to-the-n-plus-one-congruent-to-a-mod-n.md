---
id: "10832"
title: "Les n tels que aⁿ⁺¹ ≡ a modulo n pour tout a"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [congruences, petit-theoreme-de-fermat, bezout, polynome, nombres-premiers, decomposition-en-facteurs-premiers, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2015-2016 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2015-2016-envoi-1.pdf, Exercices du groupe A, exercice 7 ; corrigé 2017-10_ofm-2015-2016-envoi-1-solutions.pdf (le corrigé utilise un élément d'ordre p − 1 modulo p et le lemme chinois, remplacés ici par le fait qu'un polynôme de degré d a au plus d racines modulo p, démontré dans la solution)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2015-2016-envoi-1.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 2$ tels que

$$a^{n+1} \equiv a \pmod n \qquad \text{pour tout entier } a,$$

c'est-à-dire tels que $n$ divise $a^{n+1} - a$ pour tout entier $a$.

## Hints

1. Montre que $n$ n'est divisible par le carré d'aucun nombre premier : essaie $a = p$.
2. Si $p$ est un nombre premier qui divise $n$, montre que $a^n \equiv 1 \pmod p$ pour tout $a$ non divisible par $p$.
3. Si $p - 1$ divise $n$, le petit théorème de Fermat donne exactement cela. Réciproquement, pose $d = \mathrm{PGCD}(n, p - 1)$ et montre que $a^d \equiv 1 \pmod p$ pour $a = 1, 2, \ldots, p - 1$. Or un polynôme de degré $d$ a au plus $d$ racines modulo $p$.
4. Range les facteurs premiers de $n$ dans l'ordre croissant, $p_1 < p_2 < \cdots$. Montre que $p_i - 1$ divise $p_1 p_2 \cdots p_{i-1}$, puis trouve $p_1$, $p_2$, $p_3$, et ainsi de suite.

## Solution

**Réponse : $n = 2$, $n = 6$, $n = 42$ et $n = 1806$.**

On utilise le petit théorème de Fermat (si $p$ est premier et ne divise pas $a$, alors $a^{p-1} \equiv 1 \pmod p$), le théorème de Bézout, et le fait que si un nombre premier divise un produit, il divise l'un des facteurs.

### Étape 1 : $n$ n'a pas de facteur carré

Supposons que $p^2$ divise $n$ pour un nombre premier $p$. Avec $a = p$, le nombre $n$, donc aussi $p^2$, divise $p^{n+1} - p = p\left(p^n - 1\right)$. Alors $p$ divise $p^n - 1$, donc $p$ divise $1$ : c'est impossible.

Ainsi $n = p_1 p_2 \cdots p_k$, où $p_1 < p_2 < \cdots < p_k$ sont des nombres premiers **distincts**.

### Étape 2 : un lemme sur les polynômes

**Lemme.** Soit $p$ un nombre premier, et $P(x) = c_d\,x^d + \cdots + c_1\,x + c_0$ un polynôme à coefficients entiers, de degré $d \geqslant 1$, dont le coefficient $c_d$ n'est pas divisible par $p$. Alors, parmi les entiers $0, 1, \ldots, p - 1$, il y en a au plus $d$ pour lesquels $p$ divise $P(x)$. On les appelle les *racines de $P$ modulo $p$*.

*Preuve, par récurrence sur $d$.* Si $P$ n'a pas de racine modulo $p$, il n'y a rien à montrer. Sinon, soit $r$ une racine. Pour tout $j \geqslant 1$,
$$x^j - r^j = (x - r)\left(x^{j-1} + x^{j-2}\,r + \cdots + r^{j-1}\right).$$
En appliquant cela à chaque terme de $P(x) - P(r)$, on obtient $P(x) - P(r) = (x - r)\,Q(x)$, où $Q$ est un polynôme à coefficients entiers de degré $d - 1$, dont le premier coefficient est encore $c_d$.

Soit $s \neq r$ une autre racine, avec $0 \leqslant s \leqslant p - 1$. Alors $p$ divise $P(s) - P(r) = (s - r)\,Q(s)$. Comme $0 < |s - r| < p$, le nombre premier $p$ ne divise pas $s - r$, donc il divise $Q(s)$.

- Si $d = 1$, le polynôme $Q$ est la constante $c_1$, qui n'est pas divisible par $p$ : il n'y a donc pas d'autre racine que $r$.
- Si $d \geqslant 2$, les autres racines de $P$ sont des racines de $Q$, et par hypothèse de récurrence il y en a au plus $d - 1$.

Dans les deux cas, $P$ a au plus $d$ racines modulo $p$.

### Étape 3 : la condition équivaut à « $p_i - 1$ divise $n$ pour tout $i$ »

*Si chaque $p_i - 1$ divise $n$, alors $n$ convient.* Soit $a$ un entier et $p = p_i$. Si $p$ divise $a$, il divise $a^{n+1} - a$. Sinon, le petit théorème de Fermat donne $a^{p-1} \equiv 1 \pmod p$. En écrivant $n = (p - 1)\,m$, on obtient $a^n = \left(a^{p-1}\right)^m \equiv 1$, donc $a^{n+1} \equiv a \pmod p$. Ainsi chacun des nombres premiers distincts $p_1, \ldots, p_k$ divise $a^{n+1} - a$, donc leur produit $n$ le divise aussi.

*Si $n$ convient, alors chaque $p_i - 1$ divise $n$.* Soit $p = p_i$ et $d = \mathrm{PGCD}(n, p - 1)$. Soit $a$ un entier entre $1$ et $p - 1$. Le nombre $p$ divise $a^{n+1} - a = a\left(a^n - 1\right)$ et ne divise pas $a$, donc
$$a^n \equiv 1 \pmod p, \qquad \text{et aussi} \qquad a^{p-1} \equiv 1 \pmod p$$
d'après Fermat. D'après le théorème de Bézout, il existe des entiers $u$ et $v$ tels que $u\,n + v\,(p - 1) = d$. Quitte à remplacer $u$ par $u + t(p - 1)$ et $v$ par $v - t\,n$ avec $t$ grand, on peut supposer $u > 0$ et $v < 0$. Posons $w = -v > 0$. Alors $u\,n = d + w\,(p - 1)$, et
$$1 \equiv \left(a^n\right)^u = a^{u n} = a^d \times \left(a^{p-1}\right)^w \equiv a^d \pmod p .$$
Ainsi les $p - 1$ entiers $1, 2, \ldots, p - 1$ sont tous des racines modulo $p$ du polynôme $x^d - 1$, de degré $d$ et de premier coefficient $1$. D'après le lemme, $p - 1 \leqslant d$. Comme $d$ divise $p - 1$, on a aussi $d \leqslant p - 1$. Donc $d = p - 1$, ce qui veut dire que **$p - 1$ divise $n$**.

**Bilan.** Les entiers cherchés sont les produits $n = p_1 p_2 \cdots p_k$ de nombres premiers distincts tels que $p_i - 1$ divise $n$ pour tout $i$.

### Étape 4 : on trouve les facteurs premiers un par un

Soit $i$ entre $1$ et $k$. Un facteur premier de $p_i - 1$ divise $n$, donc c'est l'un des $p_j$, et il est plus petit que $p_i$, donc $j < i$. De plus $p_i - 1$ divise $n$, qui n'a pas de facteur carré, donc $p_i - 1$ n'en a pas non plus. Ainsi
$$p_i - 1 \text{ divise } p_1 \, p_2 \cdots p_{i-1} \qquad (\text{ce produit vaut } 1 \text{ si } i = 1) .$$

- $i = 1$ : $p_1 - 1$ divise $1$, donc $p_1 = 2$.
- $i = 2$ : $p_2 - 1$ divise $2$ et $p_2 > 2$, donc $p_2 - 1 = 2$ et $p_2 = 3$.
- $i = 3$ : $p_3 - 1$ divise $6$ et $p_3 > 3$, donc $p_3 - 1 \in \{3, 6\}$, et $p_3 \in \{4, 7\}$. Comme $4$ n'est pas premier, $p_3 = 7$.
- $i = 4$ : $p_4 - 1$ divise $42$ et $p_4 > 7$, donc $p_4 - 1 \in \{7, 14, 21, 42\}$, et $p_4 \in \{8, 15, 22, 43\}$. Seul $43$ est premier : $p_4 = 43$.
- $i = 5$ : $p_5 - 1$ divise $2 \times 3 \times 7 \times 43 = 1806$, et $p_5 > 43$. De plus $p_5$ est impair, donc $p_5 - 1$ est pair. Les diviseurs pairs de $1806$ plus grands que $43$ sont $86$, $258$, $602$ et $1806$. Cela donne $p_5 \in \{87, 259, 603, 1807\}$. Or $87 = 3 \times 29$, $259 = 7 \times 37$, $603 = 9 \times 67$ et $1807 = 13 \times 139$ : aucun n'est premier. **Donc $k \leqslant 4$.**

### Conclusion

On a donc $n = 2$, $n = 2 \times 3 = 6$, $n = 2 \times 3 \times 7 = 42$ ou $n = 2 \times 3 \times 7 \times 43 = 1806$. Réciproquement, ces quatre entiers conviennent d'après l'étape 3. Par exemple pour $1806 = 42 \times 43$, les nombres $p_i - 1$ valent $1$, $2$, $6$ et $42$, qui divisent tous $1806$.

**Les entiers cherchés sont $2$, $6$, $42$ et $1806$.**

## Going further

1. Avec la même méthode qu'à l'étape 3, montre que $561 = 3 \times 11 \times 17$ divise $a^{561} - a$ pour tout entier $a$, bien que $561$ ne soit pas premier.
2. Dans le lemme, l'hypothèse « $p$ premier » est indispensable. Trouve quatre entiers $x$ entre $0$ et $7$ tels que $8$ divise $x^2 - 1$.
