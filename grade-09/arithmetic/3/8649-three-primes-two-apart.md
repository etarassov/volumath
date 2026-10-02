---
id: "8649"
title: "p, p + 2 et p + 4 tous premiers"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [nombres premiers, congruences, multiples de trois]
adapted_from: null
see_also: ["0876"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercices 2 et 3 (d'après le poly d'arithmétique de Jean-Louis Tu, 3.1 et 3.2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

1. Trouver tous les entiers $p$ tels que $p$ **et** $p + 1$ soient tous les deux premiers.
2. Trouver tous les entiers $p$ tels que $p$, $p + 2$ **et** $p + 4$ soient tous les trois premiers.

## Hints

1. Pour la première question : parmi deux entiers consécutifs, que peut-on dire de la parité ?
2. Un nombre pair premier, il n'y en a qu'un. Lequel ?
3. Pour la deuxième question, essaie d'abord à la main : $3, 5, 7$ marche. Et $5, 7, 9$ ? Et $7, 9, 11$ ? Et $11, 13, 15$ ?
4. Tu vas voir qu'à chaque fois un des trois nombres est un multiple de $3$. Ce n'est pas un hasard : regarde les restes de $p$, $p+2$ et $p+4$ dans la division par $3$.
5. Les trois restes $p$, $p+2$, $p+4$ modulo $3$ sont $r$, $r+2$ et $r+4 \equiv r+1$. Que remarques-tu ?

## Solution

### 1. Deux nombres premiers consécutifs

Parmi deux entiers consécutifs $p$ et $p+1$, l'un est pair. Un nombre pair n'est premier que s'il vaut $2$ (tout autre nombre pair est divisible par $2$ sans lui être égal).

- Si $p$ est pair : $p = 2$, et alors $p + 1 = 3$ qui est premier. Ce couple convient.
- Si $p + 1$ est pair : $p + 1 = 2$, donc $p = 1$, qui n'est pas premier. Ce cas ne donne rien.

**Réponse : le seul cas est $p = 2$, avec le couple $(2, 3)$.**

### 2. Trois nombres premiers de deux en deux

Regardons les restes dans la division par $3$. Notons $r$ le reste de $p$ ; il vaut $0$, $1$ ou $2$.

- Le reste de $p + 2$ est celui de $r + 2$.
- Le reste de $p + 4$ est celui de $r + 4$, c'est-à-dire de $r + 1$, puisque $4 = 3 + 1$.

Dressons le tableau :

| reste de $p$ | reste de $p+2$ | reste de $p+4$ |
|---|---|---|
| $0$ | $2$ | $1$ |
| $1$ | $0$ | $2$ |
| $2$ | $1$ | $0$ |

Dans les trois lignes, **un des trois nombres a un reste nul** : quel que soit $p$, l'un des trois nombres $p$, $p+2$, $p+4$ est un multiple de $3$.

Or un multiple de $3$ n'est premier que s'il vaut $3$ lui-même. Il faut donc que celui des trois qui est multiple de $3$ soit égal à $3$.

- Si $p = 3$ : les trois nombres sont $3, 5, 7$, tous premiers. **Cela marche.**
- Si $p + 2 = 3$ : alors $p = 1$, qui n'est pas premier. Non.
- Si $p + 4 = 3$ : alors $p = -1$. Non.

**Réponse : le seul cas est $p = 3$, avec le triplet $(3, 5, 7)$.**

## Going further

La même idée, avec le même tableau, montre qu'il n'existe pas quatre nombres premiers de la forme $p$, $p+2$, $p+4$, $p+6$ autres qu'un cas de bord à vérifier.

En revanche, la question des couples $(p, p+2)$ tous deux premiers, appelés **nombres premiers jumeaux** ($11$ et $13$, $17$ et $19$, $101$ et $103$\ldots), est tout autre chose : on ignore encore aujourd'hui s'il en existe une infinité. C'est une des questions ouvertes les plus célèbres des mathématiques.
