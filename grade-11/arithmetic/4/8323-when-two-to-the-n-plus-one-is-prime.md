---
id: "8323"
title: "Quand 2ⁿ + 1 peut-il être premier ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [nombres-premiers, factorisation, puissances-de-deux, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["8324"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Soit $n$ un entier strictement positif. Montrer que si $2^n + 1$ est premier, alors $n$ est une
puissance de $2$.

## Hints

1. Calcule $2^n + 1$ pour $n = 1, 2, 3, 4, 5, 6$. Repère ceux qui sont premiers, et regarde à quoi ressemblent les $n$ correspondants.
2. Raisonne par contraposée ou par l'absurde : suppose que $n$ **n'est pas** une puissance de $2$, et fabrique un diviseur de $2^n + 1$.
3. Si $n$ n'est pas une puissance de $2$, sa décomposition en facteurs premiers contient un facteur premier impair $p$. Écris $n = pm$.
4. Il existe une identité de factorisation pour $a^p + b^p$ quand $p$ est **impair**. Laquelle ?
5. $a^p + b^p = (a+b)(a^{p-1} - a^{p-2}b + \cdots + b^{p-1})$. Applique-la avec $a = 2^m$ et $b = 1$.
6. N'oublie pas de vérifier que le diviseur trouvé est strictement compris entre $1$ et $2^n+1$.

## Solution

**L'outil : la factorisation de $a^p + b^p$ pour $p$ impair.**

Pour tout entier $N \geqslant 1$ on connaît

$$a^N - b^N = (a-b)\left(a^{N-1} + a^{N-2}b + \cdots + ab^{N-2} + b^{N-1}\right) .$$

Si $N = p$ est **impair**, on peut y remplacer $b$ par $-b$ : comme $(-b)^p = -b^p$, on obtient

$$a^p + b^p = (a+b)\left(a^{p-1} - a^{p-2}b + \cdots - ab^{p-2} + b^{p-1}\right) .$$

En particulier, **$a + b$ divise $a^p + b^p$ quand $p$ est impair.**

**La démonstration.**

Raisonnons par l'absurde : supposons que $2^n + 1$ soit premier et que $n$ ne soit **pas** une
puissance de $2$.

Alors la décomposition de $n$ en facteurs premiers contient au moins un facteur premier impair,
appelons-le $p$. Posons

$$m = \frac{n}{p} ,$$

qui est un entier strictement positif, et $n = pm$.

Écrivons alors

$$2^n + 1 = 2^{pm} + 1 = \left(2^{m}\right)^{p} + 1^{p} .$$

Comme $p$ est impair, l'identité ci-dessus s'applique avec $a = 2^m$ et $b = 1$ :

$$2^n + 1 = \left(2^m + 1\right)\left(2^{m(p-1)} - 2^{m(p-2)} + \cdots - 2^m + 1\right) .$$

Donc $2^m + 1$ divise $2^n + 1$.

**Le diviseur est strict.** Il faut vérifier que $2^m + 1$ n'est ni $1$ ni $2^n+1$ :

- $2^m + 1 \geqslant 2^1 + 1 = 3 > 1$, puisque $m \geqslant 1$ ;
- $m = \dfrac{n}{p} < n$ puisque $p \geqslant 3$, donc $2^m + 1 < 2^n + 1$.

Ainsi $2^n + 1$ admet un diviseur strictement compris entre $1$ et lui-même : il n'est pas
premier. C'est la contradiction cherchée.

**Conclusion.** Si $2^n + 1$ est premier, alors $n$ est une puissance de $2$.

## Going further

La réciproque est **fausse**. Les nombres $F_k = 2^{2^k} + 1$ s'appellent les **nombres de
Fermat**. Les cinq premiers sont

$$F_0 = 3, \quad F_1 = 5, \quad F_2 = 17, \quad F_3 = 257, \quad F_4 = 65\,537 ,$$

et tous sont premiers. Fermat a conjecturé qu'ils l'étaient tous. Euler a montré en 1732 que

$$F_5 = 2^{32} + 1 = 4\,294\,967\,297 = 641 \times 6\,700\,417$$

n'est pas premier. Depuis, aucun autre nombre de Fermat premier n'a été trouvé, et l'on ignore
toujours s'il en existe une infinité, ou même s'il en existe un autre que les cinq ci-dessus.
