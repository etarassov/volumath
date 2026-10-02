---
id: "8309"
title: "Un nombre au plus égal au double de la somme de ses chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [somme-des-chiffres, ecriture-decimale, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, Coupe Animath de printemps 2020"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Coupe Animath de printemps 2020, exercice 13 (lycée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Pour un entier $n \geqslant 0$, on note $s(n)$ la somme des chiffres de $n$. Par exemple
$s(407) = 4 + 0 + 7 = 11$.

Déterminer tous les entiers $n \geqslant 0$ tels que

$$n \leqslant 2\,s(n) .$$

## Hints

1. Commence par essayer à la main : $n = 0$, $n = 5$, $n = 12$, $n = 18$, $n = 19$, $n = 20$, $n = 100$. Que remarques-tu ?
2. La somme des chiffres est toute petite comparée au nombre. Combien vaut $s(n)$ au maximum si $n$ a trois chiffres ? Et quelle est la plus petite valeur possible de $n$ dans ce cas ?
3. Sépare selon le nombre de chiffres de $n$ : un chiffre, deux chiffres, trois chiffres ou plus. Les trois cas se traitent très différemment.
4. Pour deux chiffres, écris $n = 10a + b$ avec $a$ le chiffre des dizaines et $b$ celui des unités. L'inégalité $10a + b \leqslant 2(a+b)$ se simplifie énormément.
5. Pour trois chiffres ou plus, montre que $n$ est trop grand : si $n$ a $d+1$ chiffres, alors $n \geqslant 10^d$ et $s(n) \leqslant 9(d+1)$. Compare $10^d$ et $18(d+1)$.
6. N'oublie pas $n = 0$ : $s(0) = 0$ et $0 \leqslant 0$.

## Solution

On sépare les cas selon le nombre de chiffres de $n$.

**Cas 1 : $n$ a un seul chiffre, c'est-à-dire $0 \leqslant n \leqslant 9$.**

Alors $s(n) = n$, et l'inégalité s'écrit $n \leqslant 2n$, c'est-à-dire $0 \leqslant n$, ce qui est
toujours vrai.

**Tous les entiers de $0$ à $9$ sont solutions.**

**Cas 2 : $n$ a exactement deux chiffres.**

Écrivons $n = 10a + b$, où $a$ est le chiffre des dizaines et $b$ celui des unités, avec

$$1 \leqslant a \leqslant 9 \qquad \text{et} \qquad 0 \leqslant b \leqslant 9 .$$

On a $s(n) = a + b$, donc l'inégalité $n \leqslant 2s(n)$ s'écrit

$$10a + b \leqslant 2(a + b) ,$$

soit $10a + b \leqslant 2a + 2b$, soit encore

$$8a \leqslant b .$$

Comme $b \leqslant 9$, il faut $8a \leqslant 9$, donc $a = 1$ (rappelons que $a \geqslant 1$).
L'inégalité devient alors $8 \leqslant b$, c'est-à-dire $b = 8$ ou $b = 9$.

**Les seules solutions à deux chiffres sont $18$ et $19$.**

On vérifie : $18 \leqslant 2 \times (1+8) = 18$, et $19 \leqslant 2 \times (1+9) = 20$.

**Cas 3 : $n$ a au moins trois chiffres.**

Supposons que $n$ ait $d+1$ chiffres, avec $d \geqslant 2$. Alors :

- d'une part $n \geqslant 10^d$, puisque le plus petit entier à $d+1$ chiffres est $10^d$ ;
- d'autre part chacun des $d+1$ chiffres vaut au plus $9$, donc $s(n) \leqslant 9(d+1)$, et par conséquent $2s(n) \leqslant 18(d+1)$.

Il suffit donc de montrer que

$$10^d > 18(d+1) \qquad \text{pour tout } d \geqslant 2 ,$$

car alors $n \geqslant 10^d > 18(d+1) \geqslant 2s(n)$ et l'inégalité de l'énoncé est violée.

Démontrons-le par récurrence sur $d$.

*Initialisation.* Pour $d = 2$ : $10^2 = 100$ et $18 \times 3 = 54$. On a bien $100 > 54$.

*Hérédité.* Supposons $10^d > 18(d+1)$ pour un certain $d \geqslant 2$. Alors

$$10^{d+1} = 10 \times 10^d > 180(d+1) .$$

Or $180(d+1) \geqslant 18(d+2)$, car cette inégalité équivaut à $10(d+1) \geqslant d+2$,
c'est-à-dire à $9d + 8 \geqslant 0$, ce qui est vrai. Donc $10^{d+1} > 18(d+2)$, ce qui est la
propriété au rang $d+1$.

La récurrence est établie : **aucun entier à trois chiffres ou plus n'est solution.**

**Conclusion.** L'ensemble des solutions est

$$\boxed{\{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 18, 19\}} .$$

## Going further

On peut se demander, plus généralement, pour quels entiers $n$ on a $n \leqslant c \cdot s(n)$, où
$c$ est une constante fixée. Le cas 3 ci-dessus montre que, quelle que soit la constante $c$, il
n'y a qu'un nombre **fini** de solutions : la somme des chiffres croît comme le nombre de
chiffres, alors que le nombre lui-même croît comme une puissance de $10$.

Question plus difficile pour finir : pour quels $n$ a-t-on $n = 3\,s(n)$ ?
