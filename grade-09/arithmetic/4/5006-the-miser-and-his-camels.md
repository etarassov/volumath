---
id: "5006"
title: "Les chameaux du vieil avare"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [restes, division-euclidienne, multiples, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Primes! », David Patrick, San Diego Math Teachers' Circle, 2014"
  reference: "PatrickPrimes.pdf, problème 7 (la même énigme est le problème 16 de numbertheory.pdf, Joshua Zucker)"
  url: "https://mathcircles.org/activity/primes/"
  original_language: "en"
  local_copy: "sources/originals/namc/PatrickPrimes.pdf"
---

## Statement

Un vieil avare du désert réfléchit à voix haute devant son troupeau de chameaux :

> « Je pourrais les partager également entre mes deux fils, mais il en resterait un.
> Je pourrais les partager également entre mes cinq enfants, mais il en resterait deux.
> Je pourrais les partager également entre mes dix-sept enfants et petits-enfants... mais non,
> il en resterait trois. Autant les garder tous. »

1. Sachant que le vieil homme possède moins de $170$ chameaux, combien en a-t-il exactement ?
2. Si on ne suppose rien sur le nombre de chameaux, quels sont tous les nombres possibles ?
3. Montrer que si on remplace les restes $1$, $2$ et $3$ par n'importe quels autres restes
   acceptables, il y a toujours **exactement une** réponse inférieure à $170$.

*(Un reste est acceptable s'il est strictement plus petit que le diviseur : au plus $1$ pour
le partage entre $2$, au plus $4$ pour le partage entre $5$, au plus $16$ pour le partage
entre $17$.)*

## Hints

1. Appelle $n$ le nombre de chameaux et traduis les trois phrases en trois divisions
   euclidiennes.
2. « Reste $1$ dans la division par $2$ » veut simplement dire que $n$ est impair.
3. « Reste $2$ dans la division par $5$ » impose le chiffre des unités de $n$. Lequel, ou
   lesquels ? Croise avec la condition précédente.
4. Écris maintenant la liste des nombres inférieurs à $170$ qui laissent le reste $3$ dans la
   division par $17$ : il n'y en a que dix. Lequel a le bon chiffre des unités ?
5. Pour la question 3, suppose que deux nombres $m$ et $n$ conviennent tous les deux, avec
   $0 \leqslant m < n < 170$. Que peux-tu dire de la différence $n - m$ ?
6. Si $n - m$ est divisible par $2$, par $5$ et par $17$, qui sont trois nombres premiers
   distincts, par quoi est-il divisible ?

## Solution

Notons $n$ le nombre de chameaux. Les trois phrases se traduisent ainsi :

- $n$ laisse le reste $1$ dans la division par $2$ ;
- $n$ laisse le reste $2$ dans la division par $5$ ;
- $n$ laisse le reste $3$ dans la division par $17$.

### 1. Le nombre de chameaux

**Le chiffre des unités.** Un nombre qui laisse le reste $2$ dans la division par $5$ se
termine par $2$ ou par $7$. Comme $n$ est impair (reste $1$ par $2$), son chiffre des unités
est forcément $7$.

**La liste des candidats.** Les nombres inférieurs à $170$ qui laissent le reste $3$ dans la
division par $17$ sont

$$3,\ 20,\ 37,\ 54,\ 71,\ 88,\ 105,\ 122,\ 139,\ 156 .$$

Un seul se termine par $7$ : c'est $37$.

**Vérification.** $37 = 2 \times 18 + 1$, $37 = 5 \times 7 + 2$, $37 = 17 \times 2 + 3$. Les
trois conditions sont satisfaites.

**Le vieil avare a $\boxed{37}$ chameaux.**

### 2. Tous les nombres possibles

Si on enlève la condition « moins de $170$ », il y en a une infinité. En effet,
$2 \times 5 \times 17 = 170$, et ajouter $170$ à $n$ ne change aucun des trois restes,
puisque $170$ est un multiple de $2$, de $5$ et de $17$.

Les solutions sont donc

$$37,\quad 207,\quad 377,\quad 547,\quad 717,\ \ldots$$

c'est-à-dire tous les nombres de la forme $37 + 170k$ avec $k$ entier positif ou nul. La
question 3 va montrer qu'il n'y en a pas d'autres.

### 3. Toujours une réponse, et une seule

**Au plus une réponse.** Supposons que deux nombres $m$ et $n$ conviennent, avec
$0 \leqslant m < n < 170$, pour le même jeu de restes. Alors $m$ et $n$ laissent le même reste
dans la division par $2$, donc leur différence $n - m$ est un multiple de $2$. De même
$n - m$ est un multiple de $5$, et un multiple de $17$.

Les nombres $2$, $5$ et $17$ sont trois nombres premiers **distincts**. Un nombre divisible
par ces trois nombres premiers est divisible par leur produit :

$$n - m \text{ est un multiple de } 2 \times 5 \times 17 = 170 .$$

Or $0 < n - m < 170$ : aucun multiple de $170$ ne se trouve là. C'est une contradiction, donc
il ne peut pas y avoir deux réponses différentes en dessous de $170$.

**Au moins une réponse.** Regardons les $170$ nombres $0, 1, 2, \ldots, 169$. À chacun on
associe son triplet de restes (reste par $2$, reste par $5$, reste par $17$). Le nombre de
triplets possibles est

$$2 \times 5 \times 17 = 170 ,$$

exactement autant que de nombres. Et d'après ce qui précède, deux nombres différents de cette
liste donnent toujours deux triplets différents. Les $170$ nombres donnent donc $170$ triplets
tous différents : ils les donnent donc **tous**.

**Conclusion.** Quel que soit le jeu de restes choisi, il existe exactement un nombre entre
$0$ et $169$ qui convient, et toutes les autres solutions s'obtiennent en lui ajoutant des
multiples de $170$.

## Going further

Ce résultat porte un nom : c'est le **théorème des restes chinois**, connu en Chine depuis le
IIIe siècle. Il dit que si les diviseurs sont premiers entre eux deux à deux, on peut imposer
librement les restes, et la solution est unique en dessous du produit des diviseurs.

La condition « premiers entre eux » est indispensable. Essaie par exemple de trouver un nombre
qui laisse le reste $1$ dans la division par $4$ et le reste $0$ dans la division par $6$ : il
n'en existe aucun, car le premier reste impose un nombre impair et le second un nombre pair.
