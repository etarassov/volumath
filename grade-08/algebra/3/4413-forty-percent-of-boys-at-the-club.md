---
id: "4413"
title: "Quarante pour cent de garçons au club"
grade: 8
theme: algebra
difficulty: 3
duration_min: 20
tags: [pourcentages, equation, systeme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Percentages"
  reference: "Handout-619-737.pdf, problème 7 (réponse dans Handout-620-737.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-619-737.pdf"
---

## Statement

En début d'année, $40\ \%$ des membres du club de maths étaient des garçons.

Puis $6$ garçons se sont inscrits et $5$ filles ont quitté le club. Il y a alors exactement
autant de filles que de garçons.

Combien le club comptait-il de membres en début d'année ?

## Hints

1. Appelle $g$ le nombre de garçons et $f$ le nombre de filles en début d'année.
2. Traduis « $40\ \%$ des membres sont des garçons » par une égalité entre $g$ et $f$.
3. Traduis ensuite la situation après les arrivées et les départs, puis remplace.

## Solution

Notons $g$ le nombre de garçons et $f$ le nombre de filles en début d'année.

**La première information.** Les garçons représentent $40\ \%$ du total :

$$g = \text{0,4}\,(g + f).$$

En développant : $g = \text{0,4}\,g + \text{0,4}\,f$, donc $\text{0,6}\,g = \text{0,4}\,f$,
c'est-à-dire

$$f = \frac{\text{0,6}}{\text{0,4}}\,g = \text{1,5}\,g.$$

Autrement dit, il y a une fois et demie plus de filles que de garçons. (C'est logique :
$40\ \%$ de garçons pour $60\ \%$ de filles.)

**La seconde information.** Après les mouvements, il y a $g + 6$ garçons et $f - 5$ filles, et
ces deux nombres sont égaux :

$$g + 6 = f - 5.$$

**On remplace.** En utilisant $f = \text{1,5}\,g$ :

$$g + 6 = \text{1,5}\,g - 5,$$
$$11 = \text{0,5}\,g,$$
$$g = 22.$$

Donc $f = \text{1,5} \times 22 = 33$, et le club comptait $22 + 33 = 55$ membres.

**Vérification.** $40\ \%$ de $55$ font bien $22$. Après les mouvements : $22 + 6 = 28$ garçons
et $33 - 5 = 28$ filles. C'est correct.

**Le club comptait $55$ membres en début d'année.**
