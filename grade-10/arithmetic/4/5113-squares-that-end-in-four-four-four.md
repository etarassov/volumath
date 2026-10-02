---
id: "5113"
title: "Des carrés qui finissent par 444"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [carres, chiffres, congruences, dernier-chiffre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 17"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Trouver tous les nombres de trois chiffres dont le carré se termine par $444$.

Par exemple $38^2 = 1444$ se termine bien par $444$, mais $38$ n'a que deux chiffres.

## Hints

1. On cherche $n$ tel que $n^2$ et $444$ aient les mêmes trois derniers chiffres. Commence par un seul chiffre : quels sont les $n$ dont le carré se termine par $4$ ?
2. Pour passer à deux chiffres, écris $n = 10u + 2$ (puis $n = 10u - 2$) et développe $n^2$. Les termes en $100u^2$ ne changent pas les deux derniers chiffres.
3. Tu dois trouver quatre terminaisons possibles à deux chiffres.
4. Pour passer à trois chiffres, écris $n = 100t + r$ où $r$ est l'une de ces terminaisons, développe, et ne garde que ce qui compte modulo $1000$.
5. Dans deux des quatre cas, tu tomberas sur une égalité impossible parce qu'un nombre pair devrait être égal à un nombre impair.

## Solution

On cherche les entiers $n$ tels que $100 \leqslant n \leqslant 999$ et

$$n^2 \equiv 444 \pmod{1000}$$

On va y arriver en trois temps : un chiffre, puis deux, puis trois.

**Étape 1. Le dernier chiffre.**

Le dernier chiffre de $n^2$ est celui de $c^2$, où $c$ est le dernier chiffre de $n$. En parcourant $c = 0, 1, \ldots, 9$, les carrés se terminent par $0, 1, 4, 9, 6, 5, 6, 9, 4, 1$. Le chiffre $4$ apparaît pour $c = 2$ et $c = 8$.

Donc $n$ se termine par $2$ ou par $8$, ce qui s'écrit

$$n = 10u + 2 \qquad \text{ou} \qquad n = 10u - 2$$

**Étape 2. Les deux derniers chiffres.**

*Cas $n = 10u + 2$.*

$$n^2 = 100u^2 + 40u + 4$$

Le terme $100u^2$ ne change rien aux deux derniers chiffres. On veut donc $40u + 4 \equiv 44 \pmod{100}$, soit $40u \equiv 40 \pmod{100}$, soit encore (en divisant par $20$) $2u \equiv 2 \pmod 5$, c'est-à-dire

$$u \equiv 1 \pmod 5$$

Le chiffre des dizaines de $n$ est le dernier chiffre de $u$, donc $u$ se termine par $1$ ou $6$ : $n$ se termine par $12$ ou par $62$.

*Cas $n = 10u - 2$.*

$$n^2 = 100u^2 - 40u + 4$$

On veut $-40u + 4 \equiv 44 \pmod{100}$, soit $40u \equiv -40 \equiv 60 \pmod{100}$, soit $2u \equiv 3 \pmod 5$, c'est-à-dire

$$u \equiv 4 \pmod 5$$

Donc $u$ se termine par $4$ ou $9$, et $n = 10u - 2$ se termine par $38$ ou par $88$.

*Bilan.* Les deux derniers chiffres de $n$ valent $12$, $38$, $62$ ou $88$.

**Étape 3. Les trois derniers chiffres.**

Écrivons $n = 100t + r$, où $r \in \{12, 38, 62, 88\}$ et où $t$ est un chiffre de $1$ à $9$ (puisque $n$ a trois chiffres). Alors

$$n^2 = 10\,000\,t^2 + 200\,t\,r + r^2$$

Le terme $10\,000\,t^2$ est un multiple de $1000$, il ne change pas les trois derniers chiffres. Il reste à résoudre

$$200\,t\,r + r^2 \equiv 444 \pmod{1000}$$

*Cas $r = 12$.* $r^2 = 144$ et $200 \times 12 = 2400 \equiv 400 \pmod{1000}$. La condition devient $400t + 144 \equiv 444$, soit $400t \equiv 300 \pmod{1000}$. En divisant par $100$ : $4t \equiv 3 \pmod{10}$. Le membre de gauche est pair, celui de droite impair : **impossible**.

*Cas $r = 38$.* $r^2 = 1444 \equiv 444$ et $200 \times 38 = 7600 \equiv 600 \pmod{1000}$. La condition devient $600t + 444 \equiv 444$, soit $600t \equiv 0 \pmod{1000}$, soit $3t \equiv 0 \pmod 5$, donc $t \equiv 0 \pmod 5$. Avec $1 \leqslant t \leqslant 9$ : $t = 5$, et

$$n = 538$$

*Cas $r = 62$.* $r^2 = 3844 \equiv 844$ et $200 \times 62 = 12\,400 \equiv 400 \pmod{1000}$. La condition devient $400t + 844 \equiv 444$, soit $400t \equiv 600 \pmod{1000}$, soit $2t \equiv 3 \pmod 5$, donc $t \equiv 4 \pmod 5$. Avec $1 \leqslant t \leqslant 9$ : $t = 4$ ou $t = 9$, et

$$n = 462 \qquad \text{ou} \qquad n = 962$$

*Cas $r = 88$.* $r^2 = 7744 \equiv 744$ et $200 \times 88 = 17\,600 \equiv 600 \pmod{1000}$. La condition devient $600t + 744 \equiv 444$, soit $600t \equiv -300 \equiv 700 \pmod{1000}$, soit $6t \equiv 7 \pmod{10}$. Le membre de gauche est pair, celui de droite impair : **impossible**.

**Conclusion. Il y a exactement trois nombres de trois chiffres dont le carré se termine par $444$ :**

$$462, \qquad 538, \qquad 962$$

Vérification :

$$462^2 = 213\,444 \qquad 538^2 = 289\,444 \qquad 962^2 = 925\,444$$

## Going further

Peut-on trouver un carré qui se termine par $4444$ ? La réponse est non, et la raison tient en deux lignes. Un nombre dont le carré finit par $4$ est pair, donc $n = 2m$ et $n^2 = 4m^2$. Si $n^2$ se terminait par $4444$, alors $4m^2 \equiv 4444 \pmod{10\,000}$, ce qui équivaut à $m^2 \equiv 1111 \pmod{2500}$. Comme $2500$ est un multiple de $4$, cela donnerait $m^2 \equiv 1111 \equiv 3 \pmod 4$. Or le carré d'un entier ne peut avoir pour reste modulo $4$ que $0$ ou $1$.

Autrement dit, $444$ est la plus longue suite de $4$ par laquelle un carré peut se terminer.
