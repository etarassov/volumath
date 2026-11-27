---
id: "41128"
title: "Les journées chargées de Robinson"
grade: 8
theme: arithmetic
difficulty: 1
duration_min: 10
tags: [multiples, ppcm, calendrier]
adapted_from: null
see_also: ["0611"]
same_as: []
created: 2026-11-27
source:
  name: "MathCool, Грузия, август 2026 г., группа «Земляные элементали», листок «Делимость» (А. А. Пронина)"
  reference: "mathcool-2026-08-17-delimost.pdf, задача 8"
  url: ""
  original_language: "ru"
  local_copy: "sources/originals/mathcool/mathcool-2026-08-17-delimost.pdf"
---

## Statement

Robinson Crusoé va chercher de l'eau potable à la source un jour sur deux, il cueille des fruits un jour sur trois et il part à la chasse un jour sur cinq. Aujourd'hui, Robinson a une journée chargée : il doit faire ces trois choses le même jour.

Quand aura-t-il sa prochaine journée chargée ?

## Hints

1. Numérote les jours à partir d'aujourd'hui, qui sera le jour $0$. Quels jours Robinson va-t-il chercher de l'eau ?
2. Une journée chargée tombe un jour dont le numéro est à la fois un multiple de $2$, de $3$ et de $5$.
3. Quel est le plus petit nombre strictement positif qui est multiple de $2$, de $3$ et de $5$ à la fois ?

## Solution

Numérotons les jours à partir d'aujourd'hui, le jour $0$.

- Robinson va chercher de l'eau les jours $0, 2, 4, 6, \ldots$, c'est-à-dire les jours dont le numéro est un multiple de $2$.
- Il cueille des fruits les jours multiples de $3$, et il chasse les jours multiples de $5$.

Une journée chargée tombe donc un jour dont le numéro est multiple de $2$, de $3$ et de $5$ à la fois. Les nombres $2$, $3$ et $5$ sont des nombres premiers différents : un nombre divisible par chacun d'eux est divisible par leur produit $2 \times 3 \times 5 = 30$. Le plus petit multiple strictement positif de $30$ est $30$.

**Conclusion : la prochaine journée chargée aura lieu dans $30$ jours.**
