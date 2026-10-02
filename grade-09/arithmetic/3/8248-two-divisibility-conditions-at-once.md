---
id: "8248"
title: "Deux conditions de divisibilité à la fois"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, restes, multiples, ppcm]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », première partie, « TD d'arithmétique » (Éva Philippe, Rémi Lesbats), exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les entiers $n$ tels que **à la fois**

$$6 \ \text{divise} \ n - 4 \qquad \text{et} \qquad 10 \ \text{divise} \ n - 8 .$$

## Hints

1. $6$ et $10$ ne sont pas premiers entre eux, donc on ne peut pas recoller les deux conditions
   telles quelles. Casse-les en morceaux premiers : $6 = 2 \times 3$ et $10 = 2 \times 5$.
2. « $6$ divise $n-4$ » équivaut à « $2$ divise $n-4$ **et** $3$ divise $n-4$ ». Pourquoi ?
3. Traduis chaque morceau en une phrase sur $n$ : $n$ est pair, $n$ laisse tel reste par $3$,
   tel reste par $5$.
4. Il ne reste qu'à trouver les entiers de $0$ à $29$ qui vérifient les trois conditions, puis à
   conclure.

## Solution

**Réponse : les solutions sont les entiers de la forme $n = 30k + 28$, avec $k$ entier.**

**On découpe les deux conditions.**

Comme $6 = 2 \times 3$ et que $2$ et $3$ sont premiers entre eux,

$$6 \mid n-4 \quad \Longleftrightarrow \quad 2 \mid n-4 \ \text{ et } \ 3 \mid n-4 .$$

De même, comme $10 = 2 \times 5$,

$$10 \mid n-8 \quad \Longleftrightarrow \quad 2 \mid n-8 \ \text{ et } \ 5 \mid n-8 .$$

**On traduit chaque morceau.**

- $2 \mid n - 4$ : comme $4$ est pair, cela signifie que **$n$ est pair**.
- $2 \mid n - 8$ : comme $8$ est pair, cela signifie aussi que $n$ est pair. C'est la même
  condition, on ne la compte qu'une fois.
- $3 \mid n - 4$ : comme $4 = 3 + 1$, cela signifie que $3 \mid n - 1$, donc **$n$ laisse le
  reste $1$ dans la division par $3$**.
- $5 \mid n - 8$ : comme $8 = 5 + 3$, cela signifie que $5 \mid n - 3$, donc **$n$ laisse le
  reste $3$ dans la division par $5$**.

Les deux conditions de départ reviennent donc exactement aux trois conditions :

$$n \ \text{pair}, \qquad n \ \text{de reste } 1 \text{ par } 3, \qquad n \ \text{de reste } 3
\text{ par } 5 .$$

**On cherche le reste de $n$ dans la division par 30.**

Ces trois conditions ne dépendent que du reste de $n$ dans la division par
$30 = 2 \times 3 \times 5$, puisque $30$ est un multiple de $2$, de $3$ et de $5$. Il suffit donc
de chercher quel reste $r$, entre $0$ et $29$, convient.

Les entiers de $0$ à $29$ de reste $3$ par $5$ sont

$$3, \quad 8, \quad 13, \quad 18, \quad 23, \quad 28 .$$

Gardons les pairs :

$$8, \quad 18, \quad 28 .$$

Reste à tester la condition sur $3$ :

| $r$ | reste de $r$ par $3$ |
|---|---|
| $8$ | $2$ |
| $18$ | $0$ |
| $28$ | $1$ |

Seul $r = 28$ convient.

**Conclusion.**

Les entiers cherchés sont exactement ceux qui laissent le reste $28$ dans la division par $30$ :

$$n = 30k + 28, \qquad k \in \mathbb{Z} .$$

Les plus petits positifs sont $28$, $58$, $88$, $118$, ...

**Vérification pour $n = 28$.** $28 - 4 = 24 = 6 \times 4$ ✓ et $28 - 8 = 20 = 10 \times 2$ ✓.

## Going further

1. On aurait pu être tenté d'écrire directement « $n - 4$ multiple de $6$ et $n - 8$ multiple de
   $10$, donc $n$ est déterminé modulo $6 \times 10 = 60$ ». Pourquoi ce raccourci est-il faux
   ici, et quel est le bon module ?
2. Trouver tous les $n$ tels que $6$ divise $n-4$ et $10$ divise $n-7$. Que se passe-t-il ?
3. Trouver tous les $n$ tels que $4$ divise $n-1$ et $6$ divise $n-3$.
