---
id: "0601"
title: "Calculs avec des puissances"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [puissances, priorites, calcul]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Algèbre + Problèmes issus des stages Animath »"
  reference: "Algebre.pdf, exercice 1"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Algebre.pdf"
---

## Statement

Calculez :

a) $1^3 + 0^{2022} + 2021^1 + 2022^1$

b) $5^2 - 10^1 + 8 : 4 + 3^0 + 0^5$

c) $2^3 \cdot 2^4$

d) $5^2 \cdot 5^1 \cdot 5^0$

e) $5^{17} : 5^{16}$

f) $(10^7 \cdot 10^3) : 10^8$

g) $10^7 \cdot (10^3 : 10^8)$

## Hints

1. Que valent $a^1$ et $a^0$ quand $a$ n'est pas nul ? Et $0^n$ quand $n \ge 1$ ?
2. Pour c) à g), il n'y a aucun grand nombre à écrire : quand la base est la même, $a^m \cdot a^n = a^{m+n}$ et $a^m : a^n = a^{m-n}$.
3. Dans b), on calcule d'abord les puissances, puis les multiplications et divisions, puis seulement les additions et les soustractions.

## Solution

**a)** $1^3 = 1$, $0^{2022} = 0$, $2021^1 = 2021$ et $2022^1 = 2022$, donc

$$1 + 0 + 2021 + 2022 = 4044.$$

**b)** $5^2 = 25$, $10^1 = 10$, $8 : 4 = 2$, $3^0 = 1$ et $0^5 = 0$, donc

$$25 - 10 + 2 + 1 + 0 = 18.$$

**c)** Même base 2 : $2^3 \cdot 2^4 = 2^{3+4} = 2^7 = 128$.

**d)** Même base 5 : $5^2 \cdot 5^1 \cdot 5^0 = 5^{2+1+0} = 5^3 = 125$.

**e)** $5^{17} : 5^{16} = 5^{17-16} = 5^1 = 5$.

**f)** $(10^7 \cdot 10^3) : 10^8 = 10^{10} : 10^8 = 10^2 = 100$.

**g)** $10^7 \cdot (10^3 : 10^8) = 10^7 \cdot 10^{-5} = 10^{7-5} = 10^2 = 100$.

Réponses : $4044$ ; $18$ ; $128$ ; $125$ ; $5$ ; $100$ ; $100$.

Les deux dernières questions donnent le même résultat : les parenthèses changent l'ordre des
calculs, mais pas le nombre obtenu ici.
