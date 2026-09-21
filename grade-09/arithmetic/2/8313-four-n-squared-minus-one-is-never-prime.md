---
id: "8313"
title: "4n² − 1 n'est jamais premier"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [nombres-premiers, factorisation, identite-remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Découverte des Mathématiques » (Antoine), exemple 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Montrer que, pour tout entier $n \geqslant 2$, le nombre

$$4n^2 - 1$$

n'est pas premier.

*Rappel : un entier $p > 1$ est premier lorsque ses seuls diviseurs positifs sont $1$ et $p$.
Montrer qu'un nombre n'est pas premier revient donc à l'écrire sous la forme $p = ab$ avec
$1 < a$ et $1 < b$.*

## Hints

1. Un nombre est plus facile à comprendre sous forme de **produit** que sous forme de somme. Cherche donc à factoriser $4n^2 - 1$.
2. Reconnais-tu une identité remarquable ? Regarde bien : $4n^2$ est un carré, et $1$ aussi.
3. $4n^2 = (2n)^2$ et $1 = 1^2$. L'identité $a^2 - b^2 = (a-b)(a+b)$ s'applique.
4. Une fois la factorisation écrite, il reste une vérification que beaucoup oublient : montrer qu'aucun des deux facteurs ne vaut $1$. C'est là que sert l'hypothèse $n \geqslant 2$.

## Solution

**La factorisation.**

On reconnaît une différence de deux carrés :

$$4n^2 - 1 = (2n)^2 - 1^2 = (2n - 1)(2n + 1) .$$

**Les deux facteurs sont strictement plus grands que 1.**

C'est le point à ne pas sauter : une factorisation ne prouve rien si l'un des facteurs vaut $1$.
Par exemple $7 = 1 \times 7$ et $7$ est pourtant premier.

Ici, comme $n \geqslant 2$ :

$$2n - 1 \geqslant 2 \times 2 - 1 = 3 > 1 \qquad \text{et} \qquad 2n + 1 \geqslant 5 > 1 .$$

**Conclusion.**

Le nombre $4n^2 - 1$ s'écrit comme le produit de deux entiers tous deux strictement plus grands
que $1$ : il n'est donc pas premier.

Par exemple, pour $n = 2$ : $4 \times 4 - 1 = 15 = 3 \times 5$. Pour $n = 5$ :
$4 \times 25 - 1 = 99 = 9 \times 11$.

## Going further

Pourquoi l'énoncé impose-t-il $n \geqslant 2$ ? Pour $n = 1$, on obtient $4 - 1 = 3$, qui est
bien premier : la factorisation donne alors $3 = 1 \times 3$, et le facteur $1$ ne compte pas.
Pour $n = 0$, on obtient $-1$, qui n'est pas premier non plus mais pour une autre raison.

Le même mécanisme marche pour beaucoup d'expressions. Essaie de montrer que $n^4 - 1$ n'est
jamais premier pour $n \geqslant 2$, puis que $n^3 - 1$ ne l'est jamais non plus pour
$n \geqslant 3$.
