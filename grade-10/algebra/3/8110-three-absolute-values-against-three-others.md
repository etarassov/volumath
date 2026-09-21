---
id: "8110"
title: "Trois valeurs absolues contre trois autres"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [valeur-absolue, inegalite, calcul-litteral]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 3"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Montrer que, pour tous nombres réels $x$, $y$ et $z$,

$$|x| + |y| + |z| \leq |x + y - z| + |y + z - x| + |z + x - y|.$$

## Hints

1. Ne cherche pas à discuter tous les cas de signes : il y en a beaucoup trop.
2. Le seul outil utile ici est l'inégalité triangulaire : $|u + v| \leq |u| + |v|$ pour tous réels $u$ et $v$.
3. Regarde les trois quantités $x+y-z$, $y+z-x$ et $z+x-y$. Que vaut la somme de deux d'entre elles ?
4. Tu obtiendras trois inégalités. Additionne-les et regarde ce que tu peux simplifier.

## Solution

**L'observation de départ.**

Posons, pour alléger l'écriture,

$$u = y + z - x, \qquad v = z + x - y, \qquad w = x + y - z.$$

Additionnons-les deux par deux :

$$v + w = (z + x - y) + (x + y - z) = 2x,$$
$$w + u = (x + y - z) + (y + z - x) = 2y,$$
$$u + v = (y + z - x) + (z + x - y) = 2z.$$

Les trois quantités $2x$, $2y$, $2z$ s'écrivent donc chacune comme la somme de deux des nombres $u$, $v$, $w$.

**Les trois inégalités triangulaires.**

L'inégalité triangulaire $|A + B| \leq |A| + |B|$ donne alors

$$2|x| = |v + w| \leq |v| + |w|,$$
$$2|y| = |w + u| \leq |w| + |u|,$$
$$2|z| = |u + v| \leq |u| + |v|.$$

**L'addition.**

Additionnons ces trois inégalités membre à membre :

$$2|x| + 2|y| + 2|z| \leq 2|u| + 2|v| + 2|w|,$$

car chacun des trois nombres $|u|$, $|v|$, $|w|$ apparaît exactement deux fois à droite.

En divisant par $2$ :

$$|x| + |y| + |z| \leq |u| + |v| + |w| = |y + z - x| + |z + x - y| + |x + y - z|.$$

**C'est exactement l'inégalité demandée.**
