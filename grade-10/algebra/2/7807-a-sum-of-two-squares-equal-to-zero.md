---
id: "7807"
title: "Une somme de deux carrés qui vaut zéro"
grade: 10
theme: algebra
difficulty: 2
duration_min: 12
tags: [forme-canonique, carres, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires lycéens, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels tels que
$$x^2 - 200x + y^2 + 10\,000 = 0.$$

Calculer $x + y$.

## Hints

1. Une seule équation et deux inconnues : on s'attend à une infinité de solutions. Pourtant la
   question suppose qu'il n'y en a qu'une. Il doit donc se passer quelque chose de spécial.
2. Regroupe les termes en $x$ et essaie de reconnaître le début d'une identité remarquable :
   $x^2 - 200x + \ldots$ ressemble à $(x - 100)^2$. Que vaut $(x-100)^2$ développé ?
3. Une somme de deux carrés de nombres réels ne peut valoir $0$ que d'une seule façon.

## Solution

**Étape 1 : on reconnaît un carré.**

L'identité remarquable donne
$$(x - 100)^2 = x^2 - 200x + 10\,000.$$

C'est exactement le début de notre expression ! L'équation s'écrit donc
$$(x - 100)^2 + y^2 = 0.$$

**Étape 2 : une somme de deux carrés nulle.**

Le carré d'un nombre réel est toujours positif ou nul. On a donc
$$(x-100)^2 \geq 0 \qquad \text{et} \qquad y^2 \geq 0 .$$

Si l'un des deux était strictement positif, la somme le serait aussi et ne pourrait pas valoir
$0$. Les deux sont donc nuls :
$$(x - 100)^2 = 0 \qquad \text{et} \qquad y^2 = 0,$$
c'est-à-dire
$$x = 100 \qquad \text{et} \qquad y = 0.$$

**Conclusion.**

$$x + y = 100 + 0 = \boxed{100}.$$

*Vérification.* $100^2 - 200 \times 100 + 0^2 + 10\,000 = 10\,000 - 20\,000 + 10\,000 = 0$.
