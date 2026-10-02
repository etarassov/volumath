---
id: "12260"
title: "Un produit de nombres aᵐ − 1 égal à un produit de nombres aᵏ + 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [puissances, nombres premiers, congruences, nombres premiers entre eux, theoreme de gauss, principe des tiroirs, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de novembre 2016"
  reference: "2017-10_ofm-2016-2017-test-novembre.pdf et son corrigé, test de novembre 2016, exercice 3. La solution suit celle du corrigé, rédigée plus en détail ; le corrigé contient quelques coquilles sans conséquence, par exemple « (mod 2)r + 1 » pour « divisible par a_r »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-novembre.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-novembre.pdf"
---

## Statement

Déterminer tous les entiers $a \geqslant 1$ pour lesquels il existe des entiers $n \geqslant 1$, $s \geqslant 1$ et des entiers strictement positifs $m_1, \ldots, m_n$ et $k_1, \ldots, k_s$ tels que
$$(a^{m_1} - 1)(a^{m_2} - 1) \cdots (a^{m_n} - 1) = (a^{k_1} + 1)(a^{k_2} + 1) \cdots (a^{k_s} + 1).$$

## Hints

1. Trouve des exemples pour $a = 2$ et pour $a = 3$, et montre que $a = 1$ ne convient pas. On suppose ensuite $a \geqslant 4$, et l'on cherche une contradiction.
2. Soit $\gamma$ un diviseur impair de l'un des $m_i$, et $p$ un nombre premier qui divise $a^\gamma - 1$. Montre que $p$ divise l'un des $a^{k_j} + 1$, puis que $p = 2$. Déduis-en que $a - 1$ et tous les $m_i$ sont des puissances de $2$.
3. Pour $r \geqslant 0$, pose $u_r = \frac{a^{2^r} + 1}{2}$. Factorise $a^{2^d} - 1$ en utilisant plusieurs fois $x^2 - 1 = (x - 1)(x + 1)$, et montre que les $u_r$ sont impairs et premiers entre eux deux à deux.
4. Compare les puissances de $2$ des deux membres. Montre ensuite que chaque facteur $a^{k_j} + 1$ est divisible par l'un des $u_r$, et compte.

## Solution

On utilise les congruences et deux résultats du cours de maths expertes : le **lemme d'Euclide** (si un nombre premier divise un produit, il divise l'un des facteurs) et sa conséquence : *si un entier $u > 1$ est premier avec chacun des nombres $x_1, \ldots, x_t$, alors il ne divise pas leur produit*. En effet, un facteur premier de $u$ qui diviserait le produit diviserait l'un des $x_i$.

On utilise aussi deux factorisations : pour tout entier $x$ et tout entier $t \geqslant 1$,
$$x^t - 1 = (x - 1)(x^{t-1} + \cdots + x + 1),$$
et, si $t$ est impair, $x + 1$ divise $x^t + 1$, car $x \equiv -1 \pmod{x + 1}$ donne $x^t \equiv (-1)^t = -1 \pmod{x + 1}$.

La réponse est : **$a = 2$ et $a = 3$.**

**Étape 0. Les petites valeurs.**

- Pour $a = 2$ : $2^2 - 1 = 3 = 2 + 1$.
- Pour $a = 3$ : $(3 - 1)(3 - 1) = 4 = 3 + 1$.
- Pour $a = 1$ : le membre de gauche vaut $0$ et celui de droite vaut $2^s$. C'est impossible.

On suppose maintenant que $a \geqslant 4$ et qu'une telle égalité existe. On note $A$ la valeur commune des deux membres, et l'on cherche une contradiction.

**Étape 1. Les nombres $a - 1$ et $m_1, \ldots, m_n$ sont des puissances de $2$.**

Soit $i$ entre $1$ et $n$, et soit $\gamma$ un diviseur impair de $m_i$ (par exemple $\gamma = 1$). On écrit $m_i = \gamma\,b$. Comme $a^\gamma - 1 \geqslant a - 1 \geqslant 3$, ce nombre a un facteur premier $p$.

- On a $a^\gamma \equiv 1 \pmod p$, donc $a^{m_i} = (a^\gamma)^b \equiv 1 \pmod p$ : le nombre $p$ divise $a^{m_i} - 1$, donc il divise $A$.
- D'après le lemme d'Euclide, $p$ divise l'un des facteurs du membre de droite, disons $a^{k_j} + 1$. Donc $a^{k_j} \equiv -1 \pmod p$.
- On calcule $a^{\gamma k_j}$ de deux façons. D'une part $(a^\gamma)^{k_j} \equiv 1 \pmod p$. D'autre part, comme $\gamma$ est impair, $(a^{k_j})^\gamma \equiv (-1)^\gamma = -1 \pmod p$.

Donc $1 \equiv -1 \pmod p$ : le nombre premier $p$ divise $2$, et $p = 2$.

Ainsi $2$ est le seul facteur premier de $a^\gamma - 1$, qui est donc une puissance de $2$. Or
$$a^\gamma - 1 = (a - 1)(a^{\gamma - 1} + \cdots + a + 1).$$
Les deux facteurs divisent une puissance de $2$, donc ce sont des puissances de $2$.

- Le nombre $a - 1 \geqslant 3$ est une puissance de $2$. On l'écrit $a - 1 = 2^c$, avec $c \geqslant 2$. En particulier $a$ est impair.
- Le second facteur est une somme de $\gamma$ nombres impairs, avec $\gamma$ impair : il est impair. C'est une puissance de $2$ impaire, donc il vaut $1$. Comme il est au moins égal à $\gamma$, on a $\gamma = 1$.

Le seul diviseur impair de $m_i$ est donc $1$ : **$m_i$ est une puissance de $2$**. On écrit $m_i = 2^{d_i}$ avec $d_i \geqslant 0$.

Comme $a - 1 = 2^c$ est un multiple de $4$, on a $a \equiv 1 \pmod 4$, donc $a^k \equiv 1 \pmod 4$ pour tout $k$, et
$$a^k + 1 \equiv 2 \pmod 4 \qquad \text{pour tout entier } k \geqslant 0. \qquad (1)$$
Chaque facteur du membre de droite est donc le double d'un nombre impair.

**Étape 2. Les nombres $u_r$.**

Pour $r \geqslant 0$, on pose $u_r = \frac{a^{2^r} + 1}{2}$. D'après $(1)$, c'est un entier impair, et $u_r \geqslant \frac{a + 1}{2} > 1$.

En utilisant plusieurs fois $x^2 - 1 = (x - 1)(x + 1)$, on obtient pour tout $d \geqslant 1$ :
$$a^{2^d} - 1 = (a - 1)(a + 1)(a^2 + 1)(a^4 + 1) \cdots (a^{2^{d-1}} + 1) = 2^c \times 2^d \times u_0\,u_1 \cdots u_{d-1}. \qquad (2)$$
Pour $d = 0$, on a simplement $a - 1 = 2^c$.

**Étape 3. Les $u_r$ sont premiers entre eux deux à deux.**

Soient $i < j$. D'après $(2)$ avec $d = j$, le nombre $u_i$ divise $a^{2^j} - 1$. De plus $a^{2^j} + 1 = 2\,u_j$. Un diviseur commun $g$ de $u_i$ et $u_j$ divise donc $a^{2^j} - 1$ et $a^{2^j} + 1$, donc leur différence $2$. Comme $u_i$ est impair, $g$ est impair, donc $g = 1$.

**Étape 4. On écrit $A$ à l'aide des $u_r$.**

Soit $D$ le plus grand des $d_i$. D'après $(2)$, chaque facteur du membre de gauche s'écrit $a^{m_i} - 1 = 2^{c + d_i}\,u_0 \cdots u_{d_i - 1}$. En multipliant, on obtient
$$A = 2^N \times u_0^{N_0}\,u_1^{N_1} \cdots u_{D-1}^{N_{D-1}},$$
où $N = nc + d_1 + \cdots + d_n$, et où $N_r$ est le nombre d'indices $i$ tels que $d_i > r$. Si $D = 0$, il n'y a aucun $u_r$ dans ce produit.

Chaque indice $i$ est compté dans exactement $d_i$ des nombres $N_0, \ldots, N_{D-1}$, donc $N_0 + \cdots + N_{D-1} = d_1 + \cdots + d_n$. Comme $n \geqslant 1$ et $c \geqslant 2$,
$$N > N_0 + N_1 + \cdots + N_{D-1}. \qquad (3)$$

Comparons les puissances de $2$. Les $u_r$ sont impairs, donc $A$ est le produit de $2^N$ par un nombre impair. D'après $(1)$, $A$ est aussi le produit de $s$ facteurs qui sont chacun le double d'un impair, donc le produit de $2^s$ par un nombre impair. Par unicité de la décomposition en facteurs premiers, $s = N$.

**Étape 5. Chaque facteur $a^{k_j} + 1$ est divisible par l'un des $u_0, \ldots, u_{D-1}$.**

Soit $j$ entre $1$ et $s$. On écrit $k_j = 2^r t$ avec $t$ impair. En posant $x = a^{2^r}$, on a $a^{k_j} + 1 = x^t + 1$, qui est divisible par $x + 1 = 2u_r$. Donc $u_r$ divise $a^{k_j} + 1$, et donc $A$.

Si l'on avait $r \geqslant D$, le nombre $u_r > 1$ serait premier avec $2$ (il est impair) et avec chacun des nombres $u_0, \ldots, u_{D-1}$ (étape 3). Il ne pourrait donc pas diviser leur produit $A$. Ainsi $r \leqslant D - 1$. (En particulier, si $D = 0$, on a déjà une contradiction.)

**Étape 6. La contradiction.**

D'après l'étape 5, on peut associer à chacun des $s$ facteurs $a^{k_j} + 1$ un indice $r$ entre $0$ et $D - 1$ tel que $u_r$ divise ce facteur. Si chaque indice $r$ était associé à au plus $N_r$ facteurs, il y aurait au plus $N_0 + \cdots + N_{D-1}$ facteurs, c'est-à-dire, d'après $(3)$, strictement moins de $N = s$. C'est faux. Il existe donc un indice $r$ associé à au moins $N_r + 1$ facteurs, et le produit de ces facteurs est divisible par $u_r^{N_r + 1}$. Donc $u_r^{N_r + 1}$ divise $A$.

Or $A = u_r^{N_r} \times B$, où $B$ est le produit de $2^N$ et des $u_t^{N_t}$ pour $t \neq r$. En simplifiant par $u_r^{N_r}$, on obtient que $u_r$ divise $B$. C'est impossible, car $u_r > 1$ est premier avec $2$ et avec chacun des $u_t$, $t \neq r$.

**Conclusion.** Aucun entier $a \geqslant 4$ ne convient. Les entiers cherchés sont $a = 2$ et $a = 3$.

## Going further

1. Vérifie que $(2^2 - 1)^2 = 2^3 + 1$ et que $(3^2 - 1)(3 - 1) = (3 + 1)^2$.
2. À quel endroit la démonstration utilise-t-elle $a \geqslant 4$ ? Pourquoi ne s'applique-t-elle pas à $a = 3$ ?
