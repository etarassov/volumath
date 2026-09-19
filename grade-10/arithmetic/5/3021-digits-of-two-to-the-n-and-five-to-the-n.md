---
id: "3021"
title: "Les chiffres de 2ⁿ et ceux de 5ⁿ"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 35
tags: [puissances, chiffres, encadrement, demonstration]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads 1, Problems about Digits and Base Representations"
  reference: "Handout-1878-1762.pdf, problème 7"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1878-1762.pdf"
---

## Statement

Pour un entier $n \geq 1$, on compte le nombre de chiffres de $2^n$ et le nombre de chiffres
de $5^n$, puis on additionne ces deux nombres.

Montrer que le résultat vaut toujours $n + 1$.

Par exemple, pour $n = 4$ : $2^4 = 16$ a deux chiffres et $5^4 = 625$ en a trois, et
$2 + 3 = 5 = 4 + 1$.

## Hints

1. Un entier $N$ s'écrit avec exactement $k$ chiffres exactement quand $10^{k-1} \leq N < 10^{k}$.
2. Écris cet encadrement pour $2^n$ (avec $\alpha$ chiffres) et pour $5^n$ (avec $\beta$ chiffres).
3. Multiplie les deux encadrements membre à membre. Que vaut $2^n \times 5^n$ ?
4. Tu obtiens $10^{\alpha + \beta - 2} \leq 10^n < 10^{\alpha + \beta}$. Peux-tu écarter le cas d'égalité à gauche ? Regarde les diviseurs premiers de $2^n$.
5. Il ne reste alors qu'un seul entier entre $\alpha + \beta - 2$ et $\alpha + \beta$ qui convienne.

## Solution

**Ce que veut dire « avoir k chiffres ».**

Un entier $N \geq 1$ s'écrit avec exactement $k$ chiffres si et seulement si

$$10^{\,k-1} \leq N < 10^{\,k}.$$

**On écrit les deux encadrements.**

Notons $\alpha$ le nombre de chiffres de $2^n$ et $\beta$ celui de $5^n$. Alors

$$10^{\,\alpha - 1} \leq 2^n < 10^{\,\alpha}
\qquad \text{et} \qquad
10^{\,\beta - 1} \leq 5^n < 10^{\,\beta}.$$

**On multiplie.**

Tous les membres sont strictement positifs, donc on peut multiplier les deux encadrements :

$$10^{\,\alpha - 1} \times 10^{\,\beta - 1} \leq 2^n \times 5^n < 10^{\,\alpha} \times 10^{\,\beta},$$

c'est-à-dire, puisque $2^n \times 5^n = 10^n$ :

$$10^{\,\alpha + \beta - 2} \leq 10^n < 10^{\,\alpha + \beta}.$$

**L'égalité de gauche est impossible.**

Peut-on avoir $10^{\,\alpha + \beta - 2} = 10^n$ ? Cela demanderait que les deux inégalités
de gauche soient des égalités en même temps, donc en particulier $2^n = 10^{\,\alpha - 1}$.

Or $n \geq 1$, donc $2^n$ est pair et supérieur ou égal à $2$ ; le seul diviseur premier de
$2^n$ est $2$. Une puissance $10^{\,\alpha-1}$ égale à $2^n$ devrait donc valoir $10^0 = 1$,
ce qui est impossible car $2^n \geq 2$. L'inégalité de gauche est donc **stricte** :

$$10^{\,\alpha + \beta - 2} < 10^n < 10^{\,\alpha + \beta}.$$

**On conclut.**

La fonction $k \mapsto 10^k$ est strictement croissante, donc

$$\alpha + \beta - 2 < n < \alpha + \beta.$$

Entre les deux entiers consécutifs $\alpha + \beta - 2$ et $\alpha + \beta$, il n'y a
qu'un seul entier strictement compris : $\alpha + \beta - 1$. Donc

$$n = \alpha + \beta - 1, \qquad \text{c'est-à-dire} \qquad \alpha + \beta = n + 1.$$

C'est bien ce qu'il fallait démontrer.

## Going further

Quelques valeurs, pour se convaincre :

| $n$ | $2^n$ | chiffres | $5^n$ | chiffres | total |
|---|---|---|---|---|---|
| $1$ | $2$ | $1$ | $5$ | $1$ | $2$ |
| $3$ | $8$ | $1$ | $125$ | $3$ | $4$ |
| $7$ | $128$ | $3$ | $78125$ | $5$ | $8$ |
| $10$ | $1024$ | $4$ | $9\,765\,625$ | $7$ | $11$ |
