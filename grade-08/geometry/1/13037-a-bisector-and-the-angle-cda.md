---
id: "13037"
title: "Une bissectrice et l'angle CDA"
grade: 8
theme: geometry
difficulty: 1
duration_min: 5
tags: [angles, somme des angles, bissectrice, triangle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire collégiens"
  reference: "2017-09_coupe_automne_2015_elim_college.pdf, exercice 11 ; corrigé 2017-09_coupe_automne_2015_elim_college_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_college.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_college.pdf"
---

## Statement

Soit $ABC$ un triangle tel que $\widehat{BAC} = 48^\circ$ et $\widehat{CBA} = 17^\circ$. La bissectrice de l'angle $\widehat{BAC}$ coupe le segment $[BC]$ au point $D$.

Déterminer la mesure de l'angle $\widehat{CDA}$.

## Hints

1. Fais une figure à main levée.
2. Que vaut l'angle $\widehat{BAD}$ ?
3. Regarde le triangle $ABD$, puis l'angle plat formé en $D$ par les points $B$, $D$ et $C$.

## Solution

**L'angle $\widehat{BAD}$.** La bissectrice partage l'angle $\widehat{BAC}$ en deux angles égaux, donc
$$\widehat{BAD} = \frac{48^\circ}{2} = 24^\circ .$$

**Le triangle $ABD$.** La somme de ses angles vaut $180^\circ$, donc
$$\widehat{ADB} = 180^\circ - 17^\circ - 24^\circ = 139^\circ .$$

**L'angle plat.** Le point $D$ est sur le segment $[BC]$, donc les angles $\widehat{ADB}$ et $\widehat{CDA}$ forment un angle plat :
$$\widehat{CDA} = 180^\circ - 139^\circ = 41^\circ .$$

**Vérification par l'autre triangle.** On a $\widehat{ACB} = 180^\circ - 48^\circ - 17^\circ = 115^\circ$. Dans le triangle $ADC$, on trouve bien $\widehat{CDA} = 180^\circ - 24^\circ - 115^\circ = 41^\circ$.

**Conclusion.** L'angle $\widehat{CDA}$ mesure $41^\circ$.

## Going further

1. Montrer que, dans n'importe quel triangle $ABC$, si $D$ est le pied de la bissectrice issue de $A$, alors $\widehat{CDA} = \widehat{CBA} + \dfrac{1}{2}\,\widehat{BAC}$.
2. Pour quels triangles la bissectrice issue de $A$ est-elle perpendiculaire à $(BC)$ ?
