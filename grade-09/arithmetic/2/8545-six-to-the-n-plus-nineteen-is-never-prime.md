---
id: "8545"
title: "6ⁿ + 19 n'est jamais premier"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [nombre-premier, chiffre-des-unites, puissances, divisibilite]
adapted_from: null
see_also: ["8430"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Entraînement de fin de parcours » du Groupe B, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Pour quels entiers naturels $n$ le nombre $6^n + 19$ est-il un nombre premier ?

## Hints

1. Calcule $6^n + 19$ pour $n = 0, 1, 2, 3$. Que remarques-tu sur ces quatre nombres ?
2. Regarde le chiffre des unités de $6^n$. Calcule $6$, $6^2$, $6^3$, $6^4$…
3. Une fois le chiffre des unités de $6^n + 19$ connu, tu sais par quel nombre il est toujours divisible. Attention : être divisible par $5$ ne suffit pas à ne pas être premier. Que faut-il dire de plus ?

## Solution

**Un peu d'expérimentation.**

$$6^0 + 19 = 20, \quad 6^1 + 19 = 25, \quad 6^2 + 19 = 55, \quad 6^3 + 19 = 235 .$$

Tous ces nombres se terminent par $0$ ou $5$ : ils sont divisibles par $5$. Démontrons que
c'est toujours le cas.

**Le chiffre des unités de $6^n$.** Pour $n \geqslant 1$, le chiffre des unités de $6^n$ est
toujours $6$. En effet :

- c'est vrai pour $6^1 = 6$ ;
- si $6^n$ se termine par $6$, alors $6^{n+1} = 6 \times 6^n$ se termine par le chiffre des
  unités de $6 \times 6 = 36$, c'est-à-dire par $6$.

De proche en proche, tous les $6^n$ avec $n \geqslant 1$ se terminent par $6$.

**La conclusion pour $n \geqslant 1$.** Le nombre $6^n + 19$ se termine alors par le chiffre
des unités de $6 + 19 = 25$, c'est-à-dire par $5$. Il est donc divisible par $5$.

De plus $6^n + 19 \geqslant 6 + 19 = 25 > 5$. Ce nombre a donc au moins trois diviseurs
positifs : $1$, $5$ et lui-même, qui sont tous différents. Il n'est pas premier.

**Le cas $n = 0$.** On a $6^0 + 19 = 1 + 19 = 20 = 4 \times 5$, qui n'est pas premier non plus.

**Conclusion.** Il n'existe **aucun** entier naturel $n$ pour lequel $6^n + 19$ est premier.

## Going further

Avec le langage des congruences, tout tient en une ligne : $6 \equiv 1 \pmod 5$, donc
$6^n \equiv 1 \pmod 5$, donc $6^n + 19 \equiv 20 \equiv 0 \pmod 5$.
