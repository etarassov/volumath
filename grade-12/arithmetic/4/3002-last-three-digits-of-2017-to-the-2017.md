---
id: "3002"
title: "Les trois derniers chiffres de 2017^2017"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, puissances, theoreme-des-restes-chinois, chiffres]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Euler's Phi Function"
  reference: "Handout-3338-2918.pdf, exercice 18"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3338-2918.pdf"
---

## Statement

Quels sont les trois derniers chiffres du nombre $2017^{2017}$ ?

On pourra utiliser le théorème d'Euler : si $\mathrm{PGCD}(a, n) = 1$, alors
$a^{\varphi(n)} \equiv 1 \pmod{n}$, où $\varphi(n)$ est le nombre d'entiers de $1$ à $n$
premiers avec $n$. On rappelle que $\varphi(5^3) = 5^3 - 5^2 = 100$.

## Hints

1. « Les trois derniers chiffres » veut dire « le reste modulo $1000$ ».
2. $1000 = 8 \times 125$, et $8$ et $125$ sont premiers entre eux. Traite les deux modules séparément, puis recolle.
3. Modulo $8$, le nombre $2017$ est très simple.
4. Modulo $125$, on a $2017 \equiv 17$, et le théorème d'Euler donne $17^{100} \equiv 1$. Que vaut alors $2017$ modulo $100$ ?
5. Pour calculer $17^{17}$ modulo $125$, élève au carré de proche en proche : $17^2$, $17^4$, $17^8$, $17^{16}$.

## Solution

Chercher les trois derniers chiffres, c'est chercher le reste modulo $1000$. Comme
$1000 = 8 \times 125$ avec $\mathrm{PGCD}(8, 125) = 1$, on calcule séparément modulo $8$ et
modulo $125$.

**Modulo 8.**

$2017 = 8 \times 252 + 1$, donc $2017 \equiv 1 \pmod 8$ et par conséquent

$$2017^{2017} \equiv 1 \pmod 8.$$

**Modulo 125.**

$2017 = 16 \times 125 + 17$, donc $2017 \equiv 17 \pmod{125}$. Comme $17$ est premier avec
$125$, le théorème d'Euler donne $17^{100} \equiv 1 \pmod{125}$.

Or $2017 = 20 \times 100 + 17$, donc

$$17^{2017} = \left(17^{100}\right)^{20} \times 17^{17} \equiv 17^{17} \pmod{125}.$$

On calcule $17^{17}$ par carrés successifs, toujours modulo $125$ :

$$17^2 = 289 = 2 \times 125 + 39 \equiv 39,$$
$$17^4 \equiv 39^2 = 1521 = 12 \times 125 + 21 \equiv 21,$$
$$17^8 \equiv 21^2 = 441 = 3 \times 125 + 66 \equiv 66,$$
$$17^{16} \equiv 66^2 = 4356 = 34 \times 125 + 106 \equiv 106.$$

Enfin $17^{17} = 17^{16} \times 17 \equiv 106 \times 17 = 1802 = 14 \times 125 + 52 \equiv 52$.

Donc $2017^{2017} \equiv 52 \pmod{125}$.

**On recolle.**

On cherche l'entier $x$ entre $0$ et $999$ tel que $x \equiv 1 \pmod 8$ et
$x \equiv 52 \pmod{125}$.

Écrivons $x = 125t + 52$. Modulo $8$ : $125 \equiv 5$ et $52 \equiv 4$, donc
$5t + 4 \equiv 1$, c'est-à-dire $5t \equiv -3 \equiv 5 \pmod 8$. Comme $5$ est inversible
modulo $8$, on obtient $t \equiv 1 \pmod 8$.

Avec $t = 1$ : $x = 125 + 52 = 177$.

**Conclusion.**

$$2017^{2017} \equiv 177 \pmod{1000}.$$

Les trois derniers chiffres de $2017^{2017}$ sont $1$, $7$ et $7$.
