---
id: "7663"
title: "Quand 3²ⁿ − 2ⁿ est-il premier ?"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, factorisation, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, cours d'arithmétique du groupe A"
  reference: "stage_ete_2013.pdf, chapitre II, groupe A, cours d'arithmétique, exercice sur la primalité de 3^{2n} − 2^n"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les entiers $n \geqslant 1$ pour lesquels le nombre

$$3^{2n} - 2^{n}$$

est un nombre premier.

## Hints

1. Commencez par calculer les premières valeurs, pour $n = 1$, $2$, $3$. Que remarquez-vous ?
2. Réécrivez $3^{2n}$ sous la forme d'une puissance $n$-ième. De quel nombre ?
3. Rappelez-vous que $a - b$ divise toujours $a^n - b^n$.
4. Un nombre premier n'a que deux diviseurs. Que cela impose-t-il ici ?

## Solution

**Un premier calcul.**

- $n = 1$ : $3^2 - 2^1 = 9 - 2 = 7$, qui est premier.
- $n = 2$ : $3^4 - 2^2 = 81 - 4 = 77 = 7 \times 11$, qui n'est pas premier.
- $n = 3$ : $3^6 - 2^3 = 729 - 8 = 721 = 7 \times 103$, qui n'est pas premier.

Le facteur $7$ revient à chaque fois. Ce n'est pas un hasard.

**Une réécriture.**

Puisque $3^{2n} = (3^2)^n = 9^n$, le nombre étudié s'écrit

$$3^{2n} - 2^n = 9^n - 2^n .$$

**La factorisation.**

Pour tous nombres $a$ et $b$ et tout entier $n \geqslant 1$, on a l'identité

$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + a^{n-3}b^2 + \cdots + b^{n-1}\right) .$$

Appliquée à $a = 9$ et $b = 2$, elle donne $a - b = 7$, donc

$$9^n - 2^n = 7 \times \left(9^{n-1} + 9^{n-2}\cdot 2 + \cdots + 2^{n-1}\right) .$$

Autrement dit, **$9^n - 2^n$ est toujours un multiple de $7$.**

**Conclure.**

Notons $N = 9^n - 2^n$ et $Q = 9^{n-1} + 9^{n-2}\cdot 2 + \cdots + 2^{n-1}$, de sorte que $N = 7Q$.

Pour que $N$ soit premier alors qu'il est divisible par $7$, il faut que $N = 7$ lui-même, c'est-à-dire $Q = 1$.

Or $Q$ est une somme de $n$ termes, tous strictement positifs, dont le premier vaut $9^{n-1}$.

- Si $n = 1$, alors $Q$ se réduit à un seul terme, $9^0 = 1$. On a bien $Q = 1$.
- Si $n \geqslant 2$, alors $Q \geqslant 9^{n-1} \geqslant 9 > 1$.

Donc $Q = 1$ n'arrive que pour $n = 1$.

**Conclusion.** Le nombre $3^{2n} - 2^n$ est premier pour la seule valeur

$$\boxed{n = 1 ,}$$

et il vaut alors $7$.

## Going further

L'idée à retenir : **une expression qui se factorise ne peut être première que si l'un des facteurs vaut $1$** (ou $-1$ au signe près). Une fois la factorisation trouvée, il ne reste qu'à examiner ce petit nombre de cas.

**Des variantes immédiates.**

- $4^n - 1$ est-il premier ? Il vaut $(4-1)(4^{n-1} + \cdots + 1) = 3 \times Q$, donc seulement pour $n = 1$, où il vaut $3$.
- $n^4 + 4$ est-il premier ? Il se factorise, de façon moins visible, par l'identité de Sophie Germain : $n^4 + 4 = (n^2 - 2n + 2)(n^2 + 2n + 2)$. Le premier facteur vaut $1$ seulement pour $n = 1$, et alors $n^4 + 4 = 5$, premier. C'est la seule valeur.

**Une question qui reste ouverte.** Quand $a - b = 1$, la factorisation ne donne rien, et la question devient très difficile. Par exemple, on ne sait toujours pas s'il existe une infinité de nombres premiers de la forme $2^n - 1$ (les nombres premiers de Mersenne), alors que la question est posée depuis le XVIIᵉ siècle.
