---
id: "12221"
title: "2ⁿ = 3ᵐ + 23"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [equation diophantienne, puissances, restes, divisibilite, congruences, recurrence]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mars 2015"
  reference: "2017-10_ofm-2014-2015-test-mars.pdf, exercices pour les candidats à la JBMO, exercice 3 (pas de corrigé publié)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mars.pdf"
---

## Statement

Déterminer tous les entiers naturels $m$ et $n$ tels que

$$2^n = 3^m + 23.$$

## Hints

1. Cherche d'abord une solution à la main, avec de petites valeurs de $n$.
2. Pour $n \geqslant 6$, le nombre $2^n$ est un multiple de $4$, et même de $64$. Regarde l'équation à travers les restes dans la division par $4$ : que dire de $m$ ?
3. Écris $m = 2k$, donc $3^m = 9^k$. Quel est le reste de $9^k$ dans la division par $64$ ? Commence par $9$, $81$, $729$.
4. Tu dois obtenir une information précise sur le reste de $m$ dans la division par $16$. Regarde alors l'équation à travers les restes dans la division par $17$.

## Solution

**Les restes.** On dit que deux entiers $x$ et $y$ sont **congrus modulo $q$**, et on écrit $x \equiv y \pmod q$, quand ils ont le même reste dans la division par $q$, c'est-à-dire quand $x - y$ est un multiple de $q$. Si $x \equiv y$ et $x' \equiv y'$, alors $x + x' \equiv y + y'$ et $x x' \equiv y y'$ : pour connaître le reste d'une somme ou d'un produit, il suffit de connaître les restes des termes. En particulier, $x \equiv y$ entraîne $x^k \equiv y^k$.

**Étape 0. Les petites valeurs de $n$.**

Comme $3^m \geqslant 1$, il faut $2^n \geqslant 24$, donc $n \geqslant 5$. Pour $n = 5$, on trouve $3^m = 32 - 23 = 9$, donc $m = 2$. Ainsi $(n, m) = (5, 2)$ est une solution.

Supposons maintenant $n \geqslant 6$ et montrons que c'est impossible. Alors $2^n = 64 \times 2^{n-6}$ est un multiple de $64$, donc aussi de $4$.

**Étape 1. Modulo $4$ : $m$ est pair.**

On a $2^n \equiv 0 \pmod 4$ et $23 \equiv 3 \pmod 4$, donc $3^m + 3 \equiv 0 \pmod 4$, soit $3^m \equiv 1 \pmod 4$. Or $3 \equiv -1 \pmod 4$, donc $3^m \equiv (-1)^m \pmod 4$, qui vaut $1$ si $m$ est pair et $-1 \equiv 3$ si $m$ est impair. Donc $m$ est pair.

De plus $m \neq 0$, car $2^n = 24$ est impossible. On écrit donc $m = 2k$ avec $k \geqslant 1$, et $3^m = 9^k$.

**Étape 2. Modulo $64$ : le reste de $k$ modulo $8$.**

Montrons que, pour tout $k \geqslant 0$,

$$9^k \equiv 1 + 8k \pmod{64}.$$

C'est vrai pour $k = 0$. Si c'est vrai pour un certain $k$, alors

$$9^{k+1} = 9 \times 9^k \equiv 9\,(1 + 8k) = 9 + 72k = 1 + 8(k + 1) + 64k \equiv 1 + 8(k+1) \pmod{64},$$

donc c'est vrai pour $k + 1$. De proche en proche, c'est vrai pour tout $k$.

Comme $2^n$ est un multiple de $64$, l'équation donne $9^k + 23 \equiv 0 \pmod{64}$, donc $1 + 8k + 23 = 8(k + 3)$ est un multiple de $64$. Ainsi $k + 3$ est un multiple de $8$ : $k = 8j + 5$ pour un entier $j \geqslant 0$, et

$$m = 2k = 16j + 10.$$

**Étape 3. Modulo $17$ : la contradiction.**

Calculons quelques puissances de $3$ modulo $17$ :

$$3^2 = 9, \qquad 3^4 = 81 = 4 \times 17 + 13 \equiv 13 \equiv -4, \qquad 3^8 \equiv (-4)^2 = 16 \equiv -1, \qquad 3^{16} \equiv (-1)^2 = 1.$$

Donc $3^m = (3^{16})^j \times 3^8 \times 3^2 \equiv 1 \times (-1) \times 9 = -9 \equiv 8 \pmod{17}$. L'équation donne alors

$$2^n = 3^m + 23 \equiv 8 + 23 = 31 \equiv 14 \pmod{17}.$$

Or les restes des puissances de $2$ modulo $17$ sont

$$2^0 \equiv 1, \quad 2^1 \equiv 2, \quad 2^2 \equiv 4, \quad 2^3 \equiv 8, \quad 2^4 \equiv 16, \quad 2^5 \equiv 15, \quad 2^6 \equiv 13, \quad 2^7 \equiv 9, \quad 2^8 \equiv 1,$$

(chaque reste s'obtient en doublant le précédent et en retirant $17$ si besoin). Comme $2^8 \equiv 1$, la liste se répète ensuite, de huit en huit : les restes possibles de $2^n$ sont seulement $1, 2, 4, 8, 16, 15, 13, 9$. Le reste $14$ n'y figure pas. C'est une contradiction, donc $n \geqslant 6$ est impossible.

**Conclusion.** La seule solution est $n = 5$, $m = 2$ : $\;2^5 = 32 = 9 + 23 = 3^2 + 23$.

## Going further

D'où vient le choix de $17$ ? À l'étape 2, on a appris que $m$ a un reste précis dans la division par $16$. On cherche donc un nombre premier $p$ pour lequel $3^{16} \equiv 1 \pmod p$, afin que ce renseignement suffise pour connaître $3^m$ modulo $p$. Le nombre $17$ convient, et les puissances de $2$ modulo $17$ ne prennent que huit valeurs, ce qui laisse une chance d'obtenir une contradiction.

Une vérification à l'ordinateur confirme qu'il n'y a pas d'autre solution avec $n < 3000$. Mais seule la preuve ci-dessus traite tous les $n$.
