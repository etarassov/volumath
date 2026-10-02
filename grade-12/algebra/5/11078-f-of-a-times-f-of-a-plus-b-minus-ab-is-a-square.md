---
id: "11078"
title: "f(a)f(a + b) − ab est toujours un carré"
grade: 12
theme: algebra
difficulty: 5
duration_min: 75
tags: [equation-fonctionnelle, carre-parfait, congruences, nombres-premiers, valuation, maths-expertes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 3 (arithmétique)"
  reference: "2025-01_Sujet-envoi-3-2024-2025.pdf, Exercices Seniors, exercice 16 ; corrigé 2025-03_Corrige-envoi-3-2024-2025.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Sujet-envoi-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-01_Sujet-envoi-3-2024-2025.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers strictement positifs.

Trouver toutes les fonctions $f : \mathbb{N}^* \to \mathbb{N}^*$ telles que, pour tous entiers
$a, b \geqslant 1$, le nombre
$$f(a) \, f(a + b) - ab$$
soit un carré parfait.

## Hints

1. Vérifie que $f(n) = n$ convient. Pour montrer que c'est la seule, commence par prouver que
   $f(n)$ divise $n$ quand $n$ est le double d'un nombre impair. Pour la puissance de $2$, regarde
   $(a, b) = (n, 1)$ modulo $4$.
2. Pour un nombre premier impair $p$, note $p^k$ la plus grande puissance de $p$ qui divise $n$, et
   suppose que $p^{k+1}$ divise $f(n)$. Avec $(n, 1)$, montre que $k$ est pair. Puis montre que le
   quotient de $f(n) f(n + b) - nb$ par $p^k$ est un carré pour tout $b$.
3. Il existe des nombres qui ne sont congrus à aucun carré modulo $p$. Choisis $b$ pour que ce
   quotient tombe sur l'un d'eux.
4. Déduis-en $f(m) = m$ quand $m$ est le double d'un impair et $m > 4$, avec $(a, b) = (2, m - 2)$.
   Enfin, pour $n$ quelconque, compare $n^2 + m\left(f(n) - n\right)$ et
   $n^2 + (m + 4)\left(f(n) - n\right)$.

## Solution

**La fonction identité convient** : si $f(n) = n$ pour tout $n$, alors
$f(a) f(a + b) - ab = a(a + b) - ab = a^2$, qui est bien un carré. Montrons que c'est la seule.

Soit $f$ une solution. Pour un nombre premier $p$ et un entier $n \geqslant 1$, notons $v_p(n)$
l'exposant de la plus grande puissance de $p$ qui divise $n$. On utilisera souvent ce fait : si
$y = x^2$ est un carré non nul, alors $v_p(y) = 2 v_p(x)$ est pair.

**Étape 1 : si $n$ est le double d'un nombre impair, alors $f(n)$ divise $n$.**

Il suffit de montrer que $v_p(f(n)) \leqslant v_p(n)$ pour tout nombre premier $p$.

*Le nombre premier $2$.* Écrivons $n = 2r$ avec $r$ impair, et supposons que $4$ divise $f(n)$.
Avec $(a, b) = (n, 1)$, le nombre $f(n) f(n + 1) - 2r$ est un carré. Or modulo $4$, il est congru
à $-2r \equiv 2$, car $r$ est impair. Mais un carré est congru à $0$ ou à $1$ modulo $4$ :
contradiction. Donc $v_2(f(n)) \leqslant 1 = v_2(n)$.

*Un nombre premier $p$ impair.* Notons $k = v_p(n)$ et écrivons $n = p^k r$ avec $p$ qui ne divise
pas $r$. Supposons par l'absurde que $p^{k+1}$ divise $f(n)$, et écrivons $f(n) = p^{k+1} d$.

Avec $(a, b) = (n, 1)$, le nombre $Y = f(n) f(n + 1) - n$ est un carré. Le terme $f(n) f(n+1)$ est
divisible par $p^{k+1}$, alors que $n$ est divisible par $p^k$ mais pas par $p^{k+1}$. Donc $Y$ est
divisible par $p^k$ mais pas par $p^{k+1}$ : $Y$ n'est pas nul et $v_p(Y) = k$. Comme $Y$ est un
carré, $k$ est pair.

Pour tout $b \geqslant 1$, on a alors
$$f(n) f(n + b) - nb = p^k \left(p d \, f(n + b) - r b\right),$$
et ce nombre est un carré $x^2$. Comme $p^k$ divise $x^2$ et que $k$ est pair, $p^{k/2}$ divise $x$,
donc
$$Z_b = p d \, f(n + b) - r b = \left(\frac{x}{p^{k/2}}\right)^2$$
est le carré d'un entier. Modulo $p$, on a $Z_b \equiv -rb$.

Or certains restes modulo $p$ ne sont le reste d'aucun carré. En effet, $x^2$ et $(p - x)^2$ ont le
même reste modulo $p$, donc les carrés de $0, 1, \ldots, p-1$ prennent au plus
$1 + \frac{p-1}{2} = \frac{p+1}{2} < p$ restes différents. Soit $c$ un reste qui n'est jamais
atteint ; on a $c \neq 0$ puisque $0 = 0^2$.

Comme $p$ ne divise pas $r$, le théorème de Bézout donne un entier $u$ tel que $ru \equiv 1 \pmod p$.
Choisissons $b \geqslant 1$ avec $b \equiv -uc \pmod p$. Alors $Z_b \equiv -rb \equiv ruc \equiv c \pmod p$,
ce qui est impossible pour un carré. Donc $v_p(f(n)) \leqslant v_p(n)$.

Ainsi $f(n)$ divise $n$.

**Étape 2 : $f(m) = m$ quand $m$ est le double d'un impair et $m > 4$.**

D'après l'étape 1, $f(2)$ divise $2$, donc $f(2) \leqslant 2$. Et $f(m)$ divise $m$. Si $f(m) \neq m$,
alors $f(m)$ est un diviseur de $m$ plus petit que $m$, donc $f(m) \leqslant \frac{m}{2}$. Avec
$(a, b) = (2, m - 2)$, le nombre
$$f(2) f(m) - 2(m - 2) \leqslant 2 \times \frac{m}{2} - 2m + 4 = 4 - m < 0$$
devrait être un carré, ce qui est impossible. Donc $f(m) = m$.

**Étape 3 : $f(n) = n$ pour tout $n$.**

Fixons $n \geqslant 1$ et posons $\delta = f(n) - n$. Pour tout $m$ qui est le double d'un impair,
avec $m > 4$ et $m > n$, on applique l'énoncé à $(a, b) = (n, m - n)$ et on utilise $f(m) = m$ :
$$f(n) \, m - n(m - n) = n^2 + m \delta \qquad (1)$$
est un carré.

*Si $\delta \leqslant -1$*, alors $n^2 + m\delta \leqslant n^2 - m$, qui est négatif dès que
$m > n^2$. Un carré ne peut pas être négatif, donc $\delta \geqslant 0$.

*Si $\delta \geqslant 1$*, choisissons $m$ assez grand pour que $n^2 + m\delta > 4\delta^2$, et
notons $x^2 = n^2 + m\delta$ avec $x \geqslant 0$ : on a $x > 2\delta$. Le nombre $m + 4$ est aussi le
double d'un impair, donc d'après $(1)$ appliqué à $m + 4$, le nombre $n^2 + (m + 4)\delta = x^2 + 4\delta$
est un carré. Or
$$x^2 < x^2 + 4\delta < x^2 + 2x < (x + 1)^2,$$
donc $x^2 + 4\delta$ est strictement entre deux carrés consécutifs : contradiction.

Donc $\delta = 0$, c'est-à-dire $f(n) = n$.

**Conclusion.** La seule solution est la fonction identité, $f(n) = n$ pour tout $n \geqslant 1$.

## Going further

L'argument de l'étape 1 pour un nombre premier impair n'utilise pas la forme de $n$. Montrer que
pour toute solution $f$ et pour **tout** entier $n \geqslant 1$, $f(n)$ divise $2n$, sans utiliser
le résultat final.

*Réponse* : pour $p$ impair, l'étape 1 donne $v_p(f(n)) \leqslant v_p(n)$ sans hypothèse sur $n$.
Pour $p = 2$, notons $k = v_2(n)$, $n = 2^k r$ avec $r$ impair, et supposons que $2^{k+2}$ divise
$f(n)$. Avec $(n, 1)$, comme ci-dessus, $v_2\left(f(n) f(n+1) - n\right) = k$, donc $k$ est pair. Alors
pour tout $b$, $\left(f(n) f(n+b) - nb\right) / 2^k = 4 d' f(n + b) - rb$ est un carré, où
$f(n) = 2^{k+2} d'$. Avec $b = r$, ce carré est congru à $-r^2 \equiv -1 \equiv 3 \pmod 4$, ce qui
est impossible. Donc $v_2(f(n)) \leqslant k + 1$, et $f(n)$ divise $2n$.
