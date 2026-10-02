---
id: "8112"
title: "Le coefficient manquant dans une identité"
grade: 10
theme: algebra
difficulty: 2
duration_min: 20
tags: [identite, developpement, calcul-litteral]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 5"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Trouver le nombre $k$ tel que, pour tous nombres réels $a$, $b$ et $c$,

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) + k\,abc.$$

## Hints

1. Si un tel $k$ existe, l'égalité doit en particulier être vraie pour des valeurs très simples de $a$, $b$ et $c$. Essaie $a = b = c = 1$.
2. Cela te donne un candidat, et un seul. Il reste à vérifier qu'il convient vraiment pour tous les réels.
3. Pour la vérification, développe les deux produits séparément et compare terme à terme. Les deux développements ne diffèrent que par le nombre de $abc$.

## Solution

**Trouver le candidat.**

Si l'égalité est vraie pour tous les réels, elle l'est en particulier pour $a = b = c = 1$. Elle devient alors

$$2 \times 2 \times 2 = 3 \times 3 + k \times 1,$$

c'est-à-dire $8 = 9 + k$, donc $k = -1$.

C'est le seul candidat possible. Reste à vérifier qu'il convient.

**Le premier développement.**

$$(a+b)(b+c) = ab + ac + b^2 + bc,$$

puis, en multipliant par $(c+a)$ :

$$(ab + ac + b^2 + bc)(c+a) = abc + ac^2 + b^2c + bc^2 + a^2b + a^2c + ab^2 + abc.$$

En regroupant :

$$(a+b)(b+c)(c+a) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 2abc.$$

**Le second développement.**

$$(a+b+c)(ab+bc+ca) = a^2b + abc + a^2c \;+\; ab^2 + b^2c + abc \;+\; abc + bc^2 + ac^2,$$

soit

$$(a+b+c)(ab+bc+ca) = a^2b + a^2c + ab^2 + b^2c + bc^2 + ac^2 + 3abc.$$

**La comparaison.**

Les deux développements ont exactement les mêmes six termes du type $a^2b$. Ils ne diffèrent que par le coefficient de $abc$ : $2$ d'un côté, $3$ de l'autre. Donc

$$(a+b)(b+c)(c+a) - (a+b+c)(ab+bc+ca) = 2abc - 3abc = -abc.$$

**Conclusion : $k = -1$, et l'identité s'écrit**

$$(a+b)(b+c)(c+a) = (a+b+c)(ab+bc+ca) - abc.$$
