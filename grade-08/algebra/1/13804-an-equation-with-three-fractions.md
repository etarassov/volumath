---
id: "13804"
title: "Une équation avec trois fractions"
grade: 8
theme: algebra
difficulty: 1
duration_min: 10
tags: [equation, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2018, éliminatoires"
  reference: "2018-05_coupe_printemps_2018_elim_college.pdf, questionnaire collégiens, exercice 2 ; réponse dans 2018-06_coupe_printemps_2018_elim_college_corrige.pdf (tableau des réponses, sans solution rédigée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/05/coupe_printemps_2018_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-05_coupe_printemps_2018_elim_college.pdf"
---

## Statement

Quel nombre $x$ est solution de l'équation

$$\frac{20}{\dfrac{1}{2} + \dfrac{1}{5} + \dfrac{1}{x}} = 25 \ ?$$

## Hints

1. Appelle $D$ le dénominateur $\dfrac{1}{2} + \dfrac{1}{5} + \dfrac{1}{x}$. L'équation dit
   que $20$ divisé par $D$ donne $25$. Combien vaut $D$ ?
2. Calcule $\dfrac{1}{2} + \dfrac{1}{5}$, puis déduis-en $\dfrac{1}{x}$.

## Solution

Notons $D = \dfrac{1}{2} + \dfrac{1}{5} + \dfrac{1}{x}$. L'équation s'écrit
$\dfrac{20}{D} = 25$, c'est-à-dire $20 = 25D$, donc

$$D = \frac{20}{25} = \frac{4}{5}.$$

Par ailleurs $\dfrac{1}{2} + \dfrac{1}{5} = \dfrac{5}{10} + \dfrac{2}{10} = \dfrac{7}{10}$.
On doit donc avoir

$$\frac{7}{10} + \frac{1}{x} = \frac{4}{5} = \frac{8}{10},
\qquad \text{d'où} \qquad \frac{1}{x} = \frac{8}{10} - \frac{7}{10} = \frac{1}{10}.$$

Ainsi $x = 10$.

On vérifie : $\dfrac{1}{2} + \dfrac{1}{5} + \dfrac{1}{10} = \dfrac{5 + 2 + 1}{10} = \dfrac{8}{10}$,
et $20 \div \dfrac{8}{10} = 20 \times \dfrac{10}{8} = 25$.

**La solution est $x = 10$.**
