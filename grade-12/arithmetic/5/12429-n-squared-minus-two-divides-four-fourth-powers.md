---
id: "12429"
title: "n² − 2 divise une somme de quatre puissances quatrièmes"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 90
tags: [maths-expertes, congruences, carres-modulo-p, bezout, gauss, nombres-premiers, principe-des-tiroirs]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 28 novembre 2018"
  reference: "2018-12_Test_RMM_28_novembre_enonce.pdf, exercice 3 ; corrigé 2018-12_Test_RMM_28_novembre_corrige.pdf (solution réécrite sans racine primitive ni lemme de Hensel : le cas où -1 est un carré se règle avec la racine de 2, l'autre avec le principe des tiroirs)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/12/Test_RMM_28_novembre_enonce.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-12_Test_RMM_28_novembre_enonce.pdf"
---

## Statement

On dit qu'un entier $k$ est **olympique** s'il existe quatre entiers $a$, $b$, $c$, $d$, tous
premiers avec $k$, tels que $k$ divise $a^4 + b^4 + c^4 + d^4$.

Soit $n$ un entier quelconque. Montrer que $n^2 - 2$ est olympique.

## Hints

1. Essaie un petit cas : pour $n = 3$, on a $n^2 - 2 = 7$. Calcule les puissances quatrièmes
   modulo $7$ et trouve-en quatre dont la somme est un multiple de $7$.
2. Montre que si $m_1$ et $m_2$ sont premiers entre eux et tous deux olympiques, alors $m_1 m_2$
   est olympique (pense au théorème de Bézout). Il suffit alors de traiter chaque puissance de
   nombre premier qui divise $n^2 - 2$.
3. Si $p$ est un nombre premier impair olympique, montre que $p^2$, $p^3$, … le sont aussi : on
   peut remplacer $d$ par $d + t\,p^j$ et choisir $t$ pour gagner un facteur $p$.
4. Soit $p$ un nombre premier impair qui divise $n^2 - 2$, de sorte que $n^2 \equiv 2 \pmod p$.
   Si $-1 \equiv i^2 \pmod p$, calcule $(1 + i)^2$ : tu dois obtenir un nombre $j$ tel que
   $j^4 \equiv -1$.
5. Si $-1$ n'est pas un carré modulo $p$, montre que tout carré non nul est une puissance
   quatrième, puis que $-1$ est une somme de deux carrés modulo $p$ (principe des tiroirs).

## Solution

Pour un nombre premier $p$, on dit qu'un entier $x$ est un **carré modulo $p$** s'il existe un
entier $y$ tel que $x \equiv y^2 \pmod p$.

Notons $k = n^2 - 2$. Ce nombre n'est jamais nul. Être premier avec $k$ ou divisible par $k$,
c'est la même chose qu'être premier avec $|k|$ ou divisible par $|k|$ : il suffit donc de montrer
que $|k|$ est olympique. Si $|k| = 1$, c'est clair ($a = b = c = d = 1$). Sinon, on décompose
$|k|$ en facteurs premiers.

### Étape 1 : on peut recoller des facteurs premiers entre eux

**Si $m_1$ et $m_2$ sont premiers entre eux et olympiques, alors $m_1 m_2$ est olympique.**

Soient $a_1, b_1, c_1, d_1$ qui conviennent pour $m_1$ et $a_2, b_2, c_2, d_2$ qui conviennent pour
$m_2$. D'après le théorème de Bézout, il existe des entiers $u$, $v$ tels que
$u\,m_1 + v\,m_2 = 1$. Posons
$$a = a_1\,v\,m_2 + a_2\,u\,m_1.$$
Comme $v\,m_2 = 1 - u\,m_1$, on a $a \equiv a_1 \pmod{m_1}$, et de même $a \equiv a_2 \pmod{m_2}$.
On construit $b$, $c$, $d$ de la même façon.

- Le nombre $a$ est premier avec $m_1$, car un diviseur commun de $a$ et $m_1$ diviserait
  $a_1 = a - (a - a_1)$. De même il est premier avec $m_2$, donc avec $m_1 m_2$. Idem pour $b$,
  $c$, $d$.
- La somme $S = a^4 + b^4 + c^4 + d^4$ est congrue modulo $m_1$ à
  $a_1^4 + b_1^4 + c_1^4 + d_1^4$, donc $m_1$ divise $S$. De même $m_2$ divise $S$. Comme $m_1$ et
  $m_2$ sont premiers entre eux, le théorème de Gauss donne : $m_1 m_2$ divise $S$.

De proche en proche, **un produit de puissances de nombres premiers distincts, toutes
olympiques, est olympique.** Il suffit donc de montrer que chaque puissance $p^\alpha$ qui apparaît
dans la décomposition de $|k|$ est olympique.

### Étape 2 : le facteur 2

Si $n$ est impair, $k$ est impair. Si $n = 2m$ est pair, $k = 2(2m^2 - 1)$ avec $2m^2 - 1$
impair. Le nombre $2$ apparaît donc au plus à la puissance $1$, et $2$ est olympique :
$1^4 + 1^4 + 1^4 + 1^4 = 4$.

### Étape 3 : d'un nombre premier impair à ses puissances

**Si $p$ est un nombre premier impair olympique, alors $p^\alpha$ est olympique pour tout
$\alpha \geqslant 1$.**

Être premier avec $p^\alpha$, c'est ne pas être divisible par $p$. Supposons que
$a, b, c, d$ ne soient pas divisibles par $p$ et que $p^j$ divise
$S = a^4 + b^4 + c^4 + d^4$, avec $j \geqslant 1$. Écrivons $S = p^j s$, et remplaçons $d$ par
$d' = d + t\,p^j$, où $t$ est un entier à choisir. Par la formule du binôme,
$$d'^4 = d^4 + 4\,d^3\,t\,p^j + (\text{termes divisibles par } p^{2j}).$$
Comme $2j \geqslant j + 1$, on obtient
$$a^4 + b^4 + c^4 + d'^4 \equiv p^j\,(s + 4\,d^3\,t) \pmod{p^{j+1}}.$$
Le nombre $4d^3$ n'est pas divisible par $p$ (car $p$ est impair et ne divise pas $d$), donc il est
premier avec $p$ et a un inverse modulo $p$. On peut donc choisir $t$ tel que
$s + 4d^3 t \equiv 0 \pmod p$. Alors $p^{j+1}$ divise la nouvelle somme, et $d' \equiv d \pmod p$
n'est toujours pas divisible par $p$. En répétant, on atteint $p^\alpha$.

### Étape 4 : les nombres premiers impairs qui divisent $n^2 - 2$

Soit $p$ un nombre premier impair qui divise $k$. Alors $n^2 \equiv 2 \pmod p$, et $p$ ne divise
pas $n$ (sinon il diviserait $2$). On note $n'$ un inverse de $n$ modulo $p$ : $n\,n' \equiv 1$,
donc $2\,n'^2 \equiv n^2 n'^2 \equiv 1 \pmod p$. Il reste à montrer que $p$ est olympique.

**Deux faits sur les carrés modulo $p$.**

- *Si $x^2 \equiv y^2 \pmod p$, alors $x \equiv y$ ou $x \equiv -y$.* En effet $p$ divise
  $(x - y)(x + y)$, et $p$ est premier.
- *Il y a exactement $\frac{p+1}{2}$ carrés modulo $p$ (en comptant $0$), donc $\frac{p-1}{2}$
  carrés non nuls et $\frac{p-1}{2}$ non-carrés.* Tout entier est congru à $\pm x$ avec
  $0 \leqslant x \leqslant \frac{p-1}{2}$, donc tout carré est congru à l'un des $x^2$ pour ces
  valeurs de $x$, et ces $\frac{p+1}{2}$ carrés sont distincts modulo $p$ d'après le premier fait
  (deux nombres distincts de cet intervalle ne sont pas opposés modulo $p$).

**Premier cas : $-1$ est un carré modulo $p$.** Soit $i$ tel que $i^2 \equiv -1 \pmod p$, et
posons $j = (1 + i)\,n'$. Alors
$$j^2 \equiv (1 + 2i + i^2)\,n'^2 \equiv 2i\,n'^2 \equiv i \pmod p, \qquad j^4 \equiv i^2 \equiv -1 \pmod p.$$
Le nombre $j$ n'est pas divisible par $p$ (sa puissance quatrième vaut $-1$ modulo $p$), et
$$1^4 + j^4 + 1^4 + j^4 \equiv 1 - 1 + 1 - 1 = 0 \pmod p.$$
Donc $p$ est olympique.

**Second cas : $-1$ n'est pas un carré modulo $p$.**

*(a) Tout carré non nul est une puissance quatrième.* Montrons d'abord que le produit de deux
non-carrés est un carré. Soit $r$ un non-carré. Si $q$ est un carré non nul, $rq$ est un non-carré :
sinon $r \equiv (rq) \times q'$, où $q'$ est l'inverse de $q$, qui est aussi un carré (l'inverse
de $z^2$ est le carré de l'inverse de $z$), et $r$ serait un carré. La multiplication par $r$
envoie donc les $\frac{p-1}{2}$ carrés non nuls sur des non-carrés, deux à deux distincts (car $r$
est inversible). Il n'y a que $\frac{p-1}{2}$ non-carrés : ils sont tous atteints ainsi. Un
non-carré $y$ ne peut donc pas avoir pour produit $ry$ un non-carré, déjà atteint par un carré :
$ry$ est un carré.

Soit maintenant $s \equiv y^2$ un carré non nul. Si $y$ est un carré, disons $y \equiv z^2$, alors
$s \equiv z^4$. Sinon, $-y$ est le produit des deux non-carrés $-1$ et $y$, donc un carré
$-y \equiv z^2$, et $s \equiv (-y)^2 \equiv z^4$.

*(b) $-1$ est une somme de deux carrés.* Quand $x$ parcourt $0, 1, \ldots, \frac{p-1}{2}$, les
$\frac{p+1}{2}$ nombres $x^2$ sont distincts modulo $p$. De même, quand $y$ parcourt ces valeurs, les
$\frac{p+1}{2}$ nombres $-1 - y^2$ sont distincts modulo $p$. Cela fait $p + 1$ nombres, pour $p$
restes possibles : deux d'entre eux sont congrus, et ils sont forcément l'un de chaque sorte. Il
existe donc $x$, $y$ tels que
$$x^2 + y^2 + 1 \equiv 0 \pmod p.$$
Ni $x$ ni $y$ n'est divisible par $p$ : si par exemple $x \equiv 0$, on aurait $y^2 \equiv -1$.

*(c) Conclusion du second cas.* Comme $n^2 \equiv 2$,
$$(nx)^2 + (ny)^2 + 1^2 + 1^2 \equiv 2x^2 + 2y^2 + 2 = 2\,(x^2 + y^2 + 1) \equiv 0 \pmod p.$$
Les quatre nombres $nx$, $ny$, $1$, $1$ ne sont pas divisibles par $p$, donc leurs carrés sont des
carrés non nuls, donc des puissances quatrièmes d'après (a) : il existe $a$, $b$ non divisibles
par $p$ avec $(nx)^2 \equiv a^4$ et $(ny)^2 \equiv b^4$. Alors
$a^4 + b^4 + 1^4 + 1^4 \equiv 0 \pmod p$, et $p$ est olympique.

### Conclusion

Chaque nombre premier impair $p$ qui divise $k$ est olympique (étape 4), donc chaque $p^\alpha$
aussi (étape 3). Le facteur $2$, s'il est présent, est olympique (étape 2). Par l'étape 1, $|k|$
est olympique. **Pour tout entier $n$, le nombre $n^2 - 2$ est olympique.**
