---
id: "8251"
title: "Quand 35 divise a³ − 1"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, cubes, restes, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », entraînement de mi-parcours, exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Quels sont les entiers $a$ compris entre $1$ et $105$ tels que $35$ divise $a^3 - 1$ ?

## Hints

1. $35 = 5 \times 7$, et $5$ et $7$ sont premiers entre eux. La condition se coupe donc en deux.
2. Pour la condition modulo $5$, dresse la table des cubes : calcule $a^3$ modulo $5$ pour
   $a \equiv 0, 1, 2, 3, 4$.
3. Fais de même modulo $7$. Cette fois tu trouveras **trois** restes qui conviennent, pas un
   seul.
4. Croise les deux conditions : combien de restes modulo $35$ obtiens-tu ?
5. $105 = 3 \times 35$. Combien d'entiers de chaque reste y a-t-il entre $1$ et $105$ ?

## Solution

**Réponse : les neuf entiers $1, 11, 16, 36, 46, 51, 71, 81, 86$.**

**On coupe la condition en deux.**

Comme $35 = 5 \times 7$ et que $5$ et $7$ sont premiers entre eux,

$$35 \mid a^3 - 1 \quad \Longleftrightarrow \quad 5 \mid a^3 - 1 \ \text{ et } \ 7 \mid a^3 - 1 .$$

**La table des cubes modulo 5.**

| $a \bmod 5$ | $0$ | $1$ | $2$ | $3$ | $4$ |
|---|---|---|---|---|---|
| $a^3 \bmod 5$ | $0$ | $1$ | $3$ | $2$ | $4$ |

(Par exemple $2^3 = 8 = 5 + 3$, et $3^3 = 27 = 25 + 2$.)

On lit : $a^3 \equiv 1 \pmod 5$ exactement quand $a \equiv 1 \pmod 5$.

**La table des cubes modulo 7.**

| $a \bmod 7$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $a^3 \bmod 7$ | $0$ | $1$ | $1$ | $6$ | $1$ | $6$ | $6$ |

(Par exemple $2^3 = 8 = 7+1$, $3^3 = 27 = 3 \times 7 + 6$, $4^3 = 64 = 9 \times 7 + 1$.)

Cette fois trois restes conviennent :

$$a^3 \equiv 1 \pmod 7 \quad \Longleftrightarrow \quad a \equiv 1,\ 2 \ \text{ou} \ 4 \pmod 7 .$$

**On croise.**

Il faut donc $a \equiv 1 \pmod 5$, et en même temps $a \equiv 1$, $2$ ou $4$ modulo $7$. Les
entiers de $1$ à $35$ qui laissent le reste $1$ modulo $5$ sont

$$1,\ 6,\ 11,\ 16,\ 21,\ 26,\ 31 .$$

Regardons leur reste modulo $7$ :

| $a$ | $1$ | $6$ | $11$ | $16$ | $21$ | $26$ | $31$ |
|---|---|---|---|---|---|---|---|
| $a \bmod 7$ | $1$ | $6$ | $4$ | $2$ | $0$ | $5$ | $3$ |
| convient ? | **oui** | non | **oui** | **oui** | non | non | non |

Il y a donc exactement **trois** restes modulo $35$ qui conviennent :

$$a \equiv 1,\ 11 \ \text{ou} \ 16 \pmod{35} .$$

**On compte entre 1 et 105.**

Comme $105 = 3 \times 35$, chaque reste modulo $35$ est représenté exactement trois fois entre
$1$ et $105$ :

| reste | les trois valeurs |
|---|---|
| $1$ | $1$, $36$, $71$ |
| $11$ | $11$, $46$, $81$ |
| $16$ | $16$, $51$, $86$ |

**Conclusion.** Il y a $9$ entiers solutions entre $1$ et $105$ :

$$1,\quad 11,\quad 16,\quad 36,\quad 46,\quad 51,\quad 71,\quad 81,\quad 86 .$$

**Vérification sur un cas.** $11^3 - 1 = 1331 - 1 = 1330 = 35 \times 38$. ✓

## Going further

1. Pourquoi la table modulo $5$ donne-t-elle **une** solution et celle modulo $7$ **trois** ?
   Comparer $5 - 1 = 4$ et $7 - 1 = 6$ avec l'exposant $3$.
2. Combien y a-t-il d'entiers $a$ entre $1$ et $105$ tels que $35$ divise $a^3 + 1$ ?
3. Reprendre la question avec $a^2 - 1$ à la place de $a^3 - 1$ : combien de restes modulo $35$
   conviennent cette fois ?
