---
id: "12481"
title: "45ˣ − 6ʸ = 2019ᶻ"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [maths-expertes, congruences, equation-diophantienne, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 6 mai 2020"
  reference: "2020-11_Enonce-Test-Mai-2020.pdf, exercice 3 (groupe Junior) ; corrigé 2020-05_Corrige-Web-05-2020.pdf (solution alternative n° 2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Mai-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Mai-2020.pdf"
---

## Statement

Déterminer tous les entiers naturels $x$, $y$ et $z$ tels que
$$45^x - 6^y = 2019^z.$$

## Hints

1. Commence par montrer que $x \geqslant 1$.
2. Regarde l'équation modulo $5$. Que peux-tu en déduire sur $z$ ?
3. Regarde ensuite l'équation modulo $4$. Que peux-tu en déduire sur $y$ ?
4. Enfin, $45$ est un multiple de $9$. Regarde l'équation modulo $9$.

## Solution

Soit $(x, y, z)$ une solution.

### Étape 0 : $x \geqslant 1$

Si $x = 0$, le membre de gauche vaut $1 - 6^y \leqslant 0$, alors que $2019^z > 0$. C'est
impossible, donc $x \geqslant 1$.

### Étape 1 : modulo $5$, l'entier $z$ est impair

Comme $x \geqslant 1$, l'entier $45^x$ est un multiple de $5$, donc $45^x \equiv 0 \pmod 5$.
D'autre part $6 \equiv 1 \pmod 5$, donc $6^y \equiv 1 \pmod 5$, et $2019 \equiv -1 \pmod 5$,
donc $2019^z \equiv (-1)^z \pmod 5$. L'équation donne
$$-1 \equiv (-1)^z \pmod 5.$$
Si $z$ était pair, on aurait $-1 \equiv 1 \pmod 5$, c'est-à-dire que $5$ diviserait $2$, ce qui
est faux. Donc **$z$ est impair**.

### Étape 2 : modulo $4$, on trouve $y = 1$

On a $45 \equiv 1 \pmod 4$, donc $45^x \equiv 1 \pmod 4$. On a $2019 \equiv -1 \pmod 4$, et
comme $z$ est impair, $2019^z \equiv -1 \pmod 4$. L'équation donne
$$1 - 6^y \equiv -1 \pmod 4, \quad \text{c'est-à-dire} \quad 6^y \equiv 2 \pmod 4.$$
Or :

- si $y = 0$, alors $6^y = 1$, qui n'est pas congru à $2$ modulo $4$ ;
- si $y \geqslant 2$, alors $6^y$ est un multiple de $6^2 = 36$, donc de $4$, et
  $6^y \equiv 0 \pmod 4$ ;
- si $y = 1$, alors $6^y = 6 \equiv 2 \pmod 4$.

Donc **$y = 1$**.

### Étape 3 : modulo $9$, on trouve $z = 1$

Comme $45 = 9 \times 5$ et $x \geqslant 1$, on a $45^x \equiv 0 \pmod 9$. D'autre part,
$2019 = 9 \times 224 + 3$, donc $2019 \equiv 3 \pmod 9$. Avec $y = 1$, l'équation donne
$$-6 \equiv 3^z \pmod 9, \quad \text{c'est-à-dire} \quad 3^z \equiv 3 \pmod 9.$$
Or $3^0 = 1$ n'est pas congru à $3$ modulo $9$, et si $z \geqslant 2$, alors $3^z$ est un
multiple de $9$, donc $3^z \equiv 0 \pmod 9$. Donc **$z = 1$**.

### Étape 4 : on trouve $x$

Avec $y = z = 1$, l'équation devient
$$45^x = 2019 + 6 = 2025 = 45^2.$$
Comme $x \mapsto 45^x$ est strictement croissante, $x = 2$.

### Réciproque et conclusion

On vérifie que $45^2 - 6^1 = 2025 - 6 = 2019 = 2019^1$.

**L'unique solution est $(x, y, z) = (2, 1, 1)$.**

## Going further

Retrouver ce résultat d'une autre façon : décomposer $45$, $6$ et $2019 = 3 \times 673$ en
facteurs premiers, et comparer les puissances de $3$ qui divisent chacun des trois termes. On
pourra séparer les cas $y > 2x$, $y = 2x$ et $y < 2x$.
