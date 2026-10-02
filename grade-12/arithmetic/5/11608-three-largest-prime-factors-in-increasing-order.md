---
id: "11608"
title: "Trois plus grands facteurs premiers qui croissent"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [nombres premiers, factorisation, puissances, pgcd, construction]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2012-2013-envoi5.pdf, Exercices olympiques, exercice 8 ; corrigé 2017-10_ofm-2012-2013-envoi5-corrige.pdf. Le corrigé écrit n_k = (p − 1)(n_1 + 2)⋯(n_(k−1) + 2), où il manque le facteur p + 1 : la bonne formule commence par p² − 1. Corrigé ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi5.pdf"
---

## Statement

Pour tout entier $k \geqslant 2$, on note $P(k)$ le plus grand nombre premier qui divise $k$. Par exemple $P(12) = 3$ et $P(13) = 13$.

Montrer qu'il existe une infinité d'entiers $n \geqslant 2$ tels que

$$P(n) < P(n+1) < P(n+2).$$

## Hints

1. Il est facile de connaître $P(n+1)$ quand $n + 1$ est une puissance d'un nombre premier $p$ : alors $P(n+1) = p$.
2. Essaie $n + 1 = p^{2^k}$, avec $p$ premier impair. Le nombre $n = p^{2^k} - 1$ se factorise beaucoup, en utilisant plusieurs fois $a^2 - 1 = (a - 1)(a + 1)$.
3. Pose $u_k = p^{2^k} + 1$, de sorte que $n + 2 = u_k$. Montre que si $i < k$, alors $u_i$ divise $u_k - 2$. Que peut-on en déduire sur les facteurs premiers impairs communs à $u_i$ et $u_k$ ?
4. Prends le plus petit $k$ pour lequel $u_k$ a un facteur premier plus grand que $p$.

## Solution

Fixons un nombre premier impair $p$, par exemple $p = 3$. Pour tout entier $k \geqslant 1$, posons

$$u_k = p^{2^k} + 1.$$

Ainsi $u_1 = p^2 + 1$, $u_2 = p^4 + 1$, $u_3 = p^8 + 1$, et ainsi de suite. On va chercher $n$ de la forme $n = p^{2^k} - 1$. Alors $n + 1 = p^{2^k}$, donc $P(n+1) = p$, et $n + 2 = u_k$.

**Étape 1 : une factorisation.** En utilisant $a^2 - 1 = (a - 1)(a + 1)$ avec $a = p^{2^{k-1}}$, puis avec $a = p^{2^{k-2}}$, et ainsi de suite jusqu'à $a = p$ :

$$p^{2^k} - 1 = \left(p^{2^{k-1}} - 1\right) u_{k-1} = \left(p^{2^{k-2}} - 1\right) u_{k-2}\, u_{k-1} = \cdots = (p - 1)(p + 1)\, u_1 u_2 \cdots u_{k-1}. \qquad (\star)$$

(Pour $k = 1$, il n'y a aucun facteur $u_i$, et la formule dit simplement $p^2 - 1 = (p-1)(p+1)$.)

**Étape 2 : deux nombres $u_i$ et $u_k$ n'ont pas de facteur premier impair commun.** Soit $i < k$. D'après $(\star)$, le nombre $u_i$ divise $p^{2^k} - 1 = u_k - 2$. Si un nombre $d$ divise à la fois $u_i$ et $u_k$, il divise donc $u_k$ et $u_k - 2$, donc leur différence $2$. Un nombre premier impair ne peut pas diviser $2$ : aucun nombre premier impair ne divise à la fois $u_i$ et $u_k$.

**Étape 3 : chaque $u_k$ a un facteur premier impair.** Le nombre $p$ est impair, donc $p^{2^k}$ est le carré d'un nombre impair $2m + 1$. Or $(2m+1)^2 = 4m(m+1) + 1$, donc $p^{2^k}$ s'écrit $4q + 1$, et $u_k = 4q + 2 = 2(2q + 1)$. Comme $u_k \geqslant p^2 + 1 \geqslant 10$, on a $2q + 1 \geqslant 5$ : ce nombre impair a un facteur premier, qui est impair et divise $u_k$.

**Étape 4 : le choix de $k$.** D'après les étapes 2 et 3, chaque $u_k$ a un facteur premier impair, et ces facteurs premiers sont tous différents d'un $k$ à l'autre. Les nombres $u_1, u_2, u_3, \ldots$ font donc intervenir une infinité de nombres premiers différents. Comme il n'y a qu'un nombre fini de nombres premiers inférieurs ou égaux à $p$, l'un des $u_k$ a un facteur premier plus grand que $p$. On choisit pour $k$ le **plus petit** indice tel que $P(u_k) > p$, et on pose $n = p^{2^k} - 1$.

On a alors $P(n+1) = p < P(u_k) = P(n+2)$.

**Étape 5 : $P(n) < p$.** D'après $(\star)$, $n = (p - 1)(p + 1)\, u_1 u_2 \cdots u_{k-1}$. Regardons les facteurs premiers de chaque morceau.

- Ceux de $p - 1$ sont au plus $p - 1$, donc plus petits que $p$.
- $p + 1$ est pair, donc $p + 1 = 2 \times \frac{p+1}{2}$. Ses facteurs premiers sont $2$ ou divisent $\frac{p+1}{2}$, qui est plus petit que $p$ puisque $p \geqslant 3$. Ils sont donc tous plus petits que $p$.
- Pour $i < k$, le choix de $k$ comme plus petit indice donne $P(u_i) \leqslant p$. De plus $p$ ne divise pas $u_i = p^{2^i} + 1$, puisque $p$ divise $p^{2^i}$ mais pas $1$. Donc $P(u_i) < p$.

Tous les facteurs premiers de $n$ sont plus petits que $p$, donc $P(n) < p$.

**Étape 6 : une infinité de $n$.** Pour chaque nombre premier impair $p$, on a trouvé un entier $n$ tel que $P(n) < p = P(n+1) < P(n+2)$. Deux nombres premiers différents donnent deux $n$ différents, puisque $p$ est le seul nombre premier qui divise $n + 1$. Comme il y a une infinité de nombres premiers, on obtient une infinité de tels entiers $n$.

**Conclusion : il existe une infinité d'entiers $n$ tels que $P(n) < P(n+1) < P(n+2)$.**

**Exemples.** Pour $p = 3$, déjà $u_1 = 10 = 2 \times 5$, d'où $n = 8$ : $P(8) = 2 < P(9) = 3 < P(10) = 5$. Pour $p = 7$, $u_1 = 50 = 2 \times 5^2$ ne convient pas, mais $u_2 = 2402 = 2 \times 1201$ avec $1201$ premier, d'où $n = 2400 = 2^5 \times 3 \times 5^2$ : $P(2400) = 5 < 7 < 1201$.
