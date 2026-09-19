---
id: "3004"
title: "6^83 + 8^83 modulo 49"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 20
tags: [congruences, binome de newton, puissances, restes]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic IV"
  reference: "Handout-3422-2965.pdf, exercice 7 (AIME 1983)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3422-2965.pdf"
---

## Statement

On pose, pour tout entier naturel $n$,

$$a_n = 6^n + 8^n.$$

Quel est le reste de la division euclidienne de $a_{83}$ par $49$ ?

## Hints

1. $49 = 7^2$. Et $6$ et $8$ sont les deux voisins de $7$.
2. Écris $6 = 7 - 1$ et $8 = 7 + 1$, puis développe avec la formule du binôme de Newton.
3. Dans le développement de $(7 \pm 1)^{83}$, tous les termes qui contiennent $7^2$ ou une puissance plus grande de $7$ sont nuls modulo $49$. Combien de termes survivent ?
4. Additionne les deux développements : beaucoup de choses se simplifient.

## Solution

**L'idée : 6 et 8 encadrent 7.**

On écrit $6 = 7 - 1$ et $8 = 7 + 1$, et on développe avec la formule du binôme :

$$8^{83} = (7+1)^{83} = \sum_{k=0}^{83} \binom{83}{k} 7^{k},
\qquad
6^{83} = (7-1)^{83} = \sum_{k=0}^{83} \binom{83}{k} 7^{k} (-1)^{83-k}.$$

Travaillons modulo $49 = 7^2$. Dès que $k \geq 2$, le terme contient $7^k$, donc un facteur
$49$ : il disparaît. Il ne reste que les termes $k = 0$ et $k = 1$ :

$$8^{83} \equiv \binom{83}{0} + \binom{83}{1} \times 7 = 1 + 83 \times 7 \pmod{49},$$

$$6^{83} \equiv \binom{83}{0}(-1)^{83} + \binom{83}{1} \times 7 \times (-1)^{82}
= -1 + 83 \times 7 \pmod{49}.$$

**On additionne.**

$$a_{83} = 6^{83} + 8^{83} \equiv (-1 + 83 \times 7) + (1 + 83 \times 7) = 2 \times 83 \times 7
= 1162 \pmod{49}.$$

Enfin $1162 = 49 \times 23 + 35$, donc

$$a_{83} \equiv 35 \pmod{49}.$$

**Conclusion.**

Le reste de la division de $6^{83} + 8^{83}$ par $49$ est $35$.

## Going further

Le même calcul avec un exposant impair $n$ quelconque donne
$a_n \equiv 14 n \pmod{49}$. On retrouve $14 \times 83 = 1162 \equiv 35$. En particulier
$a_n$ est divisible par $49$ exactement quand $n$ est un multiple impair de $7$.
