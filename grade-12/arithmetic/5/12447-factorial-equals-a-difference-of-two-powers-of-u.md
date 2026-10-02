---
id: "12447"
title: "n! = uᵃ − uᵇ n'a qu'un nombre fini de solutions"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [maths-expertes, congruences, factorielle, puissances, nombres-premiers, petit-theoreme-de-fermat]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 20 mars 2019"
  reference: "2019-04_Test-20-03-web.pdf, exercice 5 ; corrigé 2019-04_Test-20-03-Corrige-web.pdf (le corrigé utilise les racines primitives modulo une puissance de p ; solution réécrite avec un lemme sur les puissances de p démontré à la main)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/04/Test-20-03-web.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-04_Test-20-03-web.pdf"
---

## Statement

Soit $u$ un entier naturel non nul.

Démontrer qu'il n'existe qu'un nombre fini de triplets d'entiers naturels $(a, b, n)$ tels que
$$n! = u^a - u^b.$$

On rappelle que $0! = 1! = 1$.

## Hints

1. Règle d'abord le cas $u = 1$. Pour $u \geqslant 2$, écris $d = a - b$ et
   $n! = u^b(u^d - 1)$.
2. Choisis un nombre premier $p > u$. Quand $n$ est grand, $n!$ est divisible par une grande
   puissance de $p$, donc $u^d - 1$ aussi.
3. Pour un entier $x$ tel que $x \equiv 1 \pmod p$, compare la plus grande puissance de $p$ qui
   divise $x - 1$ et celle qui divise $x^p - 1$. Écris $x^p - 1 = (x - 1)(1 + x + \cdots + x^{p-1})$.
4. Tu dois arriver à : si $p^\ell$ divise $u^d - 1$, alors $d$ est au moins $p^{\ell - k}$, où $k$
   ne dépend que de $u$. Compare avec la taille de $d$, qui est au plus $n^2$.

## Solution

**Notation.** Pour un nombre premier $p$ et un entier $N \geqslant 1$, on note $v_p(N)$ l'exposant
de $p$ dans la décomposition de $N$ en facteurs premiers : c'est le plus grand entier $j$ tel que
$p^j$ divise $N$. D'après l'unicité de la décomposition, $v_p(MN) = v_p(M) + v_p(N)$, et si $M$
divise $N$, alors $v_p(M) \leqslant v_p(N)$.

### Étape 0 : mise en place

Si $u = 1$, alors $u^a - u^b = 0$, qui n'est jamais égal à $n! \geqslant 1$ : il n'y a aucune
solution.

Supposons désormais $u \geqslant 2$, et soit $(a, b, n)$ une solution. Comme $n! > 0$, on a
$u^a > u^b$, donc $a > b$. Posons $d = a - b \geqslant 1$. L'équation devient
$$n! = u^b\,(u^d - 1).$$

Choisissons un nombre premier $p > u$. Il est impair (car $p > u \geqslant 2$) et il ne divise pas
$u$ (car $0 < u < p$). Ce nombre $p$ ne dépend que de $u$.

### Étape 1 : un lemme sur les puissances de $p$

**Lemme.** Soit $x > 1$ un entier tel que $x \equiv 1 \pmod p$.

1. Si $m \geqslant 1$ n'est pas divisible par $p$, alors $v_p(x^m - 1) = v_p(x - 1)$.
2. On a $v_p(x^p - 1) = v_p(x - 1) + 1$.
3. Pour tout entier $d \geqslant 1$, on a $v_p(x^d - 1) = v_p(x - 1) + v_p(d)$.

*Preuve du point 1.* On a $x^m - 1 = (x - 1)\,S$ avec $S = 1 + x + x^2 + \cdots + x^{m-1}$. Chacun
des $m$ termes de $S$ est congru à $1$ modulo $p$, donc $S \equiv m \pmod p$, et $p$ ne divise
pas $S$. Ainsi $v_p(S) = 0$ et $v_p(x^m - 1) = v_p(x - 1)$.

*Preuve du point 2.* Cette fois $x^p - 1 = (x - 1)\,S$ avec $S = 1 + x + \cdots + x^{p-1}$.
Écrivons $x = 1 + y$, où $p$ divise $y$. Alors $p^2$ divise $y^2$, et on montre par récurrence que
$$x^i \equiv 1 + i\,y \pmod{p^2} \quad \text{pour tout } i \geqslant 0.$$
C'est vrai pour $i = 0$, et si c'est vrai pour $i$, alors
$x^{i+1} = x^i (1 + y) \equiv (1 + iy)(1 + y) = 1 + (i+1)y + iy^2 \equiv 1 + (i+1)y \pmod{p^2}$.
En additionnant pour $i = 0, 1, \ldots, p-1$ :
$$S \equiv p + y\,(0 + 1 + \cdots + (p-1)) = p + y \times p \times \frac{p-1}{2} \pmod{p^2}.$$
Comme $p$ est impair, $\frac{p-1}{2}$ est un entier. Le produit $y \times p \times \frac{p-1}{2}$
est donc divisible par $p \times p = p^2$, et $S \equiv p \pmod{p^2}$. Ainsi $p$ divise $S$ mais
$p^2$ ne le divise pas : $v_p(S) = 1$, et $v_p(x^p - 1) = v_p(x - 1) + 1$.

*Preuve du point 3.* Écrivons $d = p^e m$ avec $p$ qui ne divise pas $m$, de sorte que
$e = v_p(d)$. En appliquant le point 2 à $x$, puis à $x^p$, puis à $x^{p^2}$, et ainsi de suite
(tous ces nombres sont congrus à $1$ modulo $p$), on obtient
$v_p(x^{p^e} - 1) = v_p(x - 1) + e$. Le point 1, appliqué à $x^{p^e}$ et à $m$, donne alors
$$v_p(x^d - 1) = v_p[(x^{p^e})^m - 1] = v_p(x - 1) + e.$$

### Étape 2 : la puissance de $p$ qui divise $u^d - 1$

Posons $x = u^{p-1}$. Comme $p$ ne divise pas $u$, le petit théorème de Fermat donne
$x \equiv 1 \pmod p$. Notons $k = v_p(x - 1) \geqslant 1$. Ce nombre ne dépend que de $u$.

Le nombre $u^d - 1$ divise $(u^d)^{p-1} - 1 = x^d - 1$, car $Y - 1$ divise $Y^{p-1} - 1$ pour tout
entier $Y$. Avec le point 3 du lemme :
$$v_p(u^d - 1) \leqslant v_p(x^d - 1) = k + v_p(d).$$

### Étape 3 : $n$ est borné

Posons $q$ le quotient de la division de $n$ par $p$, donc $n < p\,(q + 1)$. Parmi
$1, 2, \ldots, n$, il y a les $q$ multiples $p, 2p, \ldots, qp$ de $p$, donc $v_p(n!) \geqslant q$.
Comme $p$ ne divise pas $u^b$, l'équation $n! = u^b(u^d - 1)$ donne
$v_p(n!) = v_p(u^d - 1)$, et donc, avec l'étape 2,
$$q \leqslant k + v_p(d).$$

**Une majoration de $d$.** On a $u^d - 1 \leqslant n!$, donc $2^d \leqslant u^d \leqslant n! + 1$.
Pour $n \geqslant 2$, on a $n! \leqslant n^{n-1}$, donc $n! + 1 \leqslant n^n \leqslant (2^n)^n = 2^{n^2}$.
Ainsi $d \leqslant n^2$.

**Conclusion de l'étape.** Supposons $n \geqslant 2$ et $q \geqslant k + 2$. Comme $p^{v_p(d)}$ divise $d$, on a
$p^{v_p(d)} \leqslant d$, et donc
$$p^{\,q - k} \leqslant p^{\,v_p(d)} \leqslant d \leqslant n^2 < p^2 (q + 1)^2,
\qquad \text{donc} \qquad 3^{\,q - k - 2} \leqslant p^{\,q - k - 2} < (q + 1)^2.$$
Or $\dfrac{3^{q}}{(q + 1)^2}$ tend vers $+\infty$ quand $q$ tend vers $+\infty$ (croissances comparées).
Il existe donc un entier $Q$, qui ne dépend que de $k$ et donc que de $u$, tel que
$3^{q - k - 2} \geqslant (q + 1)^2$ dès que $q \geqslant Q$.

Par conséquent, dans toute solution, $n \leqslant 1$, ou $q \leqslant k + 1$, ou $q < Q$. Dans tous
les cas $n < p\,(k + Q + 2)$ : **$n$ ne peut prendre qu'un nombre fini de valeurs.**

### Étape 4 : $a$ et $b$ sont bornés

Fixons $n$. Dans une solution, $d \leqslant n^2$ (ou $2^d \leqslant 2$ si $n \leqslant 1$), et
$$n! = u^b(u^d - 1) \geqslant u^b \geqslant 2^b,$$
donc $b$ est borné, puis $a = b + d$ aussi. Il n'y a qu'un nombre fini de couples $(a, b)$ pour
chaque valeur de $n$.

### Conclusion

D'après les étapes 3 et 4, **l'équation $n! = u^a - u^b$ n'a qu'un nombre fini de solutions
$(a, b, n)$.**

## Going further

Pour $u = 2$, trouver toutes les solutions de $n! = 2^a - 2^b$. (On pourra utiliser le nombre
premier $p = 3$, et regarder la puissance de $3$ qui divise $2^d - 1$.)
