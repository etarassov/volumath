---
id: "10808"
title: "Les petits diviseurs de 2ᵖ + 3ᵖ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [congruences, nombres-premiers, petit-theoreme-de-fermat, bezout, maths-expertes]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Olympiques, exercice 9 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf (le corrigé oublie le cas où le facteur premier q est égal à p, traité ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Soit $p \geqslant 5$ un nombre premier.

Montrer que les seuls diviseurs positifs de $2^p + 3^p$ qui sont inférieurs ou égaux à $p$ sont $1$ et $5$.

## Hints

1. Commence par vérifier que $5$ divise bien $2^p + 3^p$. Pense à $3 \equiv -2 \pmod 5$.
2. Soit $d \leqslant p$ un diviseur, et $q$ un facteur premier de $d$. Montre que $q$ n'est ni $2$ ni $3$, et traite à part le cas $q = p$ avec le petit théorème de Fermat.
3. Si $q < p$, cherche un entier $a$ tel que $2a \equiv -3 \pmod q$. Montre que $a^p \equiv 1 \pmod q$, et compare avec le petit théorème de Fermat appliqué à $a$.
4. Comme $q - 1 < p$, les entiers $p$ et $q - 1$ sont premiers entre eux. Le théorème de Bézout permet alors de montrer que $a \equiv 1 \pmod q$. Il reste à vérifier que $d$ n'est pas divisible par $25$.

## Solution

Notons $N = 2^p + 3^p$. Comme $p \geqslant 5$ est premier, $p$ est impair.

### Étape 1 : $1$ et $5$ conviennent

Bien sûr $1$ divise $N$. Pour $5$ : on a $3 \equiv -2 \pmod 5$, donc, $p$ étant impair,
$$3^p \equiv (-2)^p = -2^p \pmod 5, \qquad \text{donc} \qquad N = 2^p + 3^p \equiv 0 \pmod 5 .$$
Et $5 \leqslant p$. Les nombres $1$ et $5$ sont donc bien des diviseurs de $N$ inférieurs ou égaux à $p$.

### Étape 2 : tout facteur premier d'un tel diviseur vaut $5$

Soit $d$ un diviseur de $N$ avec $2 \leqslant d \leqslant p$, et soit $q$ un nombre premier qui divise $d$. Alors $q$ divise $N$ et $q \leqslant p$.

- $q \neq 2$, car $N$ est la somme d'un nombre pair et d'un nombre impair, donc impair.
- $q \neq 3$, car $N \equiv 2^p \pmod 3$, et $2^p$ n'est pas un multiple de $3$.

**Cas $q = p$.** D'après le petit théorème de Fermat, $2^p \equiv 2$ et $3^p \equiv 3 \pmod p$, donc $N \equiv 5 \pmod p$. Comme $p$ divise $N$, il divise $5$, donc $p = 5$ et $q = 5$.

**Cas $q < p$.** Comme $q$ est impair, $2$ est inversible modulo $q$ : il existe un entier $t$ tel que $2t \equiv 1 \pmod q$ (Bézout, car $\mathrm{PGCD}(2, q) = 1$). Posons $a = -3t$. Alors
$$2a \equiv -3 \pmod q .$$

*Calcul de $a^p$.* On a $(2a)^p \equiv (-3)^p = -3^p \pmod q$, car $p$ est impair. Or $q$ divise $N$, donc $-3^p \equiv 2^p \pmod q$. Ainsi
$$2^p\, a^p \equiv 2^p \pmod q,$$
c'est-à-dire que $q$ divise $2^p\,(a^p - 1)$. Comme $q$ est premier avec $2^p$, le théorème de Gauss donne
$$a^p \equiv 1 \pmod q .$$

*Petit théorème de Fermat.* L'entier $a$ n'est pas un multiple de $q$ (sinon $2a \equiv 0$, et l'on aurait $3 \equiv 0 \pmod q$, impossible car $q \neq 3$). Donc
$$a^{q-1} \equiv 1 \pmod q .$$

*Combinaison des deux.* Comme $p$ est premier et $1 \leqslant q - 1 < p$, les entiers $p$ et $q - 1$ sont premiers entre eux. D'après le théorème de Bézout, il existe des entiers $u$ et $w$ avec $up + w(q-1) = 1$. Quitte à remplacer $u$ par $u + j(q-1)$ et $w$ par $w - jp$ pour un entier $j$ assez grand, on peut supposer $u \geqslant 1$, et alors $w \leqslant 0$. Posons $v = -w \geqslant 0$ : on a
$$up = 1 + v(q - 1) .$$
On calcule alors $a^{up}$ de deux façons :
$$a^{up} = \left(a^p\right)^u \equiv 1 \pmod q \qquad \text{et} \qquad a^{up} = a \times \left(a^{q-1}\right)^v \equiv a \pmod q .$$
Donc $a \equiv 1 \pmod q$. En revenant à la définition de $a$ : $2 \equiv 2a \equiv -3 \pmod q$, donc $q$ divise $5$, et $q = 5$.

Dans les deux cas, **le seul facteur premier possible de $d$ est $5$.**

### Étape 3 : $d$ n'est pas divisible par $25$

Si $25$ divisait $d$, on aurait $p \geqslant d \geqslant 25$, donc $p > 25$ puisque $25$ n'est pas premier. Montrons qu'alors $25$ ne divise même pas $N$.

Comme $p$ est impair, $3^p = -(-3)^p$, et l'identité $x^p - y^p = (x - y)\left(x^{p-1} + x^{p-2}y + \cdots + y^{p-1}\right)$ avec $x = 2$, $y = -3$ donne
$$N = 2^p - (-3)^p = 5 \times S, \qquad S = \sum_{i=0}^{p-1} 2^i\,(-3)^{p-1-i} .$$
Modulo $5$, on a $-3 \equiv 2$, donc chaque terme de $S$ est congru à $2^i \times 2^{p-1-i} = 2^{p-1}$, et
$$S \equiv p \times 2^{p-1} \pmod 5 .$$
Ni $p$ (premier différent de $5$) ni $2^{p-1}$ ne sont des multiples de $5$, donc $S$ n'est pas divisible par $5$, et $N = 5S$ n'est pas divisible par $25$.

### Conclusion

Un diviseur $d$ de $N$ avec $2 \leqslant d \leqslant p$ n'a que $5$ comme facteur premier, et n'est pas divisible par $25$ : c'est $5$. **Les seuls diviseurs positifs de $2^p + 3^p$ inférieurs ou égaux à $p$ sont $1$ et $5$.**

## Going further

1. Pour $p = 7$, calcule $2^7 + 3^7$ et décompose-le en facteurs premiers. Vérifie le résultat.
2. L'argument de l'étape 2 montre plus généralement ceci : si $p$ et $q$ sont des nombres premiers, si $a^p \equiv 1 \pmod q$ et si $p$ ne divise pas $q - 1$, alors $a \equiv 1 \pmod q$. Écris cette preuve en quelques lignes.
