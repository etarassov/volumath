---
id: "13224"
title: "Nombres équilibrés et somme de deux palindromes"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [palindrome, divisibilite, chiffres, critere-de-divisibilite-par-11]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM)"
  reference: "2017-09_coupe_automne_2016.pdf, exercices communs, exercice 5 ; corrigé 2017-09_coupe_automne_2016_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016.pdf"
---

## Statement

Un **palindrome** est un nombre dont l'écriture décimale ne change pas si on lit ses chiffres de droite à gauche. Par exemple, $3773$ est un palindrome. Un palindrome ne peut pas commencer par un zéro : $0770$ n'est pas un palindrome à quatre chiffres.

Un nombre à quatre chiffres $\overline{abcd}$ est dit **équilibré** si $a + b = c + d$. Par exemple, $2736$ est équilibré.

Déterminer tous les nombres équilibrés à quatre chiffres qui sont la somme de deux palindromes à quatre chiffres.

## Hints

1. Écris un palindrome à quatre chiffres $\overline{xyyx}$ en fonction de $x$ et $y$. Par quel nombre est-il toujours divisible ?
2. La somme de deux palindromes à quatre chiffres est donc divisible par $11$. Écris $\overline{abcd} = 1001a + 99b + 11c + (d - c + b - a)$.
3. Le nombre $d - c + b - a$ est un multiple de $11$ compris entre $-18$ et $18$. Quelles valeurs peut-il prendre ? Combine avec $a + b = c + d$.
4. Pour la réciproque, essaie d'écrire $\overline{abba}$ comme $1001$ plus un autre palindrome.

## Solution

**Un palindrome à quatre chiffres est un multiple de $11$.** Un tel palindrome s'écrit $\overline{xyyx}$ avec $1 \leqslant x \leqslant 9$, et

$$\overline{xyyx} = 1000x + 100y + 10y + x = 1001x + 110y = 11\,(91x + 10y).$$

Une somme de deux palindromes à quatre chiffres est donc un multiple de $11$. Elle vaut aussi au moins $1001 + 1001 = 2002$.

**Ce que cela impose à $\overline{abcd}$.** Supposons que $\overline{abcd}$ soit équilibré et somme de deux palindromes à quatre chiffres. On écrit

$$\overline{abcd} = 1000a + 100b + 10c + d = \underbrace{1001a + 99b + 11c}_{\text{multiple de } 11} + (d - c + b - a).$$

Comme $\overline{abcd}$ est un multiple de $11$, le nombre $s = (b + d) - (a + c)$ l'est aussi. Or $b + d$ et $a + c$ sont entre $0$ et $18$, donc $s$ est entre $-18$ et $18$. Les seuls multiples de $11$ dans cet intervalle sont $-11$, $0$ et $11$.

- Si $s = \pm 11$ : on a $b + d - a - c = \pm 11$ et, comme le nombre est équilibré, $a + b - c - d = 0$. En soustrayant la deuxième égalité de la première, on obtient $2d - 2a = \pm 11$. C'est impossible, car $2d - 2a$ est pair et $11$ est impair.
- Donc $s = 0$, c'est-à-dire $b + d = a + c$. Avec $a + b = c + d$, la soustraction donne $(a + b) - (b + d) = (c + d) - (a + c)$, soit $a - d = d - a$. Donc $a = d$, puis $b = c$.

Le nombre s'écrit donc $\overline{abba}$ : c'est lui-même un palindrome. De plus il vaut au moins $2002$, donc $a \geqslant 2$.

**Réciproque.** Soit $a$ entre $2$ et $9$ et $b$ un chiffre quelconque. Le nombre $\overline{abba}$ est équilibré, car $a + b = b + a$. Et

$$\overline{abba} = 1001 + \overline{(a-1)\,b\,b\,(a-1)},$$

où $\overline{(a-1)\,b\,b\,(a-1)}$ est un palindrome à quatre chiffres, puisque son premier chiffre $a - 1$ vaut au moins $1$. Par exemple, $5775 = 1001 + 4774$.

**Conclusion.** Les nombres cherchés sont exactement les nombres $\overline{abba}$ avec $2 \leqslant a \leqslant 9$ et $0 \leqslant b \leqslant 9$. Il y en a $8 \times 10 = 80$.
