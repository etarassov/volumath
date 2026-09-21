---
id: "7420"
title: "PGCD + PPCM = m + n"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [pgcd, ppcm, divisibilite, encadrement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 17 (résolu par Lucas Perotin, Timothée Schoen, Augustin Bariant et Lingli Lin)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs tels que
$$\mathrm{PGCD}(m, n) + \mathrm{PPCM}(m, n) = m + n.$$

Montrer que l'un des deux nombres divise l'autre.

## Hints

1. Essaie avec quelques paires : $(4 \,;\, 12)$, $(6 \,;\, 10)$, $(5 \,;\, 5)$. Dans quels cas
   l'égalité est-elle vraie ?
2. On peut supposer $m \geq n$ : les deux nombres jouent le même rôle. Raisonne par l'absurde et
   suppose que $n$ ne divise pas $m$.
3. Le $\mathrm{PPCM}$ de $m$ et $n$ est un multiple de $m$. Si ce n'est pas $m$ lui-même, c'est
   au moins $2m$. Que devient alors le membre de gauche ?

## Solution

**On peut supposer $m \geq n$**, car l'énoncé et l'égalité sont symétriques en $m$ et $n$.

**Le cas où $n$ divise $m$.**

Vérifions d'abord que l'égalité est bien vraie dans ce cas, ce qui montre que l'énoncé n'est pas
vide. Si $n$ divise $m$, alors
$$\mathrm{PGCD}(m, n) = n \quad \text{et} \quad \mathrm{PPCM}(m, n) = m,$$
donc la somme vaut $n + m$ : l'égalité est satisfaite.

**Le cas où $n$ ne divise pas $m$ : il est impossible.**

Supposons maintenant que $n$ **ne divise pas** $m$, et montrons que l'égalité ne peut pas avoir
lieu.

*Le $\mathrm{PPCM}$ est grand.* Notons $L = \mathrm{PPCM}(m, n)$. C'est un multiple de $m$, donc
$L = km$ pour un entier $k \geq 1$. Si on avait $k = 1$, alors $L = m$, et comme $L$ est aussi un
multiple de $n$, $n$ diviserait $m$ : exclu. Donc $k \geq 2$, c'est-à-dire
$$L \geq 2m.$$

*Le $\mathrm{PGCD}$ est strictement positif.* Notons $D = \mathrm{PGCD}(m, n)$. Comme $m$ et $n$
sont strictement positifs, $D \geq 1$.

*On additionne.*
$$D + L \geq 1 + 2m > 2m = m + m \geq m + n,$$
la dernière inégalité venant de $m \geq n$.

On obtient donc $D + L > m + n$, ce qui contredit l'hypothèse $D + L = m + n$.

**Conclusion.**

Le cas « $n$ ne divise pas $m$ » est impossible. Donc $n$ divise $m$ : **l'un des deux nombres
divise bien l'autre.**

## Going further

Quelles sont les paires $(m \,;\, n)$ d'entiers strictement positifs telles que
$\mathrm{PGCD}(m, n) + \mathrm{PPCM}(m, n) = m \times n$ ?
