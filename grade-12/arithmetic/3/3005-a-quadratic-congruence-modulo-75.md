---
id: "3005"
title: "Une congruence du second degré modulo 75"
grade: 12
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [congruences, carres, denombrement, nombres-premiers]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Modular Arithmetic I and Divisibility Rules"
  reference: "Handout-3277-2873.pdf, exercice 4 (réponse dans Handout-3324-2873.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3277-2873.pdf"
---

## Statement

Combien y a-t-il d'entiers $n$ tels que $1 \leq n < 500$ et

$$n^2 \equiv 6n + 66 \pmod{75} \; ?$$

## Hints

1. Fais passer tout du même côté : tu cherches les $n$ tels que $75$ divise $n^2 - 6n - 66$.
2. Modulo $75$, le nombre $66$ peut aussi s'écrire $-9$. Le polynôme devient alors remarquable.
3. Tu arrives à $75 \mid (n-3)^2$. Attention : cela **ne** veut **pas** dire $75 \mid n - 3$.
4. Décompose $75 = 3 \times 5^2$ et traite les deux facteurs premiers séparément. Si un nombre premier $p$ divise un carré, il divise le nombre lui-même.

## Solution

**Reconnaître un carré.**

La condition s'écrit $75 \mid n^2 - 6n - 66$. Or, modulo $75$,

$$-66 \equiv -66 + 75 = 9,$$

donc $n^2 - 6n - 66 \equiv n^2 - 6n + 9 = (n-3)^2 \pmod{75}$. La condition devient

$$75 \mid (n-3)^2.$$

**Attention au piège.**

On aimerait conclure $75 \mid n-3$, mais c'est faux : par exemple $(n-3) = 15$ donne
$(n-3)^2 = 225 = 3 \times 75$, et pourtant $75$ ne divise pas $15$. Il faut passer par les
facteurs premiers.

On a $75 = 3 \times 5^2$. Posons $m = n - 3$.

- $3 \mid m^2$ : comme $3$ est premier, $3 \mid m$.
- $5^2 \mid m^2$ : comme $5$ est premier, $5 \mid m$ (si $5$ ne divisait pas $m$, alors $5$ ne diviserait pas $m^2$ non plus).

Comme $3$ et $5$ sont premiers entre eux, on en déduit $15 \mid m$.

Réciproquement, si $15 \mid m$ alors $225 \mid m^2$, et comme $75 \mid 225$ on a bien
$75 \mid m^2$.

La condition est donc exactement

$$n \equiv 3 \pmod{15}.$$

**On compte.**

Les entiers cherchés sont $n = 3 + 15k$ avec $1 \leq n < 500$, c'est-à-dire

$$3, \quad 18, \quad 33, \quad \ldots$$

La contrainte $3 + 15k < 500$ donne $15k < 497$, donc $k \leq 33$. Avec $k$ allant de $0$ à
$33$, cela fait $34$ valeurs (la plus grande est $3 + 15 \times 33 = 498$).

**Conclusion.**

Il y a exactement $34$ entiers $n$ convenables.
