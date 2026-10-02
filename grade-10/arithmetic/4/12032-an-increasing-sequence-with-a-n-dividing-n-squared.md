---
id: "12032"
title: "Une suite croissante telle que aₙ divise n²"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [diviseurs, nombres-premiers, suites, entiers-consecutifs, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test du 23 mars 2013"
  reference: "2017-10_ofm-2012-2013-test-mars-1.pdf, exercice 2 ; corrigé 2017-10_ofm-2012-2013-test-mars-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-mars-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-mars-1.pdf"
---

## Statement

Soit $a_0, a_1, a_2, \ldots$ une suite d'entiers strictement positifs. On suppose que :

- la suite est croissante, c'est-à-dire $a_{n+1} \geqslant a_n$ pour tout $n$, et elle n'est pas constante ;
- pour tout $n \geqslant 1$, le nombre $a_n$ divise $n^2$.

Démontrer que l'une des deux affirmations suivantes est vraie :

1. il existe un entier $n_1 \geqslant 1$ tel que $a_n = n$ pour tout $n \geqslant n_1$ ;
2. il existe un entier $n_2 \geqslant 1$ tel que $a_n = n^2$ pour tout $n \geqslant n_2$.

## Hints

1. Pour un nombre premier $p$, quelles sont les valeurs possibles de $a_p$ ?
2. Deux entiers consécutifs $n$ et $n + 1$ n'ont aucun diviseur commun autre que $1$. Déduisez-en que $n + 1$ ne divise pas $n^2$, et que $n$ ne divise pas $(n + 1)^2$, quand $n \geqslant 2$.
3. Séparez deux cas : soit $a_n \leqslant n$ pour tout $n \geqslant 1$, soit il existe un $m$ tel que $a_m > m$.
4. Si $a_n = n^2$ avec $n \geqslant 3$, que peut valoir $a_{n+1}$ ? Comparez $n^2$ et la moitié de $(n + 1)^2$.

## Solution

**Trois remarques.**

- *(R1)* Si $p$ est un nombre premier, les diviseurs positifs de $p^2$ sont $1$, $p$ et $p^2$. Donc $a_p$ vaut $1$, $p$ ou $p^2$.
- *(R2)* Soit $n \geqslant 1$. Si un nombre premier $q$ divisait à la fois $n + 1$ et $n^2$, il diviserait $n$ (un nombre premier qui divise un produit divise l'un des facteurs), donc aussi la différence $(n + 1) - n = 1$, ce qui est absurde. Ainsi $n + 1$ et $n^2$ n'ont aucun facteur premier commun, et de même $n$ et $(n + 1)^2$. Par conséquent **$n + 1$ ne divise pas $n^2$**, puisque $n + 1 \geqslant 2$ a au moins un facteur premier, et, si $n \geqslant 2$, **$n$ ne divise pas $(n + 1)^2$**.
- *(R3)* La suite n'est pas constante et elle est croissante, donc l'un de ses termes est strictement plus grand que $a_0 \geqslant 1$. Il existe donc un rang $N$ tel que $a_N \geqslant 2$, et alors $a_n \geqslant 2$ pour tout $n \geqslant N$.

**Premier cas : $a_n \leqslant n$ pour tout $n \geqslant 1$.** Choisissons un nombre premier $p \geqslant N$ (il y en a une infinité). D'après (R3), $a_p \geqslant 2$, et $a_p \leqslant p$ par hypothèse. D'après (R1), $a_p = p$.

Montrons de proche en proche que $a_n = n$ pour tout $n \geqslant p$. Supposons $a_n = n$ pour un certain $n \geqslant p$. Alors $n \leqslant a_{n+1} \leqslant n + 1$, donc $a_{n+1}$ vaut $n$ ou $n + 1$. Il ne peut pas valoir $n$, car $a_{n+1}$ divise $(n + 1)^2$ et $n$ ne divise pas $(n + 1)^2$ d'après (R2) ($n \geqslant p \geqslant 2$). Donc $a_{n+1} = n + 1$.

L'affirmation 1 est vraie, avec $n_1 = p$.

**Second cas : il existe un entier $m \geqslant 1$ tel que $a_m > m$.**

*Étape 1 : $a_n > n$ pour tout $n \geqslant m$.* Supposons $a_n > n$ pour un certain $n \geqslant m$, c'est-à-dire $a_n \geqslant n + 1$. Alors $a_{n+1} \geqslant a_n \geqslant n + 1$. Si l'on avait $a_{n+1} = n + 1$, on aurait $n + 1 \leqslant a_n \leqslant a_{n+1} = n + 1$, donc $a_n = n + 1$. Mais $a_n$ divise $n^2$, et $n + 1$ ne divise pas $n^2$ d'après (R2). Donc $a_{n+1} > n + 1$. De proche en proche, $a_n > n$ pour tout $n \geqslant m$.

*Étape 2 : un premier terme égal à $p^2$.* Choisissons un nombre premier $p \geqslant m$ et $p \geqslant 3$. D'après l'étape 1, $a_p > p$, et d'après (R1), $a_p = p^2$.

*Étape 3 : $a_n = n^2$ pour tout $n \geqslant p$.* Supposons $a_n = n^2$ pour un certain $n \geqslant 3$. Alors $a_{n+1} \geqslant n^2$. Si $a_{n+1}$ n'était pas égal à $(n + 1)^2$, on pourrait écrire $(n + 1)^2 = a_{n+1} \times d$ avec un entier $d \geqslant 2$, donc

$$a_{n+1} \leqslant \frac{(n + 1)^2}{2} .$$

Or $2n^2 - (n + 1)^2 = n^2 - 2n - 1 = n(n - 2) - 1 \geqslant 3 - 1 > 0$ quand $n \geqslant 3$, donc

$$\frac{(n + 1)^2}{2} < n^2 \leqslant a_{n+1} .$$

C'est une contradiction, donc $a_{n+1} = (n + 1)^2$. De proche en proche, à partir de $a_p = p^2$, on obtient $a_n = n^2$ pour tout $n \geqslant p$.

L'affirmation 2 est vraie, avec $n_2 = p$.

**Conclusion.** Les deux cas couvrent toutes les possibilités. Dans le premier, la suite finit par valoir $a_n = n$ ; dans le second, elle finit par valoir $a_n = n^2$.

## Going further

Le passage de $a_n = n$ à $a_n = n^2$ peut arriver tard. Par exemple, la suite qui vaut $1$ jusqu'au rang $10$, puis $a_n = n$ de $11$ à $23$, puis $a_n = n^2$ à partir de $24$ vérifie toutes les hypothèses : vérifiez que le passage de $a_{23} = 23$ à $a_{24} = 576$ est permis. Pourquoi ne peut-on jamais revenir de $a_n = n^2$ à $a_{n+1} = n + 1$ ?
