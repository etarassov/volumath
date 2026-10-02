---
id: "12608"
title: "2 puissance aₙ contre 3 puissance bₙ"
grade: 12
theme: algebra
difficulty: 5
duration_min: 60
tags: [suites, recurrence, partie-entiere, puissances, inegalites, encadrement]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 janvier 2021"
  reference: "2021-01_Enonce-Test-2.pdf, exercice 6 (senior) ; corrigé 2021-01_Corrige-Test-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/01/Énoncé-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-01_Enonce-Test-2.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ sa partie entière, le plus grand entier inférieur
ou égal à $x$.

Les suites $(a_n)_{n \geqslant 0}$ et $(b_n)_{n \geqslant 0}$ sont définies par $a_0 = b_0 = 0$
et, pour tout entier $n \geqslant 1$,
$$a_n = 2\, a_{\lfloor n/2 \rfloor} + n \qquad \text{et} \qquad b_n = 3\, b_{\lfloor n/3 \rfloor} + n .$$

Démontrer que la suite de terme général $2^{a_n} - 3^{b_n}$ change de signe une infinité de
fois : elle prend une infinité de valeurs strictement positives et une infinité de valeurs
strictement négatives.

## Hints

1. Calcule $a_n$ et $b_n$ pour $n \leqslant 9$. Que valent $a_{2^m}$ et $b_{3^k}$ ?
2. Pour $n \geqslant 1$, note $L$ l'entier tel que $2^{L-1} \leqslant n < 2^L$ (c'est le nombre
   de chiffres de $n$ en base $2$). Montre par récurrence forte que $a_n \leqslant L\,n$. Fais de
   même pour $b_n$ avec la base $3$.
3. Pour $n = 3^k$, tu connais $b_n$ exactement, et l'indication 2 majore $a_n$. Compare $2^{a_n}$
   et $3^{b_n}$.
4. Pour le signe positif, essaie $n = 2^\ell$. Attention, cela ne marche pas pour tous les $\ell$ :
   pour $n = 2^8 = 256$, le terme est négatif. Choisis $\ell$ en fonction d'un entier $k$, de
   sorte que $2^\ell < 3^k \leqslant 2^{\ell+1}$.
5. Le terme $2^{a_n} - 3^{b_n}$ peut-il être nul pour $n \geqslant 1$ ? Pense à la parité.

## Solution

Notons $u_n = 2^{a_n} - 3^{b_n}$. Les premières valeurs sont :

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|
| $a_n$ | $1$ | $4$ | $5$ | $12$ | $13$ | $16$ | $17$ | $32$ | $33$ |
| $b_n$ | $1$ | $2$ | $6$ | $7$ | $8$ | $12$ | $13$ | $14$ | $27$ |

Pour $n \geqslant 1$, on a $a_n \geqslant 1$ et $b_n \geqslant 1$ (par récurrence immédiate, ce
sont des entiers positifs et $a_n \geqslant n$). Donc $2^{a_n}$ est pair et $3^{b_n}$ est impair :
**$u_n$ n'est jamais nul** pour $n \geqslant 1$. Il suffit de trouver une infinité de $n$ avec
$u_n < 0$ et une infinité avec $u_n > 0$.

### Étape 1 : la valeur exacte aux puissances

Pour $m \geqslant 1$, on a $\lfloor 2^m / 2 \rfloor = 2^{m-1}$, donc
$a_{2^m} = 2\, a_{2^{m-1}} + 2^m$. Par récurrence, à partir de $a_1 = 1$ :
$$a_{2^m} = (m + 1)\, 2^m .$$
En effet, si $a_{2^{m-1}} = m \, 2^{m-1}$, alors $a_{2^m} = m\, 2^m + 2^m = (m+1)\,2^m$.

De la même façon, $b_{3^k} = 3\, b_{3^{k-1}} + 3^k$, d'où $b_{3^k} = (k + 1)\, 3^k$.

### Étape 2 : une majoration générale

Pour $n \geqslant 1$, soit $L(n)$ l'entier tel que $2^{L(n) - 1} \leqslant n < 2^{L(n)}$. Montrons,
par récurrence forte sur $n \geqslant 1$, que
$$a_n \leqslant L(n)\, n .$$

- Pour $n = 1$ : $L(1) = 1$ et $a_1 = 1$.
- Soit $n \geqslant 2$, et supposons l'inégalité vraie pour tous les entiers de $1$ à $n - 1$.
  Posons $L = L(n)$ et $q = \lfloor n/2 \rfloor$, de sorte que $1 \leqslant q < n$. On a
  $q \leqslant n/2 < 2^{L-1}$, et $q \geqslant 2^{L-2}$ car $n/2 \geqslant 2^{L-2}$ et
  $2^{L-2}$ est un entier inférieur ou égal à $n/2$. Donc $L(q) = L - 1$. Par hypothèse de
  récurrence, et comme $2q \leqslant n$ :
  $$a_n = 2\, a_q + n \leqslant 2\,(L - 1)\, q + n \leqslant (L - 1)\, n + n = L\, n .$$

De même, si $M(n)$ est l'entier tel que $3^{M(n) - 1} \leqslant n < 3^{M(n)}$, alors
$b_n \leqslant M(n)\, n$ pour tout $n \geqslant 1$ (même preuve avec $q = \lfloor n/3 \rfloor$
et $3q \leqslant n$, la vérification initiale portant sur $n = 1$ et $n = 2$).

### Étape 3 : une infinité de termes négatifs

Soit $k \geqslant 1$ et $n = 3^k$. D'après l'étape 1, $b_n = (k + 1)\, n$, donc
$3^{b_n} = \left(3^{k+1}\right)^n$.

Soit $L = L(n)$, de sorte que $2^{L-1} \leqslant 3^k$. Alors $2^L \leqslant 2 \times 3^k < 3^{k+1}$.
D'après l'étape 2,
$$2^{a_n} \leqslant 2^{L n} = \left(2^L\right)^n < \left(3^{k+1}\right)^n = 3^{b_n} .$$
Donc $u_{3^k} < 0$ pour tout $k \geqslant 1$.

### Étape 4 : une infinité de termes positifs

Soit $k \geqslant 1$. Il existe un unique entier $\ell \geqslant 0$ tel que
$$2^\ell < 3^k \leqslant 2^{\ell + 1}$$
(on prend pour $2^{\ell+1}$ la plus petite puissance de $2$ supérieure ou égale à $3^k$). Posons
$n = 2^\ell$.

D'une part, d'après l'étape 1, $a_n = (\ell + 1)\, n$, donc $2^{a_n} = \left(2^{\ell+1}\right)^n$.

D'autre part, $n < 3^k$, et $3^{k-1} = \dfrac{3^k}{3} \leqslant \dfrac{2^{\ell+1}}{3} < 2^\ell = n$.
Ainsi $3^{k-1} \leqslant n < 3^k$, c'est-à-dire $M(n) = k$, et l'étape 2 donne $b_n \leqslant k\, n$.
Donc
$$3^{b_n} \leqslant 3^{k n} = \left(3^k\right)^n \leqslant \left(2^{\ell+1}\right)^n = 2^{a_n} .$$
Comme $u_n \neq 0$, l'inégalité est stricte : $u_{2^\ell} > 0$.

Quand $k$ grandit, $3^k$ grandit, donc l'entier $\ell$ associé aussi. On obtient ainsi une
infinité d'entiers $n$ distincts avec $u_n > 0$.

### Conclusion

**La suite $2^{a_n} - 3^{b_n}$ est strictement négative pour tous les $n = 3^k$ et strictement
positive pour une infinité de puissances de $2$ : elle change de signe une infinité de fois.**

## Going further

- On peut écrire $a_n$ de façon explicite :
  $a_n = n + 2\lfloor n/2 \rfloor + 4\lfloor n/4 \rfloor + \cdots$, la somme s'arrêtant quand
  $\lfloor n/2^j \rfloor$ devient nul. Chaque terme est au plus égal à $n$, ce qui redonne
  l'étape 2.
- Le signe aux puissances de $2$ n'est pas toujours positif. Pour $n = 256 = 2^8$, on a
  $a_n = 9 \times 256$ et $243 \leqslant 256 < 729$. Le calcul montre que $u_{256} < 0$. Pourquoi
  l'argument de l'étape 4 ne s'applique-t-il pas à $\ell = 8$ ?
