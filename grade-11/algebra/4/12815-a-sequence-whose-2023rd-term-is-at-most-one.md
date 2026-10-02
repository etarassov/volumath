---
id: "12815"
title: "Une suite où le 2023ᵉ terme est au plus 1"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [suite, inegalite, changement-de-variable, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2023"
  reference: "2023-09_Enonce-Test-3.pdf, test senior, exercice 5 ; corrigé 2023-09_Corrige-Test-3.pdf (qui conclut à tort que a_n ⩽ 1 pour tout n ⩾ 2 : sa preuve utilise un terme b_0 qui n'existe pas, et la suite 100, 2, 1/2, 1/2, ... est un contre-exemple ; le résultat demandé reste vrai, pour tout n ⩾ 3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-3.pdf"
---

## Statement

Soit $a_1, a_2, a_3, \ldots$ des nombres réels strictement positifs tels que, pour tout entier $n \geq 1$,

$$a_{n+1}^2 + a_n\, a_{n+2} \leq a_n + a_{n+2}.$$

Démontrer que $a_{2023} \leq 1$.

## Hints

1. On veut comparer les termes à $1$. Posez $b_n = a_n - 1$ et récrivez l'inégalité avec les $b_n$. Que savez-vous de chaque $b_n$ ?
2. Vous devez trouver $b_{n+1}(b_{n+1} + 2) + b_n\, b_{n+2} \leq 0$. Si $b_{n+1} > 0$, que dire des signes de $b_n$ et de $b_{n+2}$ ?
3. Raisonnez par l'absurde : si un terme $b_N$ avec $N \geq 3$ est strictement positif, montrez qu'il y a deux termes consécutifs strictement positifs.
4. Avec deux termes consécutifs $b_m > 0$ et $b_{m+1} > 0$, utilisez l'inégalité deux fois, une fois pour montrer que $b_m > b_{m+1}$ et une fois pour montrer le contraire. Où sert l'hypothèse $N \geq 3$ ?

## Solution

### Changer de variable

Posons $b_n = a_n - 1$ pour tout $n \geq 1$. Comme $a_n > 0$, on a $b_n > -1$. En remplaçant $a_n$ par $b_n + 1$, l'inégalité de l'énoncé devient

$$(b_{n+1} + 1)^2 + (b_n + 1)(b_{n+2} + 1) \leq b_n + b_{n+2} + 2.$$

En développant, le membre de gauche vaut $b_{n+1}^2 + 2b_{n+1} + 1 + b_n b_{n+2} + b_n + b_{n+2} + 1$. Après simplification, on obtient, pour tout $n \geq 1$,

$$b_{n+1}\,(b_{n+1} + 2) + b_n\, b_{n+2} \leq 0. \qquad (I_n)$$

On veut montrer que $b_{2023} \leq 0$. On va même montrer que $b_N \leq 0$ pour tout $N \geq 3$.

### Deux termes positifs consécutifs

Raisonnons par l'absurde : supposons que $b_N > 0$ pour un entier $N \geq 3$.

L'inégalité $(I_{N-1})$, qui existe car $N - 1 \geq 1$, donne

$$b_{N-1}\, b_{N+1} \leq -b_N\,(b_N + 2) < 0,$$

car $b_N > 0$ et $b_N + 2 > 0$. Le produit $b_{N-1}\, b_{N+1}$ est strictement négatif, donc l'un de ces deux nombres est strictement positif.

- Si $b_{N-1} > 0$, posons $m = N - 1$.
- Sinon $b_{N+1} > 0$, et posons $m = N$.

Dans les deux cas, on a trouvé un entier $m \geq 2$ tel que $b_m > 0$ et $b_{m+1} > 0$.

### La contradiction

**L'inégalité $(I_m)$ donne $b_m > b_{m+1}$.** Elle s'écrit $b_{m+1}(b_{m+1} + 2) \leq -b_m\, b_{m+2}$. Comme $b_m > 0$ et $b_{m+2} > -1$, on a $-b_m\, b_{m+2} < b_m$. Donc

$$b_m > b_{m+1}^2 + 2b_{m+1} > b_{m+1},$$

la dernière inégalité venant de $b_{m+1}^2 + b_{m+1} > 0$.

**L'inégalité $(I_{m-1})$ donne $b_{m+1} > b_m$.** Elle existe car $m - 1 \geq 1$, et elle s'écrit $b_m(b_m + 2) \leq -b_{m-1}\, b_{m+1}$. Comme $b_{m+1} > 0$ et $b_{m-1} > -1$, on a $-b_{m-1}\, b_{m+1} < b_{m+1}$. Donc

$$b_{m+1} > b_m^2 + 2b_m > b_m.$$

On a obtenu à la fois $b_m > b_{m+1}$ et $b_{m+1} > b_m$ : c'est impossible.

### Conclusion

Pour tout $N \geq 3$, on a $b_N \leq 0$, c'est-à-dire $a_N \leq 1$. **En particulier, $a_{2023} \leq 1$.**

## Going further

1. Où la preuve utilise-t-elle que $N \geq 3$ ? Vérifiez que la suite $a_1 = 100$, $a_2 = 2$, puis $a_n = \frac{1}{2}$ pour tout $n \geq 3$, satisfait l'hypothèse de l'énoncé. Que montre-t-elle ?
