---
id: "0757"
title: "Le côté du losange"
grade: 8
theme: geometry
difficulty: 2
duration_min: 10
tags: [pythagore, losange, diagonales]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes divers », niveau collège - débutants, 9 février 2024"
  reference: "CalculLitteral.pdf, exercice 32 (section « Théorème de Pythagore »)"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/CalculLitteral.pdf"
---

## Statement

Un losange a ses deux diagonales de longueurs $6$ cm et $8$ cm. Quelle est la longueur de ses côtés ?

## Hints

1. Trace le losange et ses deux diagonales. Que sais-tu du point où elles se coupent ?
2. Dans un losange, les diagonales se coupent en leur milieu **et** elles sont perpendiculaires. Elles découpent donc le losange en quatre triangles rectangles.
3. Dans chacun de ces triangles, les côtés de l'angle droit sont des **demi**-diagonales, et l'hypoténuse est un côté du losange.

## Solution

Appelons $ABCD$ le losange et $O$ le point d'intersection de ses diagonales, avec $AC = 8$ cm et $BD = 6$ cm.

**Ce que l'on sait d'un losange.** Ses diagonales se coupent en leur milieu et sont perpendiculaires. Donc

$$OA = \frac{AC}{2} = 4 \text{ cm}, \qquad OB = \frac{BD}{2} = 3 \text{ cm},$$

et le triangle $AOB$ est rectangle en $O$.

**Théorème de Pythagore dans le triangle $AOB$ :**

$$AB^2 = OA^2 + OB^2 = 4^2 + 3^2 = 16 + 9 = 25,$$

donc

$$AB = \sqrt{25} = 5 \text{ cm}.$$

Les quatre côtés d'un losange ont la même longueur, donc chacun mesure $5$ cm.

**Réponse.** Les côtés du losange mesurent $5$ cm.
