---
id: "8156"
title: "4mn − m − n, un carré ou presque"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [factorisation, congruences, petit-theoreme-de-fermat, carre-parfait]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 53 (une étoile). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On s'intéresse aux triplets $(m, n, p)$ d'entiers strictement positifs.

1. Montrer qu'il existe une infinité de triplets tels que
   $$4mn - m - n = p^2 - 1 .$$
2. Montrer qu'il n'en existe **aucun** tel que
   $$4mn - m - n = p^2 .$$

## Hints

1. Pour la première question, il n'est pas interdit de chercher des solutions très particulières. Essaie $n = 1$ : que devient l'équation ?
2. Pour la seconde question, l'expression $4mn - m - n$ ne se factorise pas telle quelle. Multiplie toute l'égalité par $4$ et regarde $16mn - 4m - 4n$ : à quoi manque-t-il un petit quelque chose pour se factoriser ?
3. Tu devrais tomber sur $(4m-1)(4n-1) = 4p^2 + 1$.
4. Regarde $4m-1$ modulo $4$. Puis demande-toi quels nombres peuvent diviser $4p^2 + 1$ : un diviseur premier impair de $x^2 + 1$, quel reste laisse-t-il dans la division par $4$ ?
5. Plus simplement encore : si tous les diviseurs premiers d'un nombre sont congrus à $1$ modulo $4$, que dire du nombre lui-même modulo $4$ ?

## Solution

**1. Une infinité de solutions pour $p^2 - 1$.**

Cherchons des solutions avec $n = 1$. L'équation devient

$$4m - m - 1 = p^2 - 1, \qquad \text{c'est-à-dire} \qquad 3m = p^2 .$$

Il suffit donc que $p^2$ soit un multiple de $3$, ce qui impose que $p$ le soit. Posons $p = 3t$ avec $t \geqslant 1$ : alors $3m = 9t^2$, donc $m = 3t^2$.

Vérifions que le triplet $(m, n, p) = (3t^2,\ 1,\ 3t)$ convient :

$$4 \times 3t^2 \times 1 - 3t^2 - 1 = 12t^2 - 3t^2 - 1 = 9t^2 - 1 = (3t)^2 - 1 .$$

C'est bien de la forme $p^2 - 1$. Comme $t$ parcourt tous les entiers $\geqslant 1$, on obtient une **infinité** de triplets, tous formés d'entiers strictement positifs.

**2. Aucune solution pour $p^2$.**

Supposons qu'il existe $m, n, p$ strictement positifs avec $4mn - m - n = p^2$.

Multiplions par $4$ :

$$16mn - 4m - 4n = 4p^2 .$$

Le membre de gauche est presque un produit : en ajoutant $1$ des deux côtés,

$$16mn - 4m - 4n + 1 = 4p^2 + 1, \qquad \text{c'est-à-dire} \qquad (4m-1)(4n-1) = 4p^2 + 1 .$$

Posons $N = 4p^2 + 1 = (2p)^2 + 1$.

**Tout diviseur premier impair de $N$ est congru à $1$ modulo $4$.** En effet, soit $q$ un nombre premier impair divisant $(2p)^2 + 1$, et posons $x = 2p$. Alors $x^2 \equiv -1 \pmod q$, donc

$$x^{q-1} = \left(x^2\right)^{\frac{q-1}{2}} \equiv (-1)^{\frac{q-1}{2}} \pmod q .$$

Comme $q$ ne divise pas $x$, le petit théorème de Fermat donne $x^{q-1} \equiv 1 \pmod q$. Donc $(-1)^{\frac{q-1}{2}} \equiv 1 \pmod q$. Puisque $q$ est un premier impair, $q \geqslant 3$ et $1 \not\equiv -1 \pmod q$ ; l'exposant $\frac{q-1}{2}$ est donc pair, ce qui signifie exactement que $q \equiv 1 \pmod 4$.

Par ailleurs $N = 4p^2 + 1$ est impair, donc tous ses facteurs premiers sont impairs, donc tous congrus à $1$ modulo $4$. Un produit de nombres congrus à $1$ modulo $4$ est lui aussi congru à $1$ modulo $4$, et il en va de même de **tous les diviseurs** de $N$, qui sont des produits de tels facteurs premiers.

Or $4m - 1$ est un diviseur de $N$, et

$$4m - 1 \equiv -1 \equiv 3 \pmod 4 .$$

C'est une contradiction, car $3 \neq 1$ modulo $4$.

$$\boxed{\ 4mn - m - n = p^2 \text{ n'a aucune solution en entiers strictement positifs.}\ }$$

## Going further

La différence entre les deux questions se voit bien sur la factorisation. Pour $p^2$ on tombe sur $(4m-1)(4n-1) = 4p^2+1$, impossible ; pour $p^2 - 1$ on tombe sur

$$(4m-1)(4n-1) = 4p^2 - 3 ,$$

et là il n'y a plus d'obstruction : $4p^2 - 3 \equiv 1 \pmod 4$ comme il faut. La solution trouvée plus haut correspond à $n = 1$, donc au facteur $4n - 1 = 3$.
