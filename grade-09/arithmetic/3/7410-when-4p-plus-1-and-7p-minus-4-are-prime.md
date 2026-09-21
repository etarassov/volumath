---
id: "7410"
title: "Quand 4p + 1 et 7p − 4 sont premiers tous les deux"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [nombres-premiers, congruences, multiples-de-trois]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au Trésor », exercices des débutants, exercice 6"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Trouver tous les nombres premiers $p$ tels que $4p + 1$ et $7p - 4$ soient, eux aussi, des nombres
premiers.

## Hints

1. Fais un tableau pour $p = 2, 3, 5, 7, 11, 13$. Combien de solutions trouves-tu ?
2. Un entier laisse un reste de $0$, $1$ ou $2$ dans la division par $3$. Traite ces trois cas
   pour $p$, et regarde à chaque fois les restes de $4p+1$ et de $7p-4$.
3. Tu devrais trouver que l'un des trois nombres $p$, $4p+1$, $7p-4$ est toujours un multiple de
   $3$. Un multiple de $3$ qui est premier, c'est $3$ lui-même : lequel des trois peut-il l'être ?

## Solution

**On cherche d'abord.**

| $p$ | $4p+1$ | $7p-4$ | |
|---|---|---|---|
| $2$ | $9 = 3 \times 3$ | $10$ | non |
| $3$ | $13$ | $17$ | **oui** |
| $5$ | $21 = 3 \times 7$ | $31$ | non |
| $7$ | $29$ | $45 = 3 \times 15$ | non |
| $11$ | $45$ | $73$ | non |
| $13$ | $53$ | $87 = 3 \times 29$ | non |

Il semble que $p = 3$ soit la seule solution, et qu'à chaque fois un multiple de $3$ vienne tout
gâcher. Démontrons-le.

**Le raisonnement modulo 3.**

Tout entier laisse dans la division par $3$ un reste égal à $0$, $1$ ou $2$. Examinons les trois
cas.

- **Si $p$ est multiple de $3$.** Alors $p$ est un multiple de $3$.
- **Si $p$ laisse le reste $1$.** Écrivons $p = 3k + 1$. Alors
  $$4p + 1 = 4(3k+1) + 1 = 12k + 5 = 12k + 3 + 2,$$
  ce qui laisse le reste $2$, et
  $$7p - 4 = 7(3k+1) - 4 = 21k + 3 = 3(7k+1),$$
  qui est un multiple de $3$.
- **Si $p$ laisse le reste $2$.** Écrivons $p = 3k + 2$. Alors
  $$4p + 1 = 4(3k+2) + 1 = 12k + 9 = 3(4k+3),$$
  qui est un multiple de $3$.

**Dans tous les cas, au moins l'un des trois nombres $p$, $4p+1$, $7p-4$ est un multiple de $3$.**

**On conclut.**

Les trois nombres doivent être premiers. Or le seul nombre premier qui soit multiple de $3$ est
$3$ lui-même. Donc l'un des trois nombres $p$, $4p+1$, $7p-4$ vaut $3$.

- $4p + 1 = 3$ donnerait $p = \tfrac{1}{2}$ : impossible.
- $7p - 4 = 3$ donnerait $p = 1$, qui n'est pas premier.
- Il reste donc $p = 3$.

**Vérification.** Pour $p = 3$ : $4p + 1 = 13$ et $7p - 4 = 17$. Ce sont bien deux nombres
premiers.

**Conclusion : la seule solution est $\boxed{p = 3}$.**

## Going further

Trouver de même tous les nombres premiers $p$ tels que $p$, $p+2$ et $p+4$ soient tous les trois
premiers.
