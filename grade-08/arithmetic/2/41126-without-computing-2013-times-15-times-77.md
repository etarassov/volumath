---
id: "41126"
title: "2013 × 15 × 77 sans le calculer"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [divisibilite, decomposition-en-facteurs-premiers, criteres-de-divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 5"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Sans calculer le produit $2013 \times 15 \times 77$, dire s'il est divisible par $2$, par $3$, par $9$, par $35$, par $55$, par $80$ et par $6039$.

## Hints

1. Décompose chacun des trois facteurs en produit de nombres premiers. Pour $2013$, la somme de ses chiffres te donne un premier diviseur.
2. Décompose aussi $9$, $35$, $55$, $80$ et $6039$. Pour $6039$, compare-le avec $2013$.
3. Un nombre $d$ divise le produit quand on retrouve tous les facteurs premiers de $d$ dans ceux du produit, chacun au moins autant de fois.

## Solution

**On décompose les trois facteurs.**

- La somme des chiffres de $2013$ vaut $6$, donc $2013$ est divisible par $3$ : $2013 = 3 \times 671$. Puis $671 = 11 \times 61$, et $61$ est premier. Donc $2013 = 3 \times 11 \times 61$.
- $15 = 3 \times 5$.
- $77 = 7 \times 11$.

Le produit vaut donc

$$2013 \times 15 \times 77 = 3 \times 3 \times 5 \times 7 \times 11 \times 11 \times 61.$$

**On compare avec chaque diviseur.**

- $2$ : aucun facteur $2$, le produit est impair. **Non.**
- $3$ : **oui**.
- $9 = 3 \times 3$ : il y a deux facteurs $3$. **Oui.**
- $35 = 5 \times 7$ : **oui**.
- $55 = 5 \times 11$ : **oui**.
- $80 = 2^4 \times 5$ : il faudrait des facteurs $2$. **Non.**
- $6039 = 3 \times 2013 = 3 \times 3 \times 11 \times 61$ : on retrouve deux $3$, un $11$ et le $61$. **Oui.** D'ailleurs $2013 \times 15 \times 77 = 6039 \times 5 \times 77 = 6039 \times 385$.

**Conclusion : le produit est divisible par $3$, $9$, $35$, $55$ et $6039$, mais pas par $2$ ni par $80$.**
