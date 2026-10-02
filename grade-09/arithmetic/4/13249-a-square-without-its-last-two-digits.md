---
id: "13249"
title: "Un carré privé de ses deux derniers chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [carre-parfait, chiffres, encadrement, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés communs, exercice 4 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

On écrit le carré $n^2$ d'un entier $n \geqslant 1$, puis on efface ses deux derniers chiffres. On convient qu'un nombre qui n'a plus aucun chiffre vaut $0$ (par exemple, $7^2 = 49$ donne $0$).

a) Trouver un entier $n \geqslant 1$ tel que le nombre obtenu soit encore le carré d'un entier.

b) Trouver tous les entiers $n \geqslant 1$ **qui ne sont pas multiples de $10$** et tels que le nombre obtenu soit encore le carré d'un entier.

## Hints

1. Pour a), essaie un nombre qui se termine par $0$.
2. Effacer les deux derniers chiffres d'un nombre $N$ revient à prendre le quotient de la division de $N$ par $100$.
3. Écris $n = 10q + c$, où $c$ est le chiffre des unités de $n$. Développe $n^2$.
4. Montre que le nombre obtenu est toujours au moins $q^2$ et toujours plus petit que $(q + 1)^2$.

## Solution

Effacer les deux derniers chiffres d'un nombre $N$ revient à prendre le quotient $Q$ de la division de $N$ par $100$ : $N = 100Q + R$ avec $R$ entre $0$ et $99$.

**a)** $n = 10$ convient : $10^2 = 100$ devient $1 = 1^2$. Plus généralement, si $n = 10k$, alors $n^2 = 100k^2$ se termine par deux zéros, et en les effaçant on obtient $k^2$.

**b)** Soit $n$ un entier qui n'est pas multiple de $10$. Écrivons $n = 10q + c$, où $c$ est le chiffre des unités, donc $1 \leqslant c \leqslant 9$, et $q \geqslant 0$. Alors

$$n^2 = 100q^2 + (20qc + c^2).$$

**Le nombre obtenu est coincé entre deux carrés.** Notons $Q$ le nombre obtenu en effaçant les deux derniers chiffres de $n^2$.

- D'une part $n^2 \geqslant 100q^2$, donc $Q \geqslant q^2$.
- D'autre part $n < 10(q + 1)$, donc $n^2 < 100(q + 1)^2$, et $Q \leqslant \frac{n^2}{100} < (q + 1)^2$.

Il n'y a aucun carré strictement entre $q^2$ et $(q + 1)^2$. Donc $Q$ est un carré exactement quand $Q = q^2$, c'est-à-dire quand $n^2 = 100q^2 + R$ avec $R = 20qc + c^2$ au plus $99$.

**La condition $c\,(20q + c) \leqslant 99$.** On cherche donc les $q \geqslant 0$ et $c$ entre $1$ et $9$ tels que $c\,(20q + c) \leqslant 99$.

- Si $q = 0$, la condition devient $c^2 \leqslant 99$, vraie pour tout $c$ de $1$ à $9$ : $n = 1, 2, \ldots, 9$.
- Supposons maintenant $q \geqslant 1$. Si $c \geqslant 5$, alors $c\,(20q + c) \geqslant 5 \times 25 = 125$ : impossible.
- Si $c = 4$ : $4\,(20q + 4) \leqslant 99$ donne $80q \leqslant 83$, donc $q = 1$ : $n = 14$.
- Si $c = 3$ : $3\,(20q + 3) \leqslant 99$ donne $60q \leqslant 90$, donc $q = 1$ : $n = 13$.
- Si $c = 2$ : $2\,(20q + 2) \leqslant 99$ donne $40q \leqslant 95$, donc $q = 1$ ou $2$ : $n = 12$ et $22$.
- Si $c = 1$ : $20q + 1 \leqslant 99$ donne $q \leqslant 4$ : $n = 11$, $21$, $31$, $41$.

**Vérification.** $11^2 = 121$, $12^2 = 144$, $13^2 = 169$, $14^2 = 196$ donnent $1$ ; $21^2 = 441$ et $22^2 = 484$ donnent $4$ ; $31^2 = 961$ donne $9$ ; $41^2 = 1681$ donne $16$. Et pour $n$ de $1$ à $9$, on obtient $0 = 0^2$.

**Conclusion.** a) Tout multiple de $10$ convient, par exemple $n = 10$. b) Les entiers non multiples de $10$ qui conviennent sont

$$1, 2, 3, 4, 5, 6, 7, 8, 9, \quad 11, 12, 13, 14, \quad 21, 22, \quad 31, \quad 41.$$
