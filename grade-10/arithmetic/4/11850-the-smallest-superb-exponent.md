---
id: "11850"
title: "Le plus petit exposant superbe"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, restes, carres modulo, cubes modulo, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 5 (pot-pourri)"
  reference: "2023-03_Sujet-envoi-5.pdf, Exercices Juniors, exercice 7 ; corrigé 2023-07_corrige-envoi-5.pdf (petites coquilles : « modulo 9 » pour modulo 3, « m est pair » pour m impair, et « k = 3 » pour k = 4 dans le dernier cas)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/03/Sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-03_Sujet-envoi-5.pdf"
---

## Statement

On dit qu'un entier $k > 1$ est **superbe** s'il existe trois entiers strictement positifs $m$, $n$, $a$ tels que

$$5^m + 63n + 49 = a^k.$$

Déterminer le plus petit entier superbe.

## Hints

1. Essayer de petites valeurs. Pour $k = 5$, essayer $a = 3$.
2. Le nombre $63n + 49$ est un multiple de $7$. Regarder l'équation en ne gardant que les restes dans la division par $7$, et faire la liste des restes possibles d'un carré, puis d'un cube, dans la division par $7$.
3. Pour $k = 2$, regarder aussi les restes dans la division par $3$. Pour $k = 3$, une fois que l'on sait que $3$ divise $m$, regarder les restes dans la division par $9$.
4. Pour $k = 4$, remarquer que $a^4 = \left(a^2\right)^2$.

## Solution

**Rappel : les congruences.** Soit $d \geqslant 2$ un entier. On écrit $u \equiv v \pmod{d}$ (on lit « $u$ est congru à $v$ modulo $d$ ») quand $u$ et $v$ ont le même reste dans la division par $d$, c'est-à-dire quand $d$ divise $u - v$. On peut additionner et multiplier des congruences modulo le même $d$ : si $u \equiv v$ et $u' \equiv v'$, alors $u + u' \equiv v + v'$ et $u u' \equiv v v'$. En particulier, $u^j \equiv v^j$ pour tout $j \geqslant 1$, et le reste de $a^2$ ou de $a^3$ ne dépend que du reste de $a$.

**$5$ est superbe.** Avec $a = 3$, $m = 1$ et $n = 3$ :

$$5^1 + 63 \times 3 + 49 = 5 + 189 + 49 = 243 = 3^5.$$

Il reste à montrer que $2$, $3$ et $4$ ne sont pas superbes.

**Deux tableaux modulo $7$.** On a $63n + 49 = 7(9n + 7) \equiv 0 \pmod{7}$, donc l'équation donne $a^k \equiv 5^m \pmod{7}$. Voici les restes des carrés et des cubes modulo $7$, et ceux des puissances de $5$ :

| reste de $a$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| reste de $a^2$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |
| reste de $a^3$ | $0$ | $1$ | $1$ | $6$ | $1$ | $6$ | $6$ |

| $m$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|
| reste de $5^m$ | $5$ | $4$ | $6$ | $2$ | $3$ | $1$ |

Comme $5^6 \equiv 1 \pmod 7$, les restes de $5^m$ se répètent ensuite de $6$ en $6$ : le reste de $5^m$ ne dépend que du reste de $m$ dans la division par $6$.

**$2$ n'est pas superbe.** Supposons $5^m + 63n + 49 = a^2$.

- Modulo $7$ : $a^2 \equiv 5^m$. Un carré a pour reste $0$, $1$, $2$ ou $4$. D'après le tableau, le reste de $5^m$ est $1$, $2$ ou $4$ exactement quand le reste de $m$ dans la division par $6$ est $0$, $2$ ou $4$, c'est-à-dire quand $m$ est pair. Donc $m$ est pair.
- Modulo $3$ : $5 \equiv -1$, $63n \equiv 0$ et $49 \equiv 1$. Comme $m$ est pair, $5^m \equiv (-1)^m = 1$, donc $a^2 \equiv 1 + 1 = 2 \pmod 3$. Or un carré a pour reste $0$ ou $1$ modulo $3$ (car $0^2 = 0$, $1^2 = 1$, $2^2 = 4 \equiv 1$). Contradiction.

**$3$ n'est pas superbe.** Supposons $5^m + 63n + 49 = a^3$.

- Modulo $7$ : $a^3 \equiv 5^m$. Un cube a pour reste $0$, $1$ ou $6$. D'après le tableau, le reste de $5^m$ est $1$ ou $6$ exactement quand le reste de $m$ dans la division par $6$ est $0$ ou $3$. Dans les deux cas, $m$ est un multiple de $3$. Écrivons $m = 3j$ et $b = 5^j$, de sorte que $5^m = b^3$.
- Modulo $9$ : $63n = 9 \times 7n \equiv 0$ et $49 = 45 + 4 \equiv 4$, donc $a^3 \equiv b^3 + 4 \pmod 9$. Les cubes modulo $9$ :

| reste de $a$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|---|
| reste de $a^3$ | $0$ | $1$ | $8$ | $0$ | $1$ | $8$ | $0$ | $1$ | $8$ |

  Un cube a donc pour reste $0$, $1$ ou $8$ modulo $9$. Comme $b = 5^j$ n'est pas un multiple de $3$, $b^3$ a pour reste $1$ ou $8$, et $b^3 + 4$ a pour reste $5$ ou $12 - 9 = 3$. Aucun des deux n'est le reste d'un cube. Contradiction.

**$4$ n'est pas superbe.** Si $5^m + 63n + 49 = a^4$, alors $5^m + 63n + 49 = \left(a^2\right)^2$, et $2$ serait superbe (avec $a^2$ à la place de $a$). C'est impossible d'après ce qui précède.

**Conclusion.** Le plus petit entier superbe est $5$.
