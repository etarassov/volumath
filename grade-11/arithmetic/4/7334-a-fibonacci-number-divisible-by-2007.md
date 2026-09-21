---
id: "7334"
title: "Un nombre de Fibonacci multiple de 2007"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [fibonacci, principe-des-tiroirs, congruences, periodicite, suite-recurrente]
adapted_from: null
see_also: ["2205"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe C », arithmétique, exercice 76 (résolu par Rémi Varloot)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

La suite de Fibonacci est définie par
$$F_0 = 0, \qquad F_1 = 1, \qquad F_{n+2} = F_{n+1} + F_n \quad \text{pour tout } n \geqslant 0 ,$$
c'est-à-dire $0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, \ldots$

**Montrer qu'il existe un entier $n > 0$ tel que $F_n$ soit un multiple de $2007$.**

## Hints

1. On ne demande pas de trouver $n$, seulement de prouver qu'il en existe un. Il n'y a donc rien à calculer.
2. Travaille modulo $2007$. La suite des restes $F_0, F_1, F_2, \ldots$ modulo $2007$ ne prend qu'un nombre fini de valeurs : elle doit bien finir par se répéter.
3. Attention : ce n'est pas un seul reste qu'il faut voir revenir, mais un **couple de restes consécutifs** $(F_i, F_{i+1})$, car c'est ce couple qui détermine toute la suite.
4. Combien y a-t-il de couples de restes possibles ? Compare ce nombre à l'infinité de couples $(F_0, F_1), (F_1, F_2), (F_2, F_3), \ldots$
5. Une fois que tu as $(F_i, F_{i+1}) \equiv (F_{i+m}, F_{i+m+1})$, tu peux avancer. Mais tu peux aussi **reculer** : la relation $F_{n} = F_{n+2} - F_{n+1}$ permet de remonter la suite. Remonte jusqu'à $F_0$.

## Solution

Tout se passe modulo $2007$. On note $r_n$ le reste de $F_n$ dans la division par $2007$.

### Étape 1 : un couple de restes se répète

Considérons les couples de restes consécutifs
$$(r_0, r_1), \quad (r_1, r_2), \quad (r_2, r_3), \quad \ldots$$

Chaque terme d'un couple est un entier entre $0$ et $2006$, donc il y a au plus
$$2007 \times 2007 = 2007^2$$
couples différents possibles.

Mais la liste ci-dessus est infinie. D'après le **principe des tiroirs**, deux de ces couples sont égaux : il existe des entiers $i \geqslant 0$ et $m > 0$ tels que
$$r_i = r_{i+m} \qquad \text{et} \qquad r_{i+1} = r_{i+m+1} ,$$
c'est-à-dire
$$F_i \equiv F_{i+m} \quad \text{et} \quad F_{i+1} \equiv F_{i+m+1} \pmod{2007} .$$

*(Concrètement : parmi les $2007^2 + 1$ premiers couples, deux coïncident forcément.)*

### Étape 2 : on remonte la suite

La relation de récurrence se lit aussi à l'envers :
$$F_{n+2} = F_{n+1} + F_n \qquad \Longleftrightarrow \qquad F_n = F_{n+2} - F_{n+1} .$$

Connaître deux termes consécutifs permet donc de retrouver le **précédent**. Appliquons cela aux deux suites de congruences obtenues à l'étape 1. Si $i \geqslant 1$ :
$$F_{i-1} = F_{i+1} - F_i \equiv F_{i+m+1} - F_{i+m} = F_{i+m-1} \pmod{2007} .$$

On a donc aussi $F_{i-1} \equiv F_{i+m-1}$, et le couple $(F_{i-1}, F_i)$ est congru au couple $(F_{i+m-1}, F_{i+m})$.

On peut donc recommencer. De proche en proche, en descendant $i$ d'un cran à chaque fois, on obtient
$$F_j \equiv F_{j+m} \pmod{2007} \qquad \text{pour tout } j \text{ de } i \text{ jusqu'à } 0 .$$

### Étape 3 : on conclut

En particulier, pour $j = 0$ :
$$0 = F_0 \equiv F_m \pmod{2007} .$$

Comme $m > 0$, l'entier $n = m$ convient.

$$\boxed{\text{Il existe } n > 0 \text{ tel que } 2007 \text{ divise } F_n .}$$

### Ce que la démonstration dit de plus

Le raisonnement n'utilise nulle part que le nombre est $2007$. Il vaut mot pour mot pour n'importe quel entier $N \geqslant 1$ :

> **Pour tout entier $N \geqslant 1$, la suite de Fibonacci contient une infinité de multiples de $N$.**

En effet, une fois que $F_m \equiv 0$ et que la suite des couples est périodique de période $m$, tous les $F_{km}$ sont aussi des multiples de $N$.

## Going further

1. Le raisonnement donne $m \leqslant 2007^2 = 4\,028\,049$, ce qui est énorme. En fait, le plus petit $n$ tel que $2007 \mid F_n$ vaut $n = 672$. Vérifie-le avec un petit programme, en ne gardant que les restes modulo $2007$ pour éviter des nombres à cent quarante chiffres.
2. Pour $N = 10$, trouve à la main le plus petit $n > 0$ tel que $10$ divise $F_n$. *(Il faut aller un peu plus loin qu'on ne croit.)*
3. La période de la suite des restes modulo $N$ s'appelle la **période de Pisano**. Calcule-la pour $N = 2$, $3$, $4$, $5$ et $8$. Est-elle toujours égale au plus petit $n$ tel que $N$ divise $F_n$ ?
4. Pourquoi le raisonnement échouerait-il si l'on regardait seulement un reste $r_n$ à la fois, au lieu du couple $(r_n, r_{n+1})$ ?
