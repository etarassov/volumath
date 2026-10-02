---
id: "7059"
title: "Le PGCD de deux puissances diminuées de 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [pgcd, algorithme-d-euclide, puissances, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Expressions algébriques », factorisation d'expressions polynomiales, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Soient $a \geq 2$, $m \geq 1$ et $n \geq 1$ des entiers. Montrer que
$$\mathrm{PGCD}\left(a^m - 1,\ a^n - 1\right) = a^{\mathrm{PGCD}(m,\,n)} - 1 .$$

*Par exemple, avec $a = 2$, $m = 12$ et $n = 18$ : $\mathrm{PGCD}(12, 18) = 6$, et la formule
annonce que $\mathrm{PGCD}(4095, 262143) = 63$.*

## Hints

1. Vérifie la formule sur un petit exemple, par exemple $a = 2$, $m = 6$, $n = 4$.
2. Le PGCD de deux entiers se calcule par l'algorithme d'Euclide, qui remplace le couple
   $(m ; n)$ par $(m - n ; n)$ lorsque $m > n$. Cherche à faire la même chose sur les
   exposants.
3. Pour $m > n$, essaie d'écrire $a^m - 1$ comme un multiple de $a^n - 1$ plus un reste
   simple.
4. Tu devrais trouver $a^m - 1 = a^{m-n}\left(a^n - 1\right) + \left(a^{m-n} - 1\right)$.
5. Conclus par récurrence, en suivant l'algorithme d'Euclide sur les exposants et sur les
   nombres en même temps.

## Solution

**Un premier fait utile.**

Rappelons l'identité
$$a^k - 1 = (a - 1)\left(a^{k-1} + a^{k-2} + \cdots + a + 1\right) .$$

Elle sert à voir que si $e$ divise $k$, disons $k = eu$, alors en posant $A = a^e$ :
$$a^k - 1 = A^u - 1 = (A - 1)\left(A^{u-1} + \cdots + 1\right) ,$$
donc **$a^e - 1$ divise $a^k - 1$**. Nous nous en servirons à la fin pour la vérification.

**L'idée : faire l'algorithme d'Euclide sur les exposants.**

*Lemme.* Pour tous entiers $m > n \geq 1$,
$$\mathrm{PGCD}\left(a^m - 1,\ a^n - 1\right)
= \mathrm{PGCD}\left(a^{m-n} - 1,\ a^n - 1\right) .$$

*Démonstration du lemme.* Écrivons
$$a^m - 1 = a^{m-n} \times a^n - 1 = a^{m-n}\left(a^n - 1\right) + a^{m-n} - 1 .$$

(La vérification est immédiate : $a^{m-n}(a^n - 1) + a^{m-n} - 1 = a^m - a^{m-n} + a^{m-n} - 1
= a^m - 1$.)

Cette égalité dit que $a^m - 1$ et $a^{m-n} - 1$ diffèrent d'un multiple de $a^n - 1$. Donc :

- tout diviseur commun de $a^n - 1$ et $a^{m-n} - 1$ divise $a^m - 1$ ;
- tout diviseur commun de $a^n - 1$ et $a^m - 1$ divise $a^{m-n} - 1$.

Les deux couples ont donc exactement les mêmes diviseurs communs, donc le même PGCD.
$\square$

**Conclusion par récurrence.**

Démontrons le résultat par récurrence forte sur $m + n$.

*Cas de base : $m = n$.* Alors
$\mathrm{PGCD}(a^m - 1, a^n - 1) = a^m - 1 = a^{\mathrm{PGCD}(m,n)} - 1$, puisque
$\mathrm{PGCD}(m,m) = m$.

*Cas $m > n$* (le cas $m < n$ est symétrique). Le lemme donne
$$\mathrm{PGCD}\left(a^m - 1, a^n - 1\right)
= \mathrm{PGCD}\left(a^{m-n} - 1, a^n - 1\right) .$$

Le couple d'exposants $(m-n ; n)$ a une somme strictement plus petite que $(m ; n)$, et ses
deux termes restent $\geq 1$. L'hypothèse de récurrence s'applique donc :
$$\mathrm{PGCD}\left(a^{m-n} - 1, a^n - 1\right) = a^{\mathrm{PGCD}(m-n,\,n)} - 1 .$$

Or l'algorithme d'Euclide, appliqué aux exposants, donne
$\mathrm{PGCD}(m-n, n) = \mathrm{PGCD}(m, n)$. D'où
$$\mathrm{PGCD}\left(a^m - 1, a^n - 1\right) = a^{\mathrm{PGCD}(m,\,n)} - 1 . \qquad \blacksquare$$

**Vérification sur l'exemple.**

$a = 2$, $m = 12$, $n = 18$. On a $2^{12} - 1 = 4095$ et $2^{18} - 1 = 262143$. Comme
$\mathrm{PGCD}(12,18) = 6$, la formule annonce $2^6 - 1 = 63$. Et en effet
$4095 = 63 \times 65$ et $262143 = 63 \times 4161$, tandis que
$\mathrm{PGCD}(65, 4161) = 1$.

## Going further

Le résultat a une conséquence célèbre. Les nombres $2^p - 1$ s'appellent les **nombres de
Mersenne**. La formule montre que
$$\mathrm{PGCD}\left(2^m - 1, 2^n - 1\right) = 2^{\mathrm{PGCD}(m,n)} - 1 ,$$
donc $2^m - 1$ et $2^n - 1$ sont premiers entre eux exactement quand $m$ et $n$ le sont.

En particulier, si $2^k - 1$ est premier, alors $k$ est premier. En effet, si $k = uv$ avec
$1 < u < k$, alors $2^u - 1$ divise $2^k - 1$ et vérifie $1 < 2^u - 1 < 2^k - 1$, ce qui
interdit à $2^k - 1$ d'être premier.

La réciproque est fausse : $11$ est premier, mais $2^{11} - 1 = 2047 = 23 \times 89$.
