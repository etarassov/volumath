---
id: "12857"
title: "Un nombre premier p et trois entiers n"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [nombres-premiers, divisibilite, combinaison-lineaire, encadrement, carre-parfait]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 mars 2024"
  reference: "2025-01_Enonce-Test-4.pdf, test junior, exercice 4 ; corrigé 2025-01_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-4.pdf"
---

## Statement

Trouver tous les nombres premiers $p$ qui vérifient les deux conditions suivantes :

- le nombre $(p + 1)/2$ est lui aussi un nombre premier ;
- il existe au moins trois entiers $n \geq 1$ tels que $p + n^2$ divise $p^2 + n$.

## Hints

1. Essayez les petites valeurs de $p$. Pour $p = 5$, quels entiers $n$ conviennent ?
2. Si $p + n^2$ divise $p^2 + n$, alors $p + n^2 \leq p^2 + n$. Qu'en déduisez-vous pour $n$ ?
3. Le nombre $p + n^2$ divise $p^2 + n$, donc aussi $(p^2 + n)(p^2 - n)$. Ajoutez $p + n^2$ pour faire disparaître $n$.
4. Notez $q = (p + 1)/2$ et factorisez $p^4 + p$. Distinguez ensuite trois cas : $p$ divise $p + n^2$, ou $q$ divise $p + n^2$, ou aucun des deux.

## Solution

La réponse est $p = 5$.

On utilisera une propriété des nombres premiers, qui découle de la décomposition en facteurs premiers : **si un nombre premier divise un produit de deux entiers, il divise l'un des deux.**

### p = 5 convient

Le nombre $(5 + 1)/2 = 3$ est premier. Et les entiers $n = 2$, $n = 3$ et $n = 5$ conviennent :

$$5^2 + 2 = 27 = 3 \times 9, \qquad 5^2 + 3 = 28 = 2 \times 14, \qquad 5^2 + 5 = 30 = 1 \times 30,$$

et $9 = 5 + 2^2$, $14 = 5 + 3^2$, $30 = 5 + 5^2$.

### Mise en place

Soit maintenant $p$ un nombre premier tel que $q = (p + 1)/2$ soit premier. Alors $p = 2q - 1$, donc $p$ est impair, $p \geq 3$, et $q < p$. Soit $n \geq 1$ un entier tel que $p + n^2$ divise $p^2 + n$. On note $d = p + n^2$. On va montrer que, si $p \neq 5$, il y a au plus deux valeurs possibles de $n$.

**Première remarque : $n \leq p$.** Comme $p^2 + n > 0$ est un multiple de $d$, on a $d \leq p^2 + n$, c'est-à-dire $n^2 - n \leq p^2 - p$, soit $n(n - 1) \leq p(p - 1)$. Si on avait $n > p$, on aurait $n(n-1) > p(p-1)$. Donc $n \leq p$.

**Deuxième remarque : $d$ divise $2pq(p^2 - p + 1)$.** Le nombre $d$ divise $p^2 + n$, donc aussi $(p^2 + n)(p^2 - n) = p^4 - n^2$. Il divise aussi $d = p + n^2$, donc il divise la somme

$$(p^4 - n^2) + (p + n^2) = p^4 + p.$$

Or $p^4 + p = p(p^3 + 1) = p(p + 1)(p^2 - p + 1)$, et $p + 1 = 2q$. Donc $d$ divise $2pq(p^2 - p + 1)$.

On distingue trois cas, selon que $d$ est divisible par $p$, par $q$, ou par aucun des deux.

### Cas 1 : p divise d

Alors $p$ divise $d - p = n^2 = n \times n$, donc $p$ divise $n$. Comme $1 \leq n \leq p$, on a **$n = p$**.

### Cas 2 : q divise d

Alors $q$ divise $p^2 + n$, qui est un multiple de $d$. Or

$$p^2 + n = (2q - 1)^2 + n = 4q^2 - 4q + (n + 1),$$

donc $q$ divise $n + 1$. Comme $2 \leq n + 1 \leq p + 1 = 2q$, on a $n + 1 = q$ ou $n + 1 = 2q$, c'est-à-dire $n = q - 1$ ou $n = p$.

Supposons $n = q - 1$. Alors

$$d = (2q - 1) + (q - 1)^2 = q^2 \qquad \text{et} \qquad p^2 + n = (2q - 1)^2 + q - 1 = 4q^2 - 3q.$$

Le nombre $q^2$ divise $4q^2 - 3q$, donc il divise $4q^2 - (4q^2 - 3q) = 3q$. On peut donc écrire $3q = q^2 \times t$ avec $t$ entier, et en simplifiant par $q$, $3 = q \times t$. Ainsi $q$ divise $3$, donc $q = 3$, c'est-à-dire $p = 5$.

Donc, **si $p \neq 5$, ce cas donne seulement $n = p$.**

### Cas 3 : d n'est divisible ni par p ni par q

Écrivons $2pq(p^2 - p + 1) = d \times m$, où $m$ est un entier.

- Le nombre premier $p$ divise le produit $d \times m$, mais pas $d$. Il divise donc $m$. Écrivons $m = p\,m'$. En simplifiant par $p$, on obtient $2q(p^2 - p + 1) = d \times m'$.
- De même, $q$ divise $d \times m'$ mais pas $d$, donc $q$ divise $m'$. Écrivons $m' = q\,m''$. On obtient $2(p^2 - p + 1) = d \times m''$.

Ainsi $d$ divise $2(p^2 - p + 1)$. Il divise aussi $2(p^2 + n)$, donc il divise la différence

$$2(p^2 + n) - 2(p^2 - p + 1) = 2(p + n - 1).$$

Ce nombre est strictement positif, et il est strictement plus petit que $2d$, car

$$2d - 2(p + n - 1) = 2n^2 - 2n + 2 = 2n(n - 1) + 2 > 0.$$

Le seul multiple de $d$ strictement compris entre $0$ et $2d$ est $d$ lui-même. Donc $2(p + n - 1) = d = p + n^2$, ce qui s'écrit

$$n^2 - 2n + 1 = p - 1, \qquad \text{c'est-à-dire} \qquad (n - 1)^2 = p - 1.$$

Comme $n - 1 \geq 0$, l'entier $n - 1$ est le seul nombre positif dont le carré vaut $p - 1$. **Ce cas donne donc au plus une valeur de $n$.**

### Conclusion

Si $p \neq 5$, les entiers $n$ qui conviennent sont $n = p$ et, au plus, un autre entier (celui du cas 3, quand $p - 1$ est un carré parfait). Il y en a au plus deux, donc $p$ ne convient pas.

**Le seul nombre premier qui convient est $p = 5$.**

## Going further

1. Pour $p = 3$, le nombre $(p + 1)/2 = 2$ est premier. Quels entiers $n$ conviennent ?
2. Trouvez un nombre premier $p$, avec $(p + 1)/2$ premier, pour lequel il y a exactement deux entiers $n$ qui conviennent.
