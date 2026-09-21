---
id: "8116"
title: "Pour quels n la fraction (21n+4)/(14n+1) se simplifie-t-elle ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [pgcd, fraction-irreductible, congruences, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Arithmétique – Nombres premiers et lemme de Gauss », exercice 20"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels la fraction

$$\frac{21n+4}{14n+1}$$

est irréductible, c'est-à-dire pour lesquels le numérateur et le dénominateur n'ont aucun diviseur commun autre que $1$.

## Hints

1. Appelle $d$ le PGCD du numérateur et du dénominateur. Un diviseur commun divise aussi toute combinaison $a \times (21n+4) + b \times (14n+1)$ avec $a$ et $b$ entiers.
2. Cherche des entiers $a$ et $b$ qui font disparaître le $n$. Regarde les coefficients $21$ et $14$ : leur PPCM est $42$.
3. Tu trouveras que $d$ divise un petit nombre fixe. Cela ne laisse que deux valeurs possibles pour $d$.
4. Pour savoir quand la plus grande de ces valeurs est atteinte, regarde le reste de $n$ dans la division par $5$ : il n'y a que cinq cas à examiner.

## Solution

Notons $d = \mathrm{PGCD}(21n+4,\ 14n+1)$. La fraction est irréductible exactement quand $d = 1$.

**Étape 1 : $d$ ne peut valoir que $1$ ou $5$.**

L'entier $d$ divise $21n+4$ et $14n+1$, donc il divise aussi toute combinaison de ces deux nombres à coefficients entiers. Choisissons les coefficients qui éliminent $n$ : il faut multiplier $21n$ par $2$ et $14n$ par $3$, ce qui donne $42n$ dans les deux cas. Alors

$$2(21n+4) - 3(14n+1) = (42n + 8) - (42n + 3) = 5.$$

Donc $d$ divise $5$. Comme $5$ est premier, $d = 1$ ou $d = 5$.

**Étape 2 : quand $d$ vaut-il $5$ ?**

On a $d = 5$ si et seulement si $5$ divise à la fois $14n+1$ et $21n+4$.

Regardons d'abord $14n+1$. Comme $14 = 10 + 4$ et que $10n$ est un multiple de $5$, le reste de $14n+1$ dans la division par $5$ est celui de $4n+1$. Examinons les cinq restes possibles de $n$ :

| Reste de $n$ par $5$ | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| Reste de $4n+1$ par $5$ | 1 | 0 | 4 | 3 | 2 |

Donc $5$ divise $14n+1$ si et seulement si $n$ a pour reste $1$ dans la division par $5$.

Dans ce cas, que devient $21n+4$ ? Comme $21 = 20+1$ et que $20n$ est un multiple de $5$, le reste de $21n+4$ est celui de $n+4$. Si $n$ a pour reste $1$, alors $n+4$ a pour reste $0$ : le nombre $21n+4$ est bien divisible par $5$.

Ainsi $d = 5$ exactement quand le reste de $n$ dans la division par $5$ vaut $1$, et $d = 1$ dans tous les autres cas.

**Conclusion.**

La fraction $\dfrac{21n+4}{14n+1}$ est irréductible pour tous les entiers naturels $n$ **sauf** ceux de la forme $n = 5k+1$, c'est-à-dire

$$n = 1,\ 6,\ 11,\ 16,\ 21,\ \ldots$$

Pour ces valeurs-là, elle se simplifie exactement par $5$.

## Going further

Un exercice classique très proche demande de montrer que $\dfrac{21n+4}{14n+3}$ est irréductible pour **tout** entier naturel $n$. La même combinaison donne cette fois $3(14n+3) - 2(21n+4) = 1$, et le PGCD vaut donc toujours $1$ : il n'y a aucun cas à examiner. Le petit changement de $3$ en $1$ au dénominateur fait toute la différence.
