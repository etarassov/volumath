---
id: "5009"
title: "Cent nombres composés à la suite"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [nombres-premiers, factorielle, divisibilite, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes, Divisibility, and Modular Arithmetic », Joshua Zucker, The Teachers' Circle, 2006"
  reference: "numbertheory.pdf, partie 1, problème 4 (même question dans PatrickPrimes.pdf, problème 4)"
  url: "https://mathcircles.org/activity/primes-divisibility-and-modular-arithmetic/"
  original_language: "en"
  local_copy: "sources/originals/namc/numbertheory.pdf"
---

## Statement

En regardant la liste des nombres premiers, on voit que les trous s'agrandissent : entre $2$ et
$100$ le plus long trou fait $7$ nombres non premiers d'affilée ($90$ à $96$), et plus loin les
trous sont encore plus longs.

La question est : **ces trous finissent-ils par se stabiliser, ou peut-on en trouver d'aussi
longs qu'on veut ?**

On note $n!$ (« factorielle $n$ ») le produit de tous les entiers de $1$ à $n$. Par exemple
$5! = 1 \times 2 \times 3 \times 4 \times 5 = 120$.

1. Montrer que $10! + 2$ n'est pas premier, puis que $10! + 3$ n'est pas premier.
2. Combien de nombres non premiers consécutifs cela donne-t-il d'un seul coup ?
3. Donner un nombre dont on est sûr qu'il commence une suite d'au moins $99$ nombres non
   premiers consécutifs.
4. En déduire qu'il existe des trous aussi longs qu'on veut dans la liste des nombres premiers.

*Un entier supérieur ou égal à $2$ qui n'est pas premier est dit **composé** : il admet un
diviseur autre que $1$ et lui-même.*

## Hints

1. Pour montrer qu'un nombre est composé, il suffit d'exhiber **un** diviseur, sans jamais
   calculer le nombre lui-même.
2. Le nombre $10!$ contient le facteur $2$. Que peux-tu dire de $10! + 2$ ?
3. Le nombre $10!$ contient aussi le facteur $3$, et le facteur $4$, et le facteur $5$...
   Jusqu'où peux-tu aller ?
4. Attention à un détail : pour conclure qu'un nombre est composé, il ne suffit pas d'avoir un
   diviseur $d$, il faut aussi que $d$ soit différent de $1$ et du nombre lui-même.
5. Pour la question 3, remplace le $10$ par un nombre bien choisi.

## Solution

### 1. Les deux premiers

Le nombre $10! = 1 \times 2 \times 3 \times \cdots \times 10$ contient le facteur $2$, donc
$10!$ est un multiple de $2$. Comme $2$ est aussi un multiple de $2$, la somme

$$10! + 2$$

est un multiple de $2$. De plus $10! + 2 > 2$, donc $2$ est un diviseur de $10! + 2$ différent
de $1$ et de $10! + 2$ lui-même. Donc $10! + 2$ **est composé**.

Exactement de la même façon, $10!$ contient le facteur $3$, donc $10!$ et $3$ sont tous les
deux des multiples de $3$, et $10! + 3$ est un multiple de $3$ strictement plus grand que $3$ :
il est composé.

### 2. Neuf d'un coup

Le raisonnement marche pour n'importe quel entier $k$ compris entre $2$ et $10$ : ce $k$ est
l'un des facteurs de $10!$, donc $k$ divise $10!$, donc $k$ divise $10! + k$. Et
$10! + k > k$, donc $10! + k$ est composé.

Les neuf nombres consécutifs

$$10! + 2, \quad 10! + 3, \quad 10! + 4, \quad \ldots, \quad 10! + 10$$

sont donc tous composés : voilà **$9$ nombres non premiers d'affilée**, obtenus sans le moindre
calcul. (Si l'on veut savoir de quels nombres il s'agit, $10! = 3\,628\,800$, donc on parle des
nombres de $3\,628\,802$ à $3\,628\,810$.)

### 3. Quatre-vingt-dix-neuf d'un coup

Il suffit de remplacer $10$ par $100$. Pour chaque $k$ compris entre $2$ et $100$, le nombre
$k$ est un facteur de $100!$, donc $100! + k$ est un multiple de $k$ strictement plus grand que
$k$, donc composé.

Les $99$ nombres

$$100! + 2, \quad 100! + 3, \quad \ldots, \quad 100! + 100$$

sont tous composés. Le nombre cherché est donc

$$\boxed{100! + 2} .$$

### 4. Des trous aussi longs qu'on veut

Soit $N$ un entier aussi grand qu'on veut. Prenons le nombre $(N+1)!$. Pour chaque $k$ compris
entre $2$ et $N+1$, le nombre $(N+1)! + k$ est un multiple de $k$ strictement plus grand que
$k$, donc composé. Cela donne $N$ nombres composés consécutifs :

$$(N+1)! + 2, \quad (N+1)! + 3, \quad \ldots, \quad (N+1)! + (N+1) .$$

Il existe donc, quelque part dans la liste des nombres premiers, un trou d'au moins $N$ nombres.

**Conclusion.** Les trous entre nombres premiers consécutifs ne sont bornés par rien : aucun
record de longueur ne tient définitivement, puisque pour tout $N$ on sait fabriquer un trou
plus long que $N$.

## Going further

Attention à ne pas conclure trop vite : on a montré qu'il existe des trous immenses, pas que
les nombres premiers finissent par s'arrêter. Il y en a une infinité, c'est le théorème
d'Euclide. Les deux faits cohabitent : les nombres premiers deviennent de plus en plus rares,
mais il y en a toujours d'autres plus loin.

Le trou construit ici est très mal placé : entre $100!+2$ et $100!+100$ il n'y a effectivement
aucun nombre premier, mais le vrai trou autour de ces nombres est probablement bien plus long,
et on ne sait pas le décrire. À l'inverse, les premiers trous de longueur $99$ apparaissent
bien avant $100!$, qui est un nombre à $158$ chiffres.
