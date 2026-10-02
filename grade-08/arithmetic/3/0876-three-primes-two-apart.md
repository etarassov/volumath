---
id: "0876"
title: "Trois nombres premiers de deux en deux"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres-premiers, divisibilite, multiples-de-3, restes]
adapted_from: null
see_also: ["7901", "8649"]
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 1, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

Trouver tous les entiers $p$ tels que les trois entiers $p$, $p+2$ et $p+4$ soient tous les trois des nombres premiers.

*Rappel : un nombre premier est un entier supérieur ou égal à $2$ qui n'est divisible que par $1$ et par lui-même.*

## Hints

1. Commence par essayer : $p = 2$, puis $3$, puis $5$, puis $7$, puis $11$. Combien de fois cela marche-t-il ?
2. Trois nombres qui avancent de $2$ en $2$ : regarde leurs restes dans la division par $3$.
3. Tout entier s'écrit $3k$, $3k+1$ ou $3k+2$. Dans chacun de ces trois cas, lequel des nombres $p$, $p+2$, $p+4$ est un multiple de $3$ ?
4. Un multiple de $3$ ne peut être un nombre premier que dans un seul cas : lequel ?

## Solution

**La réponse : $p = 3$, et c'est le seul.**

Pour $p = 3$ on obtient $3$, $5$ et $7$, qui sont bien trois nombres premiers. Il reste à montrer qu'il n'y a pas d'autre possibilité.

**L'idée : parmi trois nombres qui avancent de deux en deux, il y a toujours un multiple de $3$.**

Divisons $p$ par $3$. Le reste vaut $0$, $1$ ou $2$, donc $p$ s'écrit $3k$, $3k+1$ ou $3k+2$, avec $k$ un entier. Examinons les trois cas.

- Si $p = 3k$ : alors $p$ est un multiple de $3$.
- Si $p = 3k+1$ : alors $p + 2 = 3k + 3 = 3(k+1)$ est un multiple de $3$.
- Si $p = 3k+2$ : alors $p + 4 = 3k + 6 = 3(k+2)$ est un multiple de $3$.

Dans tous les cas, **l'un des trois nombres $p$, $p+2$, $p+4$ est un multiple de $3$.**

**On conclut.** Ce multiple de $3$ doit être un nombre premier. Or un multiple de $3$ qui est premier n'a pas le choix : ses diviseurs sont $1$ et lui-même, et $3$ est l'un de ses diviseurs, donc il vaut exactement $3$.

Regardons donc lequel des trois vaut $3$ :

- si $p = 3$, les trois nombres sont $3$, $5$, $7$ : tous premiers, cela convient ;
- si $p + 2 = 3$, alors $p = 1$, qui n'est pas un nombre premier ;
- si $p + 4 = 3$, alors $p = -1$, qui n'est pas un nombre premier non plus.

**Conclusion : le seul entier qui convient est $p = 3$.**

## Going further

Avec deux nombres seulement, la question change complètement. Les couples de nombres premiers qui ne diffèrent que de $2$, comme $(3, 5)$, $(5, 7)$, $(11, 13)$, $(17, 19)$, $(101, 103)$, s'appellent des **nombres premiers jumeaux**. On en connaît d'énormes, mais personne ne sait aujourd'hui s'il en existe une infinité : c'est l'une des questions ouvertes les plus célèbres des mathématiques. Notre exercice montre que le même jeu avec trois nombres, lui, s'arrête tout de suite.
