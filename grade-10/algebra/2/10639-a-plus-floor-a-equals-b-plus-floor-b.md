---
id: "10639"
title: "a + ⌊a⌋ = b + ⌊b⌋"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [partie-entiere, raisonnement-par-l-absurde, inegalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2022-2023 n° 2 (algèbre)"
  reference: "2022-12_Sujet-envoi-2.pdf, Exercices Juniors, exercice 3 ; corrigé 2023-01_corrige-envoi-2.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/12/Sujet-envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-12_Sujet-envoi-2.pdf"
---

## Statement

Pour un réel $x$, on note $\lfloor x \rfloor$ le plus grand entier relatif inférieur ou égal à $x$. Par exemple, $\lfloor \text{2,7} \rfloor = 2$, $\lfloor \pi \rfloor = 3$ et $\lfloor -\text{1,5} \rfloor = -2$.

Soient $a$ et $b$ deux réels tels que

$$a + \lfloor a \rfloor = b + \lfloor b \rfloor$$

Montrer que $a = b$.

## Hints

1. Raisonne par l'absurde, et suppose par exemple $a < b$.
2. L'entier $\lfloor a \rfloor$ est inférieur ou égal à $a$, donc à $b$. Que peux-tu en déduire en le comparant à $\lfloor b \rfloor$ ?

## Solution

Supposons $a \neq b$. Les nombres $a$ et $b$ jouent le même rôle dans l'énoncé, on peut donc supposer $a < b$.

On a $\lfloor a \rfloor \leqslant a < b$. Ainsi $\lfloor a \rfloor$ est un entier inférieur ou égal à $b$. Or $\lfloor b \rfloor$ est le **plus grand** entier inférieur ou égal à $b$, donc $\lfloor a \rfloor \leqslant \lfloor b \rfloor$.

En ajoutant les deux inégalités $a < b$ et $\lfloor a \rfloor \leqslant \lfloor b \rfloor$, on obtient

$$a + \lfloor a \rfloor < b + \lfloor b \rfloor$$

ce qui contredit l'hypothèse.

**Conclusion : on a forcément $a = b$.**

## Going further

On a en fait montré que la fonction $x \mapsto x + \lfloor x \rfloor$ est strictement croissante. Quelles valeurs prend-elle ? Par exemple, existe-t-il un réel $x$ tel que $x + \lfloor x \rfloor = \text{3,5}$ ? Et $x + \lfloor x \rfloor = 4$ ?
