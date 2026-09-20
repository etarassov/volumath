---
id: "5101"
title: "Le chiffre manquant de 2²⁹"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [chiffres, somme-des-chiffres, divisibilite, puissances, reste]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Place Value Problems », Harold Reiter"
  reference: "HReiterPlaceValueProblems.pdf, problème 31"
  url: "https://mathcircles.org/activity/place-value-problems/"
  original_language: "en"
  local_copy: "sources/originals/namc/HReiterPlaceValueProblems.pdf"
---

## Statement

Le nombre $2^{29}$ s'écrit avec neuf chiffres, et ces neuf chiffres sont tous différents les uns des autres. Il manque donc exactement un des dix chiffres $0, 1, 2, \ldots, 9$.

Lequel ? On demande de trouver la réponse **sans calculer $2^{29}$**.

## Hints

1. Les dix chiffres $0, 1, 2, \ldots, 9$ ont pour somme $45$. Si le chiffre absent est $d$, que vaut la somme des neuf chiffres de $2^{29}$ ?
2. Le critère de divisibilité par $9$ dit plus que ce que l'on retient d'habitude : un nombre et la somme de ses chiffres ont **le même reste** dans la division par $9$.
3. Il reste donc à trouver le reste de $2^{29}$ dans la division par $9$. Calcule les restes de $2^1$, $2^2$, $2^3$, … et regarde s'ils se répètent.
4. $2^6 = 64 = 7 \times 9 + 1$.

## Solution

**Étape 1. Ce que vaut la somme des chiffres.**

Les dix chiffres $0, 1, 2, \ldots, 9$ ont pour somme

$$0 + 1 + 2 + \cdots + 9 = 45$$

Les neuf chiffres de $2^{29}$ sont ces dix chiffres privés d'un seul, appelons-le $d$. Leur somme vaut donc $45 - d$.

**Étape 2. Somme des chiffres et reste par 9.**

Rappelons pourquoi un nombre et la somme de ses chiffres ont le même reste dans la division par $9$. Si un nombre s'écrit avec les chiffres $c_k, \ldots, c_1, c_0$, alors

$$N = c_k \times 10^k + \cdots + c_1 \times 10 + c_0$$

Or $10 = 9 + 1$, $100 = 99 + 1$, $1000 = 999 + 1$, et ainsi de suite : chaque puissance de $10$ est un multiple de $9$ augmenté de $1$. En remplaçant, on obtient $N = (\text{un multiple de } 9) + c_k + \cdots + c_1 + c_0$. Donc $N$ et la somme de ses chiffres diffèrent d'un multiple de $9$.

Ici, cela donne : $2^{29}$ et $45 - d$ ont le même reste dans la division par $9$. Comme $45 = 5 \times 9$, le nombre $45 - d$ a le même reste que $-d$.

**Étape 3. Le reste de $2^{29}$.**

Calculons les restes des puissances de $2$ dans la division par $9$ :

$$2^1 \equiv 2, \quad 2^2 \equiv 4, \quad 2^3 \equiv 8, \quad 2^4 \equiv 16 \equiv 7, \quad 2^5 \equiv 14 \equiv 5, \quad 2^6 \equiv 10 \equiv 1 \pmod 9$$

À partir de $2^6$, tout recommence : les restes se répètent par blocs de six. Comme $29 = 6 \times 4 + 5$,

$$2^{29} = (2^6)^4 \times 2^5 \equiv 1^4 \times 5 = 5 \pmod 9$$

**Étape 4. On conclut.**

On a donc $-d \equiv 5 \pmod 9$, c'est-à-dire $d \equiv -5 \equiv 4 \pmod 9$.

Comme $d$ est un chiffre, $d$ vaut $4$ ou $13$ ; seul $4$ est un chiffre.

**Conclusion. Le chiffre manquant est $4$.**

*Vérification, pour le plaisir :* $2^{29} = 536\,870\,912$, dont les chiffres sont $5, 3, 6, 8, 7, 0, 9, 1, 2$. Il manque bien le $4$.

## Going further

L'hypothèse « les neuf chiffres sont tous différents » est indispensable : c'est elle qui transforme la question en un calcul de somme. Sans elle, le reste modulo $9$ ne dirait rien sur les chiffres eux-mêmes.

Le même raisonnement marche pour toute puissance qui s'écrit avec neuf chiffres distincts. Par exemple $2^{29}$ n'est pas un cas isolé : essaie avec $3^{19} = 1\,162\,261\,467$ (dix chiffres, deux répétitions), et tu verras que la méthode ne s'applique plus.
