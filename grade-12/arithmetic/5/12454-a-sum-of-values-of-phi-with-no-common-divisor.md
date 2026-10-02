---
id: "12454"
title: "Des sommes de valeurs de φ sans diviseur commun"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 75
tags: [maths-expertes, indicatrice-d-euler, congruences, nombres-premiers, principe-des-tiroirs, suites-periodiques, lemme-de-gauss]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2019"
  reference: "2019-11_Test-15-05.pdf, exercice 6 (groupe Senior) ; corrigé dans le même fichier (le corrigé écrit que φ(n) est pair pour tout n ≥ 2, alors que φ(2) = 1 : il faut lire n ≥ 3 ; il utilise aussi le théorème d'Euler, remplacé ici par le principe des tiroirs et le lemme de Gauss)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/11/Test-15-05.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-11_Test-15-05.pdf"
---

## Statement

Pour tout entier $m \geqslant 1$, on note $\varphi(m)$ le nombre d'entiers $\ell$ tels que
$1 \leqslant \ell \leqslant m$ et $\mathrm{PGCD}(\ell, m) = 1$. Par exemple $\varphi(1) = 1$,
$\varphi(2) = 1$, $\varphi(6) = 2$.

Soit $d \geqslant 1$ un entier et $a_0, a_1, \ldots, a_d$ des entiers relatifs tels que
$\mathrm{PGCD}(a_0, a_1) = 1$. Pour tout entier $n \geqslant 1$, on pose
$$u_n = a_0\,\varphi(n) + a_1\,\varphi(n+1) + \cdots + a_d\,\varphi(n+d) = \sum_{k=0}^{d} a_k\,\varphi(n+k).$$

Démontrer que $1$ est le seul entier naturel qui divise tous les entiers $u_n$.

## Hints

1. Il suffit de montrer qu'aucun nombre premier $p$ ne divise tous les $u_n$. Commence par
   $p = 2$ : calcule $u_1$ et $u_2$ modulo $2$, sachant que $\varphi(m)$ est pair dès que
   $m \geqslant 3$.
2. Soit $\delta$ le plus grand indice tel que $p$ ne divise pas $a_\delta$. Si $p$ divise tous les
   $u_n$, montre que les restes de $\varphi(n)$ modulo $p$ forment une suite périodique à partir
   d'un certain rang.
3. Soit $\ell$ cette période et $q$ un nombre premier plus grand que $\ell$. Trouve un exposant
   $e \geqslant 1$ tel que $q^e \equiv 1 \pmod{\ell}$, puis compare $\varphi(q)$ et
   $\varphi(q^{e+1})$ modulo $p$.
4. Il te faudra deux grands nombres premiers $q$ et $r$ qui ne sont pas congrus à $1$ modulo $p$.
   Pour les trouver, regarde les facteurs premiers de $N! - 1$. Compare ensuite $\varphi(r)$ et
   $\varphi(rq^e)$.

## Solution

Il suffit de montrer qu'**aucun nombre premier $p$ ne divise tous les $u_n$**. En effet, un entier
naturel $D \geqslant 2$ qui diviserait tous les $u_n$ aurait un facteur premier, qui les
diviserait tous aussi. Et les $u_n$ ne sont pas tous nuls (sinon tout nombre premier les
diviserait), donc $0$ ne les divise pas tous non plus.

### Étape 0 : trois propriétés de $\varphi$

**(a) $\varphi(m)$ est pair pour $m \geqslant 3$.** Pour $1 \leqslant \ell \leqslant m - 1$, on a
$\mathrm{PGCD}(\ell, m) = \mathrm{PGCD}(m - \ell, m)$, puisqu'un diviseur commun à $\ell$ et $m$
divise $m - \ell$, et réciproquement. On peut donc regrouper les entiers premiers avec $m$ par
paires $\{\ell, m - \ell\}$ (l'entier $m$ lui-même n'est pas premier avec $m$, car $m \geqslant 2$).
Une paire n'a qu'un seul élément quand $\ell = m - \ell$, c'est-à-dire $m = 2\ell$ ; mais alors
$\mathrm{PGCD}(\ell, m) = \ell$, qui vaut $1$ seulement si $m = 2$. Pour $m \geqslant 3$, les
paires ont toutes deux éléments, et $\varphi(m)$ est pair.

**(b) Si $q$ est premier et $j \geqslant 1$, alors $\varphi(q^j) = q^{j-1}(q-1)$.** Un entier est
premier avec $q^j$ si et seulement s'il n'est pas multiple de $q$. Entre $1$ et $q^j$, il y a
$q^{j-1}$ multiples de $q$, donc $\varphi(q^j) = q^j - q^{j-1}$.

**(c) Si $q$ et $r$ sont deux nombres premiers distincts et $j \geqslant 1$, alors
$\varphi(rq^j) = q^{j-1}(q-1)(r-1)$.** Un entier est premier avec $rq^j$ si et seulement s'il n'est
multiple ni de $r$ ni de $q$. Entre $1$ et $rq^j$, il y a $q^j$ multiples de $r$, $rq^{j-1}$
multiples de $q$, et $q^{j-1}$ multiples des deux à la fois, c'est-à-dire de $rq$. Ces derniers
ont été comptés deux fois parmi les multiples, donc
$$\varphi(rq^j) = rq^j - q^j - rq^{j-1} + q^{j-1} = q^{j-1}(rq - q - r + 1) = q^{j-1}(q - 1)(r - 1).$$

À partir de maintenant, on raisonne par l'absurde : **soit $p$ un nombre premier qui divise tous
les $u_n$.**

### Étape 1 : $p$ n'est pas $2$

D'après (a), $\varphi(m)$ est pair pour $m \geqslant 3$. Modulo $2$, il ne reste donc dans $u_1$
que les termes en $\varphi(1)$ et $\varphi(2)$, et dans $u_2$ que le terme en $\varphi(2)$ :
$$u_1 \equiv a_0 + a_1 \pmod 2, \qquad u_2 \equiv a_0 \pmod 2.$$
Si $u_1$ et $u_2$ étaient pairs, $a_0$ et $a_1$ seraient pairs tous les deux, ce qui contredit
$\mathrm{PGCD}(a_0, a_1) = 1$. Donc $p \neq 2$, et $p \geqslant 3$.

### Étape 2 : les restes de $\varphi(n)$ modulo $p$ finissent par se répéter

Comme $\mathrm{PGCD}(a_0, a_1) = 1$, le nombre $p$ ne divise pas à la fois $a_0$ et $a_1$. Soit
$\delta$ le plus grand indice tel que $p$ ne divise pas $a_\delta$. Les termes d'indice
$k > \delta$ sont nuls modulo $p$, donc pour tout $n \geqslant 1$ :
$$a_\delta\,\varphi(n + \delta) \equiv -\sum_{k=0}^{\delta - 1} a_k\,\varphi(n+k) \pmod p. \qquad (\star)$$

Si $\delta = 0$, la somme de droite est vide, et $(\star)$ dit que $p$ divise $a_0\,\varphi(n)$,
donc $\varphi(n)$, pour tout $n$ (car $p$ est premier et ne divise pas $a_0$). C'est faux pour
$n = 1$. Donc $\delta \geqslant 1$.

Comme $p$ est premier et ne divise pas $a_\delta$, il existe un entier $c$ tel que
$c\,a_\delta \equiv 1 \pmod p$ (théorème de Bézout). En multipliant $(\star)$ par $c$, on voit que
**le reste de $\varphi(n + \delta)$ modulo $p$ est déterminé par les restes de $\varphi(n)$,
$\varphi(n+1)$, ..., $\varphi(n + \delta - 1)$.**

Notons $T_n$ la liste des restes modulo $p$ de $\varphi(n), \varphi(n+1), \ldots, \varphi(n + \delta - 1)$.
Il n'y a que $p^\delta$ listes possibles. D'après le principe des tiroirs, parmi
$T_1, T_2, \ldots, T_{p^\delta + 1}$, deux sont égales : il existe $k \geqslant 1$ et
$\ell \geqslant 1$ tels que $T_k = T_{k+\ell}$. D'après la phrase en gras, $T_{n+1}$ se calcule à
partir de $T_n$ ; donc $T_{k+1} = T_{k+\ell+1}$, puis $T_{k+2} = T_{k+\ell+2}$, et ainsi de suite.
En regardant le premier élément de chaque liste :
$$\varphi(n + \ell) \equiv \varphi(n) \pmod p \quad \text{pour tout } n \geqslant k.$$
En avançant de $\ell$ en $\ell$, on en déduit :

> si $m \geqslant k$, $m' \geqslant k$ et $m \equiv m' \pmod{\ell}$, alors
> $\varphi(m) \equiv \varphi(m') \pmod p$. $\qquad (\star\star)$

### Étape 3 : de grands nombres premiers qui ne sont pas congrus à $1$ modulo $p$

**Lemme.** Pour tout entier $a \geqslant 1$, il existe un nombre premier $q > a$ tel que
$q \not\equiv 1 \pmod p$.

*Preuve.* Soit $N = \max(a, p)$ et $M = N! - 1$. Comme $N \geqslant p \geqslant 3$, on a
$M \geqslant 5$. Comme $p$ divise $N!$, on a $M \equiv -1 \pmod p$. Si tous les facteurs premiers
de $M$ étaient congrus à $1$ modulo $p$, leur produit $M$ le serait aussi, et on aurait
$-1 \equiv 1 \pmod p$, c'est-à-dire que $p$ diviserait $2$ : c'est faux puisque $p \geqslant 3$.
Donc $M$ a un facteur premier $q \not\equiv 1 \pmod p$. Enfin $q$ divise $N! - 1$, donc il ne
divise pas $N!$, et il ne peut pas être inférieur ou égal à $N$ : on a $q > N \geqslant a$.

Appliquons le lemme avec $a = k + \ell + p$ : on obtient un nombre premier $r > k + \ell + p$ tel
que $r \not\equiv 1 \pmod p$. Appliquons-le encore avec $a = r$ : on obtient un nombre premier
$q > r$ tel que $q \not\equiv 1 \pmod p$. Les nombres $q$ et $r$ sont distincts, plus grands que
$k$, que $\ell$ et que $p$.

### Étape 4 : la contradiction

**Un exposant $e$.** Comme $q$ est premier et $q > \ell$, $q$ ne divise pas $\ell$, donc
$\mathrm{PGCD}(q, \ell) = 1$. Parmi les $\ell + 1$ nombres $q, q^2, \ldots, q^{\ell+1}$, deux ont le
même reste modulo $\ell$ : $q^i \equiv q^j \pmod{\ell}$ avec $1 \leqslant i < j$. Alors $\ell$
divise $q^i(q^{j-i} - 1)$ et il est premier avec $q^i$, donc, d'après le lemme de Gauss, $\ell$
divise $q^{j-i} - 1$. Posons $e = j - i \geqslant 1$ : on a $q^e \equiv 1 \pmod{\ell}$.

Par conséquent, pour tout $m \geqslant k$, on a $q^e m \equiv m \pmod{\ell}$ et $q^e m \geqslant k$,
donc, d'après $(\star\star)$,
$$\varphi(q^e m) \equiv \varphi(m) \pmod p.$$

**Avec $m = q$.** D'après (b), $\varphi(q^{e+1}) = q^e(q - 1)$ et $\varphi(q) = q - 1$. Donc
$q^e(q-1) \equiv q - 1$, soit $(q-1)(q^e - 1) \equiv 0 \pmod p$. Comme $p$ est premier et ne divise
pas $q - 1$, il divise $q^e - 1$ :
$$q^e \equiv 1 \pmod p.$$

**Avec $m = r$.** D'après (c), $\varphi(rq^e) = q^{e-1}(q-1)(r-1)$, et $\varphi(r) = r - 1$. Donc
$(r - 1)\,[q^{e-1}(q - 1) - 1] \equiv 0 \pmod p$. Comme $p$ ne divise pas $r - 1$,
$$q^{e-1}(q - 1) \equiv 1 \pmod p, \qquad \text{c'est-à-dire} \qquad q^e - q^{e-1} \equiv 1 \pmod p.$$

En retranchant la seconde congruence affichée de la première, on obtient $q^{e-1} \equiv 0 \pmod p$. Si $e = 1$,
cela dit que $p$ divise $1$ ; si $e \geqslant 2$, cela dit que le nombre premier $p$ divise $q$,
donc $p = q$, alors que $q > p$. Dans les deux cas c'est absurde.

### Conclusion

Aucun nombre premier ne divise tous les $u_n$. **Le seul entier naturel qui divise tous les $u_n$
est donc $1$.**

## Going further

1. Avec $d = 2$, $a_0 = 0$, $a_1 = 2$ et $a_2 = 1$, montrer que tous les $u_n$ sont pairs. Pourquoi
   cela ne contredit-il pas l'énoncé, alors que $\mathrm{PGCD}(a_0, a_1, a_2) = 1$ ?
2. Le cœur de la preuve dit que, pour tout nombre premier $p \geqslant 3$, la suite des restes de
   $\varphi(n)$ modulo $p$ n'est périodique à partir d'aucun rang. Que se passe-t-il pour $p = 2$ ?
