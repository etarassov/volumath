---
id: "12880"
title: "Des sommes d'entiers qui diffèrent d'un carré"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [suites, carre-parfait, divisibilite, congruences, puissances-de-trois, recurrence, conjecture]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2025"
  reference: "2025-10_Sujet-Test-3-2024-2025.pdf, test junior, exercice 4 ; corrigé 2025-10_Corrige-Test-3-2024-2025.pdf (même idée que le corrigé ; on obtient que 3ⁿ divise c en divisant n fois par 3, sans la valuation 3-adique)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-Test-3-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-10_Sujet-Test-3-2024-2025.pdf"
---

## Statement

Pour tout entier $n \geq 1$, on note $s(n) = 1 + 2 + \cdots + n$ la somme des $n$ premiers entiers strictement positifs.

On définit une suite d'entiers $a_1$, $a_2$, ... de la façon suivante : $a_1 = 1$ et, pour $n \geq 1$, $a_{n+1}$ est le plus petit entier $m$ tel que $s(m) - s(a_n)$ soit le carré d'un entier strictement positif.

Déterminer $a_{2024}$.

## Hints

1. Calculez $a_2$, $a_3$ et $a_4$. Conjecturez une formule pour $a_n$. Que vaut $2a_n + 1$ ?
2. Avec $s(m) = m(m + 1)/2$, montrez que $s(m) - s(a) = c^2$ s'écrit $(2m + 1)^2 = (2a + 1)^2 + 8c^2$.
3. Si $N^2 - 8c^2$ est un multiple de $3$, montrez que $N$ et $c$ sont tous les deux des multiples de $3$. (Un carré, divisé par $3$, a pour reste $0$ ou $1$.)

## Solution

La réponse : **$a_{2024} = (3^{2024} - 1)/2$.**

### Une conjecture

On a $s(1) = 1$, $s(2) = 3$, $s(3) = 6$, $s(4) = 10$. Les différences $s(2) - s(1) = 2$ et $s(3) - s(1) = 5$ ne sont pas des carrés, mais $s(4) - s(1) = 9 = 3^2$. Donc $a_2 = 4$. On trouve de même $a_3 = 13$, car $s(13) - s(4) = 91 - 10 = 81 = 9^2$, et aucun entier de $5$ à $12$ ne convient. On conjecture que

$$a_n = \frac{3^n - 1}{2}, \qquad \text{c'est-à-dire} \qquad 2a_n + 1 = 3^n.$$

Il suffit de montrer : **si $2a_n + 1 = 3^n$, alors $2a_{n+1} + 1 = 3^{n+1}$.** Comme $2a_1 + 1 = 3$, on obtient alors de proche en proche (par récurrence) la formule pour tout $n \geq 1$.

### On traduit la condition

On sait que $s(m) = m(m + 1)/2$, donc $8\,s(m) + 1 = 4m^2 + 4m + 1 = (2m + 1)^2$.

Soit $a$ et $m$ deux entiers et $c > 0$ un entier. En multipliant par $8$, l'égalité $s(m) - s(a) = c^2$ équivaut à $8\,s(m) + 1 = 8\,s(a) + 1 + 8c^2$, c'est-à-dire

$$(2m + 1)^2 = (2a + 1)^2 + 8c^2.$$

On suppose désormais $2a_n + 1 = 3^n$. L'entier $a_{n+1}$ est donc le plus petit entier $m$ pour lequel il existe un entier $c > 0$ tel que

$$(2m + 1)^2 - 8c^2 = 9^n.$$

### Un lemme sur les multiples de 3

**Lemme.** Soit $N$ et $c$ deux entiers et $j \geq 1$ un entier tels que $N^2 - 8c^2 = 9^j$. Alors $N$ et $c$ sont des multiples de $3$, et $(N/3)^2 - 8(c/3)^2 = 9^{j-1}$.

*Preuve.* Le reste de la division par $3$ d'un entier est $0$, $1$ ou $2$, donc l'entier s'écrit $3t$, $3t + 1$ ou $3t + 2$. Son carré s'écrit alors $9t^2$, $3(3t^2 + 2t) + 1$ ou $3(3t^2 + 4t + 1) + 1$. **Le carré d'un entier qui n'est pas multiple de $3$ a pour reste $1$ dans la division par $3$.**

On a $N^2 + c^2 = (N^2 - 8c^2) + 9c^2 = 9^j + 9c^2$, qui est un multiple de $3$. Si un seul des deux entiers $N$, $c$ était multiple de $3$, le reste de $N^2 + c^2$ serait $1$. Si aucun ne l'était, le reste serait celui de $1 + 1$, c'est-à-dire $2$. Donc $N$ et $c$ sont tous les deux des multiples de $3$. On divise alors l'égalité $N^2 - 8c^2 = 9^j$ par $9$, et on obtient la dernière égalité.

### Une minoration de a(n+1)

Soit $m$ et $c > 0$ tels que $(2m + 1)^2 - 8c^2 = 9^n$. On applique le lemme une première fois avec $N = 2m + 1$ et $j = n$, puis aux deux quotients avec $j = n - 1$, et ainsi de suite, $n$ fois en tout. On obtient que $2m + 1$ et $c$ sont divisibles par $3$ une première fois, puis encore une fois, ..., $n$ fois : **$c$ est un multiple de $3^n$.**

Comme $c > 0$, on a donc $c \geq 3^n$, puis

$$(2m + 1)^2 = 9^n + 8c^2 \geq 9^n + 8 \times 9^n = 9^{n+1}.$$

Comme $m \geq 1$, l'entier $2m + 1$ est positif, donc $2m + 1 \geq 3^{n+1}$. Ceci vaut pour tout entier $m$ qui convient, et en particulier $2a_{n+1} + 1 \geq 3^{n+1}$.

### La valeur est atteinte

Soit $m = (3^{n+1} - 1)/2$, qui est un entier car $3^{n+1}$ est impair. Avec $c = 3^n$, on a

$$(2m + 1)^2 - 8c^2 = 9^{n+1} - 8 \times 9^n = 9^n.$$

Donc $s(m) - s(a_n) = (3^n)^2$, qui est le carré d'un entier strictement positif. Par conséquent, $2a_{n+1} + 1 = 3^{n+1}$, ce qui termine la récurrence.

### Conclusion

Pour tout $n \geq 1$, $a_n = (3^n - 1)/2$. **En particulier, $a_{2024} = (3^{2024} - 1)/2$.**

## Going further

1. Montrez que $s(a_n) = (9^n - 1)/8$ pour tout $n \geq 1$. Vérifiez-le pour $n = 1$, $2$, $3$.
2. Montrez que l'équation $N^2 - 8c^2 = 1$ a d'autres solutions entières que $N = 3$, $c = 1$, par exemple $N = 17$, $c = 6$. Pourquoi ne donnent-elles pas une valeur de $a_{n+1}$ plus petite ?
