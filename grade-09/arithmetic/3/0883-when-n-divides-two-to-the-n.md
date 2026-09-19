---
id: "0883"
title: "Quand n divise deux puissance n"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, puissances, facteurs premiers, decomposition]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 4, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Soit $n$ un entier naturel non nul tel que $n$ divise $2^n$. Montrer que $\dfrac{2^n}{n}$ est une puissance de $2$.

## Hints

1. Essaie $n = 1, 2, 3, 4, 5, 6, 7, 8$. Pour lesquels $n$ divise-t-il $2^n$ ? Que remarques-tu sur ces valeurs de $n$ ?
2. Décompose $n$ en produit de facteurs premiers. Si un nombre premier $p$ divise $n$, alors il divise aussi $2^n$. Quels nombres premiers apparaissent dans la décomposition de $2^n$ ?
3. Tu peux donc écrire $n = 2^a$. Que devient alors le quotient $\dfrac{2^n}{n}$ ?
4. Il reste une petite vérification : l'exposant obtenu est-il bien un entier naturel, c'est-à-dire a-t-on $2^a \geqslant a$ ?

## Solution

**L'idée : un diviseur de $2^n$ ne peut être fait que de $2$, donc $n$ est lui-même une puissance de $2$.**

**Étape 1. $n$ est une puissance de $2$.**

Soit $p$ un nombre premier qui apparaît dans la décomposition de $n$ en produit de facteurs premiers. Alors $p$ divise $n$, et $n$ divise $2^n$, donc $p$ divise $2^n$.

Or la décomposition en facteurs premiers de
$$2^n = \underbrace{2 \times 2 \times \cdots \times 2}_{n \text{ facteurs}}$$
ne contient que le nombre premier $2$. Comme cette décomposition est unique, le seul nombre premier qui divise $2^n$ est $2$. Donc $p = 2$.

Autrement dit, le seul nombre premier pouvant apparaître dans la décomposition de $n$ est $2$ : il existe un entier naturel $a$ tel que

$$n = 2^a.$$

(Le cas $n = 1$ correspond à $a = 0$ : la décomposition de $1$ ne contient aucun facteur premier.)

**Étape 2. On calcule le quotient.**

$$\frac{2^n}{n} = \frac{2^n}{2^a} = 2^{\,n-a}.$$

**Étape 3. L'exposant est bien positif.** Il faut s'assurer que $n - a \geqslant 0$, c'est-à-dire que $2^a \geqslant a$. C'est clair : quand on augmente $a$ de $1$, le nombre $2^a$ double alors que $a$ n'augmente que de $1$ ; et au départ, pour $a = 0$, on a bien $2^0 = 1 \geqslant 0$. Donc $2^a \geqslant a$ pour tout entier naturel $a$, et même $2^a \geqslant a+1$.

**Conclusion : $\dfrac{2^n}{n} = 2^{\,n-a}$ est bien une puissance de $2$.**

*Quelques exemples.* Les entiers $n$ qui divisent $2^n$ sont exactement $1$, $2$, $4$, $8$, $16$, … On obtient
$$\frac{2^1}{1} = 2, \qquad \frac{2^2}{2} = 2, \qquad \frac{2^4}{4} = 4, \qquad \frac{2^8}{8} = 32, \qquad \frac{2^{16}}{16} = 4096 = 2^{12}.$$

## Going further

L'étape 1 montre au passage quelque chose de plus fort que l'énoncé : **les seuls entiers $n$ qui divisent $2^n$ sont les puissances de $2$.** Et réciproquement, toute puissance de $2$ convient, puisque $2^a$ divise $2^n$ dès que $a \leqslant n$.
