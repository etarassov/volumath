---
id: "10817"
title: "Quand 2ⁿ divisé par n est une puissance de 2"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [puissances, puissances-de-deux, quotient]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2014-2015-envoi-3.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2014-2015-envoi-3-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-3.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier tel que le quotient

$$\frac{2^n}{n}$$

est une puissance de $2$.

Montrer que $n$ est lui aussi une puissance de $2$.

*Ici, le quotient est le résultat exact de la division : on suppose que $2^n / n$ est égal à l'un des nombres $1, 2, 4, 8, 16, \ldots$*

## Hints

1. Essaie avec $n = 8$, puis avec $n = 6$. Que vaut $2^n / n$ dans chaque cas ?
2. Écris $2^n / n = 2^k$, puis exprime $n$ à l'aide de $2^n$ et de $2^k$.

## Solution

Par hypothèse, il existe un entier $k \geqslant 0$ tel que
$$\frac{2^n}{n} = 2^k .$$
En multipliant par $n$, on obtient $2^n = 2^k \times n$, puis en divisant par $2^k$ :
$$n = \frac{2^n}{2^k} = 2^{\,n - k} .$$
L'exposant $n - k$ est bien un entier positif ou nul : comme $n \geqslant 1$, on a $2^k = 2^n / n \leqslant 2^n$, donc $k \leqslant n$.

**Conclusion : $n = 2^{\,n-k}$ est une puissance de $2$.**

*Exemple :* pour $n = 8$, on a $2^8 / 8 = 256 / 8 = 32 = 2^5$, et en effet $8 = 2^{8 - 5} = 2^3$. Pour $n = 6$, le quotient $64 / 6$ n'est même pas un entier.

## Going further

1. Réciproquement, si $n$ est une puissance de $2$, le quotient $2^n / n$ est-il toujours une puissance de $2$ ?
2. Plus difficile : on suppose seulement que $n$ divise $2^n$, sans rien savoir du quotient. Montre que $n$ est encore une puissance de $2$. *Indication : quels nombres premiers peuvent diviser $2^n$ ?*
