---
id: "13603"
title: "Des nombres à deux chiffres qui ne partagent aucun chiffre de même rang"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [tiroirs, chiffres, demonstration]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2009 (test de sélection du stage olympique de Grésillon, 4 juin 2009)"
  reference: "2017-09_coupe_printemps_2009_3.pdf, épreuve collégiens, exercice 3 (commun aux trois épreuves) ; corrigé 2017-09_coupe_printemps_2009_corrige.pdf, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2009_3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2009_3.pdf"
---

## Statement

On dit que deux nombres à deux chiffres sont **étrangers** s'ils ont des chiffres des dizaines différents **et** des chiffres des unités différents. Par exemple $37$ et $52$ sont étrangers, mais $37$ et $57$ ne le sont pas (même chiffre des unités), ni $37$ et $31$ (même chiffre des dizaines).

a) On choisit $11$ nombres à deux chiffres, tous différents. Prouver qu'on peut toujours en trouver deux qui sont étrangers.

b) On choisit $41$ nombres à deux chiffres, tous différents. Prouver qu'on peut toujours en trouver cinq qui sont étrangers deux à deux.

## Hints

1. Avec $10$ nombres, ce n'est pas toujours possible : regarde $10, 11, 12, \ldots, 19$. Le nombre $11$ fait penser à des « tiroirs » : on cherche $10$ tiroirs.
2. On veut ranger les $90$ nombres de $10$ à $99$ dans $10$ tiroirs, de sorte que deux nombres d'un même tiroir soient toujours étrangers. Chaque tiroir contiendra $9$ nombres.
3. Commence un tiroir par $11, 22, 33, \ldots, 99$. Un autre par $12, 23, 34, \ldots, 89$, et il manque un nombre de dizaine $9$ : lequel faut-il ajouter pour continuer « en tournant » ?
4. Dans un tiroir, on passe d'un nombre au suivant en ajoutant $1$ aux deux chiffres, et on remplace $10$ par $0$ pour le chiffre des unités. Pour b), si chaque tiroir contenait au plus $4$ des nombres choisis, combien en aurait-on au plus ?

## Solution

**Les dix tiroirs.** Pour un nombre à deux chiffres, on regarde de combien il faut avancer à partir du chiffre des dizaines pour arriver au chiffre des unités, en comptant « en tournant » sur les chiffres $0, 1, \ldots, 9$ (après $9$ vient $0$). Par exemple, pour $37$ on avance de $4$ (de $3$ à $7$), pour $82$ on avance de $4$ aussi ($8 \to 9 \to 0 \to 1 \to 2$), et pour $55$ on avance de $0$.

Ce nombre de pas est entre $0$ et $9$. On range chaque nombre dans le tiroir correspondant. Cela donne dix tiroirs :

| Pas | Nombres du tiroir |
|---|---|
| $0$ | $11, 22, 33, 44, 55, 66, 77, 88, 99$ |
| $1$ | $12, 23, 34, 45, 56, 67, 78, 89, 90$ |
| $2$ | $13, 24, 35, 46, 57, 68, 79, 80, 91$ |
| $3$ | $14, 25, 36, 47, 58, 69, 70, 81, 92$ |
| $4$ | $15, 26, 37, 48, 59, 60, 71, 82, 93$ |
| $5$ | $16, 27, 38, 49, 50, 61, 72, 83, 94$ |
| $6$ | $17, 28, 39, 40, 51, 62, 73, 84, 95$ |
| $7$ | $18, 29, 30, 41, 52, 63, 74, 85, 96$ |
| $8$ | $19, 20, 31, 42, 53, 64, 75, 86, 97$ |
| $9$ | $10, 21, 32, 43, 54, 65, 76, 87, 98$ |

Chaque nombre de $10$ à $99$ est dans un tiroir et un seul.

**Deux nombres d'un même tiroir sont étrangers.** Prenons deux nombres différents d'un même tiroir.

- S'ils avaient le même chiffre des dizaines, comme on avance du même nombre de pas, ils auraient aussi le même chiffre des unités. Ce serait le même nombre, ce qui est faux.
- S'ils avaient le même chiffre des unités, en reculant du même nombre de pas, ils auraient le même chiffre des dizaines. Encore le même nombre, impossible.

Donc deux nombres différents d'un même tiroir ont des dizaines différentes et des unités différentes : ils sont étrangers. On le vérifie d'ailleurs sur chaque ligne du tableau : dans une ligne, les dizaines sont toutes différentes, et les unités aussi.

**a)** On a choisi $11$ nombres et il n'y a que $10$ tiroirs. Ils ne peuvent pas être tous dans des tiroirs différents : deux d'entre eux sont dans le même tiroir. Ces deux nombres sont étrangers.

**b)** On a choisi $41$ nombres. Si chacun des $10$ tiroirs contenait au plus $4$ d'entre eux, on aurait au plus $10 \times 4 = 40$ nombres, moins que $41$. Donc un tiroir contient au moins $5$ des nombres choisis. Deux quelconques de ces cinq nombres sont dans le même tiroir, donc étrangers.

**Conclusion.** Parmi $11$ nombres à deux chiffres distincts, il y en a toujours deux étrangers ; parmi $41$, il y en a toujours cinq étrangers deux à deux.

## Going further

Les nombres $11$ et $41$ ne peuvent pas être diminués. Avec les $10$ nombres $10, 11, \ldots, 19$, deux quelconques ont le même chiffre des dizaines. Avec les $40$ nombres $10, 11, \ldots, 49$, il n'y a que quatre chiffres des dizaines possibles, donc parmi cinq d'entre eux, deux ont la même dizaine.
