---
id: "12442"
title: "Un nombre premier q qui ne divise jamais nᵖ − p"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [maths-expertes, congruences, nombres-premiers, petit-theoreme-de-fermat, bezout]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 février 2019"
  reference: "2019-03_Test-27-02.pdf, exercice 3 (c'est le problème 6 de l'OIM 2003) ; corrigé 2019-03_Test-27-02-Corrige.pdf (solution réécrite sans la notion d'ordre, avec Bézout et le petit théorème de Fermat)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/03/Test-27-02.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2019-03_Test-27-02.pdf"
---

## Statement

Soit $p$ un nombre premier. Démontrer qu'il existe un nombre premier $q$ tel que, pour tout entier
relatif $n$, le nombre $n^p - p$ ne soit pas divisible par $q$. Autrement dit,
$n^p \not\equiv p \pmod{q}$ pour tout entier $n$.

## Hints

1. Si $n^p \equiv p \pmod{q}$, alors $n^{p^2} \equiv p^p \pmod{q}$. Il serait commode que $q$
   divise $p^p - 1$.
2. Cherche $q$ parmi les diviseurs premiers de $N = 1 + p + p^2 + \cdots + p^{p-1}$. Que vaut $N$
   modulo $p^2$ ?
3. Choisis un diviseur premier $q$ de $N$ qui n'est pas congru à $1$ modulo $p^2$. Pourquoi en
   existe-t-il un ?
4. Avec le théorème de Bézout, déduis de $n^{p^2} \equiv 1$ et de $n^{q-1} \equiv 1 \pmod{q}$ que
   $n^p \equiv 1 \pmod{q}$. Calcule alors $N$ modulo $q$.

## Solution

### Un lemme sur les puissances

**Lemme.** Soient $q$ un nombre premier, $n$ un entier et $a, b \geqslant 1$ deux entiers tels que
$n^a \equiv 1 \pmod{q}$ et $n^b \equiv 1 \pmod{q}$. Alors $n^d \equiv 1 \pmod{q}$, où
$d = \mathrm{PGCD}(a, b)$.

*Preuve.* D'après le théorème de Bézout, il existe des entiers $u$ et $v$ tels que
$au + bv = d$. En remplaçant $u$ par $u + kb$ et $v$ par $v - ka$ avec $k$ assez grand, on peut
supposer $u > 0$ et $v < 0$. Posons $w = -v$, qui est un entier positif : on a alors
$au = d + bw$, donc
$$n^{au} = n^d \times n^{bw}.$$
Or $n^{au} = (n^a)^u \equiv 1$ et $n^{bw} = (n^b)^w \equiv 1 \pmod{q}$. Donc
$n^d \equiv 1 \pmod{q}$.

### Étape 1 : le nombre $N$

Posons
$$N = 1 + p + p^2 + \cdots + p^{p-1}.$$
C'est la somme des termes d'une suite géométrique, donc $(p - 1)N = p^p - 1$ : **$N$ divise
$p^p - 1$.**

Modulo $p^2$, les termes $p^2, p^3, \ldots, p^{p-1}$ sont nuls, donc $N \equiv 1 + p \pmod{p^2}$.
Comme $p$ n'est pas un multiple de $p^2$, on a **$N \not\equiv 1 \pmod{p^2}$.** De même, modulo
$p$, tous les termes sauf le premier sont nuls, donc $N \equiv 1 \pmod{p}$ : **$p$ ne divise pas
$N$.**

### Étape 2 : le choix de $q$

Comme $N > 1$, on peut écrire $N$ comme un produit de nombres premiers. Si tous ces nombres
premiers étaient congrus à $1$ modulo $p^2$, leur produit $N$ le serait aussi, ce qui contredit
l'étape 1. Il existe donc **un nombre premier $q$ qui divise $N$ et tel que
$q \not\equiv 1 \pmod{p^2}$**, c'est-à-dire tel que $p^2$ ne divise pas $q - 1$.

Ce nombre $q$ vérifie de plus :

- $q \neq p$, car $q$ divise $N$ et $p$ ne divise pas $N$ ;
- $p^p \equiv 1 \pmod{q}$, car $q$ divise $N$, qui divise $p^p - 1$.

Montrons que ce $q$ convient.

### Étape 3 : si $n^p \equiv p$, alors $n^p \equiv 1$

Supposons par l'absurde qu'il existe un entier $n$ tel que $n^p \equiv p \pmod{q}$.

Si $q$ divisait $n$, il diviserait $n^p$, donc aussi $p$, et l'on aurait $q = p$, ce qui est exclu.
Donc $q$ ne divise pas $n$, et le petit théorème de Fermat donne
$$n^{q-1} \equiv 1 \pmod{q}.$$
D'autre part,
$$n^{p^2} = (n^p)^p \equiv p^p \equiv 1 \pmod{q}.$$
D'après le lemme, $n^d \equiv 1 \pmod{q}$, où $d = \mathrm{PGCD}(p^2, q - 1)$. Les diviseurs de
$p^2$ sont $1$, $p$ et $p^2$, et $d \neq p^2$ puisque $p^2$ ne divise pas $q - 1$. Donc $d = 1$ ou
$d = p$ ; dans les deux cas $d$ divise $p$, et
$$n^p = (n^d)^{p/d} \equiv 1 \pmod{q}.$$

### Étape 4 : la contradiction

On a donc $p \equiv n^p \equiv 1 \pmod{q}$. Alors toutes les puissances de $p$ sont congrues à
$1$ modulo $q$, et
$$N = 1 + p + \cdots + p^{p-1} \equiv \underbrace{1 + 1 + \cdots + 1}_{p \text{ termes}} = p \pmod{q}.$$
Comme $q$ divise $N$, il divise aussi $p$, donc $q = p$. C'est encore exclu.

### Conclusion

Aucun entier $n$ ne vérifie $n^p \equiv p \pmod{q}$. **Tout diviseur premier $q$ de
$1 + p + \cdots + p^{p-1}$ qui n'est pas congru à $1$ modulo $p^2$ convient.**

## Going further

Que donne cette méthode pour $p = 2$ et pour $p = 3$ ? Vérifie directement, en calculant tous les
cubes modulo $13$, que $n^3 \equiv 3 \pmod{13}$ n'a pas de solution.
