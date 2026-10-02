---
id: "11231"
title: "Trois couleurs pour les entiers relatifs"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [coloriage, entiers, periodicite, divisibilite, absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 5 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-5.pdf, Exercices du groupe A, exercice 8 ; corrigé 2017-10_ofm-2014-2015-envoi-5-solutions.pdf (le corrigé écrit « x + a » au lieu de « n + a » dans sa première étape)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-5.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers relatifs tels que $a + b$ n'est pas divisible par $3$.

Montrer qu'il est impossible de colorier chaque entier relatif avec l'une de trois couleurs de
sorte que, pour tout entier relatif $n$, les trois nombres $n$, $n + a$ et $n + b$ soient de trois
couleurs différentes.

## Hints

1. Raisonne par l'absurde : suppose qu'un tel coloriage existe. Regarde les trois nombres
   $n$, $n + a$, $n + b$, puis les trois nombres qui commencent par $n + a$, puis ceux qui commencent
   par $n + b$. De quelle couleur est $n + a + b$ ?
2. Déduis-en que $n + p(a + b)$ a la même couleur que $n$, pour tout entier $p$.
3. Montre de même que $n$, $n + a$ et $n + 2a$ ont trois couleurs différentes, puis que $n + 3a$ a la
   même couleur que $n$.
4. Quelle est la couleur du nombre $a(a + b)$ ? Calcule-la de deux façons.

## Solution

Raisonnons par l'absurde, et supposons qu'un tel coloriage existe. Pour un entier $n$, appelons
**triplet de $n$** les trois nombres $n$, $n + a$, $n + b$ : d'après l'hypothèse, ils ont trois
couleurs différentes. Comme il n'y a que trois couleurs, chaque couleur apparaît exactement une fois
dans un triplet.

**Étape 1. Le nombre $n + a + b$ a la même couleur que $n$.** Soit $n$ un entier.

- Le triplet de $n + a$ est formé de $n + a$, $n + 2a$ et $n + a + b$. Donc $n + a + b$ n'a pas la
  couleur de $n + a$.
- Le triplet de $n + b$ est formé de $n + b$, $n + a + b$ et $n + 2b$. Donc $n + a + b$ n'a pas la
  couleur de $n + b$.

Or $n$, $n + a$ et $n + b$ utilisent les trois couleurs. La seule couleur qui reste pour
$n + a + b$ est donc celle de $n$.

Ainsi, ajouter $a + b$ ne change pas la couleur. Retrancher $a + b$ non plus : $n - (a + b)$ a la
couleur de $n - (a + b) + (a + b) = n$. En recommençant autant de fois qu'il le faut, on obtient :
**pour tout entier $n$ et pour tout entier relatif $p$, le nombre $n + p(a + b)$ a la même couleur
que $n$.**

**Étape 2. Ajouter $3a$ ne change pas la couleur.** Soit $n$ un entier.

- Dans le triplet de $n$, les nombres $n$ et $n + a$ ont des couleurs différentes.
- Dans le triplet de $n + a$, formé de $n + a$, $n + 2a$ et $n + a + b$, le nombre $n + 2a$ n'a ni
  la couleur de $n + a$, ni celle de $n + a + b$, qui est la couleur de $n$ d'après l'étape 1.

Donc **$n$, $n + a$ et $n + 2a$ ont trois couleurs différentes**, et ceci pour tout entier $n$.

Appliquons ce résultat à $n + a$ : les nombres $n + a$, $n + 2a$ et $n + 3a$ ont trois couleurs
différentes. Donc $n + 3a$ n'a ni la couleur de $n + a$, ni celle de $n + 2a$ : c'est la couleur de
$n$. Comme à l'étape 1, on en déduit que **$n + 3qa$ a la même couleur que $n$, pour tout entier
relatif $q$.**

**Étape 3. La contradiction.** Comme $a + b$ n'est pas divisible par $3$, on peut écrire
$a + b = 3q + r$, avec $q$ un entier relatif et $r$ égal à $1$ ou à $2$. Cherchons la couleur du
nombre $a(a + b)$ de deux façons.

- D'après l'étape 1 avec $n = 0$ et $p = a$, le nombre $a(a + b)$ a la couleur de $0$.
- D'autre part, $a(a + b) = ra + 3qa$. D'après l'étape 2 avec $n = ra$, le nombre $a(a + b)$ a la
  couleur de $ra$, c'est-à-dire de $a$ si $r = 1$, ou de $2a$ si $r = 2$.

Donc $0$ a la même couleur que $a$, ou la même couleur que $2a$. Mais d'après l'étape 2 avec
$n = 0$, les nombres $0$, $a$ et $2a$ ont trois couleurs différentes. C'est une contradiction.

**Conclusion : quand $a + b$ n'est pas divisible par $3$, un tel coloriage n'existe pas.**

## Going further

- L'hypothèse sert vraiment. Pour $a = 1$ et $b = 2$, on a $a + b = 3$, et il suffit de colorier
  chaque entier selon son reste dans la division par $3$ : les nombres $n$, $n + 1$ et $n + 2$ ont
  trois restes différents. Plus généralement, ce coloriage convient dès que $a + b$ est divisible
  par $3$ et que $a$ ne l'est pas.
- Mais quand $a + b$ est divisible par $3$, un coloriage n'existe pas toujours. Prends $a = 3$ et
  $b = 12$. Les nombres $n$, $n + 3$ et $n + 12$ ont le même reste dans la division par $3$. Pour
  les nombres de reste $0$, qui s'écrivent $3m$, il faudrait que $3m$, $3m + 3$ et $3m + 12$ aient
  trois couleurs différentes, c'est-à-dire colorier les entiers $m$ de sorte que $m$, $m + 1$ et
  $m + 4$ aient trois couleurs différentes. Or $1 + 4 = 5$ n'est pas divisible par $3$ : c'est
  impossible d'après l'exercice.
