---
id: "8551"
title: "Un multiple de n qui ne s'écrit qu'avec des 0 et des 1"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [principe-des-tiroirs, divisibilite, ecriture-decimale, reste]
adapted_from: null
see_also: ["1217"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soit $n$ un entier strictement positif.

Démontrer qu'il existe un multiple de $n$, strictement positif, dont l'écriture décimale ne
comporte que des chiffres $0$ et $1$, et qui possède au plus $n$ chiffres.

## Hints

1. Comme souvent, il vaut mieux fabriquer des candidats et regarder leurs restes que de chercher directement le multiple.
2. Considère les nombres $0$, $1$, $11$, $111$, …, formés uniquement de chiffres $1$. Combien faut-il en prendre pour que le principe des tiroirs s'applique modulo $n$ ?
3. Si deux de ces nombres ont le même reste, leur différence est un multiple de $n$. À quoi ressemble cette différence ?

## Solution

**Les candidats.** Posons

$$r_0 = 0, \quad r_1 = 1, \quad r_2 = 11, \quad r_3 = 111, \quad \ldots, \quad
r_n = \underbrace{11 \cdots 1}_{n \text{ chiffres}} ,$$

c'est-à-dire que $r_i$ est le nombre formé de $i$ chiffres $1$ (et $r_0 = 0$).

Cela fait $n + 1$ nombres.

**Le principe des tiroirs.** Rangeons ces $n+1$ nombres selon leur reste dans la division par
$n$. Il n'y a que $n$ restes possibles ($0, 1, \ldots, n-1$), donc deux de ces nombres ont le
même reste : il existe $i < j$ tels que $r_i$ et $r_j$ aient le même reste modulo $n$.

**La différence.** Alors $r_j - r_i$ est un multiple de $n$. Calculons à quoi il ressemble :

$$r_j = \underbrace{11 \cdots 1}_{j} \qquad \text{et} \qquad
r_i = \underbrace{11 \cdots 1}_{i} ,$$

donc, en posant la soustraction, les $i$ derniers chiffres $1$ s'annulent et il reste

$$r_j - r_i = \underbrace{11 \cdots 1}_{j - i} \underbrace{00 \cdots 0}_{i} .$$

Ce nombre ne s'écrit qu'avec des $0$ et des $1$. Il est strictement positif, puisque
$j > i$. Enfin, il possède exactement $j$ chiffres, et $j \leqslant n$.

**Conclusion.** Le nombre $r_j - r_i$ est un multiple de $n$, strictement positif, écrit
uniquement avec des $0$ et des $1$, et d'au plus $n$ chiffres.

## Going further

Par exemple pour $n = 7$ : les restes de $0, 1, 11, 111, 1111, 11111, 111111, 1111111$
modulo $7$ sont $0, 1, 4, 6, 5, 2, 0, 1$. Les nombres $0$ et $111111$ ont le même reste, donc
$111111$ est un multiple de $7$ : en effet $111111 = 7 \times 15873$.
