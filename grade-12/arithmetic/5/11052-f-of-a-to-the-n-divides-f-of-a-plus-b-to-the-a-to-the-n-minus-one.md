---
id: "11052"
title: "f(a)ⁿ divise f(a + b)^(aⁿ⁻¹) − f(b)^(aⁿ⁻¹)"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [hors-programme, equation-fonctionnelle, valuation, petit-theoreme-de-fermat, nombres-premiers, tiroirs, congruences]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 3 (arithmétique)"
  reference: "2023-01_Sujet-envoi-3.pdf, Exercices Seniors, exercice 18 ; corrigé 2023-03_corrige.pdf (première méthode du corrigé). Coquille de l'énoncé : « premiers entre dans leur ensemble » pour « premiers entre eux dans leur ensemble »."
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-01_Sujet-envoi-3.pdf"
---

## Statement

On note $\mathbb{N}^*$ l'ensemble des entiers strictement positifs. Déterminer toutes les fonctions
$f : \mathbb{N}^* \to \mathbb{N}^*$ telles que :

1. les entiers $f(1), f(2), f(3), \ldots$ sont premiers entre eux dans leur ensemble (aucun nombre premier
   ne les divise tous) ;
2. il existe un entier $N \geqslant 1$ tel que, pour tout $n \geqslant N$, on ait $f(n) \neq 1$ et, pour tous
   $a, b \in \mathbb{N}^*$,
   $$f(a)^n \ \text{divise} \ f(a + b)^{a^{n-1}} - f(b)^{a^{n-1}} .$$

## Hints

1. Montre que l'identité convient. Il s'agit de prouver que $a^{k+1}$ divise $(a + b)^{a^k} - b^{a^k}$, par récurrence sur $k$.
2. Montre que $f$ n'est pas constante, puis que $f(1) = 1$ en prenant $a = 1$.
3. Montre que $f(a)$ divise $a$ : pour un facteur premier $p$ de $f(a)$, compare quand $n$ grandit l'exposant de $p$ dans $f(a)^n$ et dans $f(a + b)^{a^{n-1}} - f(b)^{a^{n-1}}$, grâce au lemme LTE. Il faut choisir $b$ pour que $f(a + b) \neq f(b)$.
4. Pour un nombre premier $\ell$ avec $f(\ell) = \ell$, le petit théorème de Fermat montre que $\ell$ divise $f(b + \ell) - f(b)$.
5. Pour montrer $f(u) = u$, cherche un entier $n$ avec $f(n) = n$ et un grand nombre premier $q$ qui divise $n - u$. Un produit de nombres premiers distincts $\ell$ vérifiant $f(\ell) = \ell$ est un bon candidat pour $n$.

## Solution

**Rappel.** Deux résultats qui ne sont pas au programme du lycée (le premier figure en option maths
expertes).

* **Petit théorème de Fermat.** Si $\ell$ est un nombre premier, alors $\ell$ divise $X^\ell - X$ pour tout
  entier $X$. En l'appliquant plusieurs fois, $\ell$ divise aussi $X^{\ell^k} - X$ pour tout $k \geqslant 0$.
* **Lemme LTE** (« relèvement des exposants »). Pour un entier non nul $Z$ et un nombre premier $p$, notons
  $e_p(Z)$ l'exposant de $p$ dans la décomposition de $|Z|$ en facteurs premiers. Soient $x \neq y$ deux
  entiers non divisibles par $p$, avec $p$ qui divise $x - y$, et soit $m \geqslant 1$. Alors
  $$e_p(x^m - y^m) = e_p(x - y) + e_p(m)$$
  dans chacun des cas suivants : $p$ est impair ; ou $p = 2$ et $m$ est impair ; ou $p = 2$ et $4$ divise
  $x - y$.

**Réponse :** la seule solution est l'identité, $f(n) = n$ pour tout $n$.

### L'identité convient

La condition 1 est claire, puisque $f(1) = 1$. Pour la condition 2, avec $N = 2$, on a bien $f(n) = n \neq 1$
pour $n \geqslant 2$, et il reste à voir que $a^n$ divise $(a + b)^{a^{n-1}} - b^{a^{n-1}}$. Montrons par
récurrence sur $k \geqslant 0$ que $a^{k+1}$ divise $D_k = (a + b)^{a^k} - b^{a^k}$.

* Pour $k = 0$ : $D_0 = (a + b) - b = a$.
* Si $a^{k+1}$ divise $D_k$, posons $X = (a + b)^{a^k}$ et $Y = b^{a^k}$. Alors
  $$D_{k+1} = X^a - Y^a = (X - Y)\left(X^{a-1} + X^{a-2}Y + \cdots + Y^{a-1}\right) .$$
  Comme $a$ divise $X - Y$, chaque terme $X^{a-1-i}Y^i$ a le même reste que $Y^{a-1}$ dans la division par
  $a$, donc la grande parenthèse a le même reste que $a\,Y^{a-1}$ : elle est divisible par $a$. Donc
  $a^{k+2}$ divise $D_{k+1}$.

Avec $k = n - 1$, on obtient le résultat.

### Une solution est l'identité

Soit $f$ une solution, et $N$ l'entier de la condition 2.

**Étape 1 : $f$ n'est pas constante et $f(1) = 1$.** Si $f$ était constante égale à $c$, la condition 1
donnerait $c = 1$, alors que $f(n) \neq 1$ pour $n \geqslant N$. Il existe donc $b$ avec
$f(b + 1) \neq f(b)$. Avec $a = 1$, la condition 2 dit que $f(1)^n$ divise $f(b + 1) - f(b)$, qui n'est pas
nul, pour tout $n \geqslant N$. Donc $f(1)^n \leqslant |f(b + 1) - f(b)|$ pour tout $n \geqslant N$, ce qui
force $f(1) = 1$.

**Étape 2 : $f(a)$ divise $a$.** C'est vrai pour $a = 1$. Soit $a \geqslant 2$, et soit $p$ un facteur
premier de $f(a)$ ; notons $e = e_p(f(a)) \geqslant 1$.

*Le choix de $b$.* Considérons les entiers $1, 1 + a, 1 + 2a, \ldots$. On a $f(1) = 1$, et $f(1 + ta) \neq 1$
dès que $1 + ta \geqslant N$. Il existe donc $t$ tel que $f(1 + (t + 1)a) \neq f(1 + ta)$. Posons
$b = 1 + ta$, $X = f(a + b)$ et $Y = f(b)$, de sorte que $X \neq Y$.

*$p$ ne divise ni $X$ ni $Y$.* Pour tout $s \geqslant 0$, la condition 2 (avec $n = N$) montre que $p$
divise $f(1 + (s + 1)a)^{a^{N-1}} - f(1 + sa)^{a^{N-1}}$. Donc si $p$ ne divise pas $f(1 + sa)$, il ne
divise pas non plus $f(1 + (s + 1)a)$. Comme $p$ ne divise pas $f(1) = 1$, de proche en proche $p$ ne
divise aucun $f(1 + sa)$, en particulier ni $X$ ni $Y$.

*Les exposants.* Posons $D_k = X^{a^k} - Y^{a^k}$, qui n'est pas nul. La condition 2 dit que $f(a)^{k+1}$
divise $D_k$ pour tout $k \geqslant N - 1$, donc

$$e_p(D_k) \geqslant (k + 1)\,e \quad \text{pour tout } k \geqslant N - 1 . \qquad (1)$$

En particulier, $e_p(D_N) \geqslant 2$ : $p$ divise $D_N$, et si $p = 2$, alors $4$ divise $D_N$.
Appliquons le lemme LTE à $x = X^{a^N}$, $y = Y^{a^N}$ (non divisibles par $p$, distincts, avec $p$
divisant $x - y = D_N$) et $m = a^{k-N}$ pour $k \geqslant N$. Les conditions sont remplies : si $p = 2$,
on vient de voir que $4$ divise $x - y$. On obtient

$$e_p(D_k) = e_p(D_N) + (k - N)\,e_p(a) \quad \text{pour tout } k \geqslant N .$$

Avec (1), cela donne $(k + 1)\,e \leqslant e_p(D_N) + (k - N)\,e_p(a)$, donc
$(k + 1)\left(e - e_p(a)\right) \leqslant e_p(D_N)$ pour tout $k \geqslant N$. Le membre de droite ne dépend
pas de $k$ : si l'on avait $e > e_p(a)$, le membre de gauche deviendrait aussi grand qu'on veut. Donc
$e_p(f(a)) \leqslant e_p(a)$.

Ceci vaut pour tout facteur premier $p$ de $f(a)$, donc $f(a)$ divise $a$. En particulier,
$1 \leqslant f(a) \leqslant a$.

**Étape 3 : les nombres premiers.** Si $\ell$ est premier, $f(\ell)$ divise $\ell$, donc vaut $1$ ou $\ell$.
Pour $\ell \geqslant N$, $f(\ell) \neq 1$, donc $f(\ell) = \ell$.

**Étape 4 : si $f(\ell) = \ell$ avec $\ell$ premier, alors $\ell$ divise $f(c) - f(d)$ dès que $\ell$ divise
$c - d$.** Pour tout $b$, la condition 2 avec $a = \ell$ et $n = N$ montre que $\ell$ divise
$f(b + \ell)^{\ell^{N-1}} - f(b)^{\ell^{N-1}}$. D'après le petit théorème de Fermat,
$f(b + \ell)^{\ell^{N-1}}$ a le même reste que $f(b + \ell)$ dans la division par $\ell$, et de même pour
$f(b)$. Donc $\ell$ divise $f(b + \ell) - f(b)$. De proche en proche, $\ell$ divise
$f(d + j\ell) - f(d)$ pour tout $j \geqslant 0$, ce qui donne le résultat.

**Étape 5 : certains produits de nombres premiers.** Soit $n = \ell_1 \ell_2 \cdots \ell_k$ un produit de
nombres premiers distincts vérifiant tous $f(\ell_i) = \ell_i$. Pour chaque $i$, $\ell_i$ divise
$n - \ell_i$, donc (étape 4) $\ell_i$ divise $f(n) - f(\ell_i) = f(n) - \ell_i$, donc $\ell_i$ divise $f(n)$.
Ces nombres premiers étant distincts, leur produit $n$ divise $f(n)$. Comme $f(n)$ divise $n$, on obtient
$f(n) = n$.

**Étape 6 : $f(u) = u$ pour tout $u \geqslant 2$.** Fixons $u \geqslant 2$. Soit $P$ l'ensemble des nombres
premiers inférieurs ou égaux à $\max(u, N)$, et $M = \left(\prod_{p \in P} p\right)^u$. Tout nombre premier
$\ell$ hors de $P$ vérifie $\ell > N$, donc $f(\ell) = \ell$ (étape 3), et $\ell$ ne divise pas $M$.

*Un bon entier $n$.* Il y a une infinité de nombres premiers hors de $P$, et seulement $M$ restes possibles
dans la division par $M$ : une infinité d'entre eux ont le même reste $c$. Comme ces nombres premiers ne
partagent aucun facteur premier avec $M$, $c$ non plus. Parmi les restes de $c, c^2, \ldots, c^{M+1}$, deux
sont égaux, disons ceux de $c^i$ et $c^j$ avec $i < j$ : alors $M$ divise $c^i(c^{j-i} - 1)$, et comme $c^i$
n'a aucun facteur premier commun avec $M$, $M$ divise $c^{k} - 1$, où $k = j - i \geqslant 1$. Choisissons
$k$ nombres premiers distincts hors de $P$, tous de reste $c$ et tous plus grands que $M + u$, et notons $n$
leur produit. Alors :

* $n$ a le même reste que $c^k$, c'est-à-dire $1$ : $M$ divise $n - 1$ ;
* $n > M + u$ ;
* $f(n) = n$, d'après l'étape 5.

*Un grand facteur premier de $n - u$.* Soit $p \in P$. Si $p^u$ divisait $n - u$, comme $p^u$ divise $M$ qui
divise $n - 1$, il diviserait $(n - 1) - (n - u) = u - 1$. Or $1 \leqslant u - 1 < 2^u \leqslant p^u$ : c'est
impossible. Donc $e_p(n - u) \leqslant u - 1$ pour tout $p \in P$, et la partie de $n - u$ formée des nombres
premiers de $P$ vaut au plus $\prod_{p \in P} p^{u-1} < M < n - u$. Le nombre $n - u$ a donc un facteur
premier $q$ qui n'est pas dans $P$. On a $q > u$ et $f(q) = q$.

*Conclusion de l'étape.* D'après l'étape 4, $q$ divise $f(n) - f(u) = n - f(u)$. Comme $q$ divise aussi
$n - u$, il divise la différence $u - f(u)$. Or $0 \leqslant u - f(u) \leqslant u - 1 < q$. Donc
$u - f(u) = 0$, c'est-à-dire $f(u) = u$.

**Conclusion.** Avec $f(1) = 1$ (étape 1), on a $f(u) = u$ pour tout $u \geqslant 1$. La seule solution est
l'identité.

## Going further

Où la condition 1 a-t-elle servi ? Montrer que, si on la supprime, les solutions sont l'identité et les
fonctions constantes égales à un entier $c \geqslant 2$.
