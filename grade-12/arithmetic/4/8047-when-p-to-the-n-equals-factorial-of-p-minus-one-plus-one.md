---
id: "8047"
title: "Quand pⁿ vaut (p − 1)! + 1"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [nombres-premiers, factorielle, divisibilite, congruences, majoration]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, La muraille"
  reference: "stage_ete_2017.pdf, chapitre X « La muraille », exercice 84 (solution d'élèves par Andrei Barbu et Vladimir Ivanov)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Trouver tous les couples $(p\,;n)$, où $p$ est un nombre premier et $n$ un entier strictement
positif, tels que

$$p^n = (p-1)! + 1 .$$

On rappelle que $(p-1)!$ désigne le produit $1 \times 2 \times \cdots \times (p-1)$.

## Hints

1. Teste les premiers cas à la main : $p = 2$, $p = 3$, $p = 5$, puis $p = 7$. Trois d'entre
   eux marchent. Il reste à montrer qu'il n'y en a pas d'autres.
2. Supposons $p \geq 7$. L'égalité s'écrit $p^n - 1 = (p-1)!$. Combien de fois le facteur
   $p - 1$ apparaît-il dans le produit $1 \times 2 \times \cdots \times (p-1)$ ? Repère trois
   facteurs distincts dont le produit vaut $(p-1)^2$.
3. De l'autre côté, factorise $p^n - 1$ par $p - 1$. Que vaut le deuxième facteur modulo
   $p - 1$, sachant que $p \equiv 1 \pmod{p-1}$ ?
4. Les deux questions précédentes donnent ensemble $(p-1) \mid n$, donc $n \geq p-1$. Le
   nombre $p^n$ est alors énorme. Majore $(p-1)!$ par une puissance de $p - 1$ et compare.

## Solution

Les seules solutions sont

$$\boxed{(p\,;n) = (2\,;1), \quad (3\,;1), \quad (5\,;2) .}$$

### Les petits cas

- $p = 2$ : $(p-1)! + 1 = 1! + 1 = 2 = 2^1$, donc $n = 1$ convient.
- $p = 3$ : $2! + 1 = 3 = 3^1$, donc $n = 1$ convient.
- $p = 5$ : $4! + 1 = 25 = 5^2$, donc $n = 2$ convient.
- $p = 7$ : $6! + 1 = 721 = 7 \times 103$, et $103$ n'est pas une puissance de $7$. Aucun $n$
  ne convient.

Remarquons au passage que, pour un $p$ donné, le nombre $(p-1)! + 1$ est fixé : il y a donc au
plus une valeur de $n$ possible.

Il reste à montrer qu'aucun nombre premier $p \geq 7$ ne convient. Supposons par l'absurde
qu'un tel $p$ convienne, avec un entier $n \geq 1$ tel que $p^n = (p-1)! + 1$, autrement dit

$$p^n - 1 = (p-1)! .$$

### Étape 1 : $(p-1)^2$ divise $(p-1)!$

Comme $p \geq 7$ est premier, $p$ est impair et $p - 1$ est pair. Posons

$$k = \frac{p-1}{2} .$$

Comme $p \geq 7$, on a $k \geq 3$, et comme $p - 1 \geq 6$, on a aussi $k < p-1$. Les trois
entiers

$$2 , \qquad k , \qquad p-1$$

sont donc deux à deux distincts et compris entre $1$ et $p-1$. Ce sont trois facteurs
différents du produit $1 \times 2 \times \cdots \times (p-1)$, donc leur produit divise
$(p-1)!$. Or

$$2 \times k \times (p-1) = (p-1) \times (p-1) = (p-1)^2 .$$

Donc $(p-1)^2$ divise $(p-1)!$, c'est-à-dire $p^n - 1$.

### Étape 2 : $p - 1$ divise $n$

Factorisons :

$$p^n - 1 = (p-1)\big(p^{n-1} + p^{n-2} + \cdots + p + 1\big) .$$

Notons $Q = p^{n-1} + p^{n-2} + \cdots + p + 1$ le deuxième facteur : c'est une somme de $n$
termes. Comme $p \equiv 1 \pmod{p-1}$, chacun de ces $n$ termes est congru à $1$ modulo
$p - 1$, donc

$$Q \equiv n \pmod{p-1} .$$

D'après l'étape 1, $(p-1)^2$ divise $p^n - 1 = (p-1)\,Q$. En simplifiant par $p-1$, on obtient
que $p - 1$ divise $Q$, donc que $p-1$ divise $n$. Comme $n \geq 1$, cela donne

$$n \geq p - 1 .$$

### Étape 3 : c'est beaucoup trop grand

D'un côté,

$$p^n \geq p^{p-1} > (p-1)^{p-1} .$$

De l'autre, le produit $(p-1)! = 1 \times 2 \times \cdots \times (p-1)$ compte $p-1$ facteurs,
tous inférieurs ou égaux à $p-1$, et le premier d'entre eux vaut $1$. Donc

$$(p-1)! \ \leq \ 1 \times (p-1)^{p-2} = (p-1)^{p-2} ,$$

puis, comme $(p-1)^{p-2} \geq 1$,

$$(p-1)! + 1 \ \leq \ (p-1)^{p-2} + (p-1)^{p-2} = 2\,(p-1)^{p-2} \ < \ (p-1)^{p-1} ,$$

la dernière inégalité étant vraie parce que $p - 1 > 2$.

En rassemblant les deux encadrements :

$$(p-1)! + 1 \ < \ (p-1)^{p-1} \ < \ p^n .$$

Cela contredit l'égalité $p^n = (p-1)! + 1$. Aucun nombre premier $p \geq 7$ ne convient, et
la liste des trois solutions est complète.

## Going further

L'étape 2 est un cas particulier d'un fait utile : si $p \equiv 1 \pmod{m}$, alors

$$\frac{p^n - 1}{p - 1} \equiv n \pmod{p-1} .$$

Le théorème de Wilson affirme par ailleurs que $(p-1)! + 1$ est toujours divisible par $p$
lorsque $p$ est premier. L'exercice demande bien davantage : que ce nombre soit une puissance
de $p$ **tout entière**, et on vient de voir que cela n'arrive que trois fois.
