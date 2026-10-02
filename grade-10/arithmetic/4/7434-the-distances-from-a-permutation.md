---
id: "7434"
title: "Les distances |aᵢ − i| peuvent-elles être toutes différentes ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [permutations, parite, somme, absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2010, groupe des débutants"
  reference: "stage_ete_2010.pdf, « Groupe des Débutants », deuxième TD de stratégies de base, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2010.pdf"
---

## Statement

On range les entiers $1, 2, \ldots, 2010$ dans un ordre quelconque : on obtient une liste
$a_1, a_2, \ldots, a_{2010}$ où chacun des $2010$ entiers apparaît une fois et une seule.

Pour chaque indice $i$, on calcule la distance entre la valeur et sa place :
$$d_i = |a_i - i|.$$

Est-il possible que les $2010$ nombres $d_1, d_2, \ldots, d_{2010}$ soient **deux à deux
différents** ?

## Hints

1. Essaie d'abord avec $1, 2$ puis avec $1, 2, 3$ puis avec $1, 2, 3, 4$. Pour quelles longueurs
   y arrives-tu ?
2. Les $d_i$ sont des entiers compris entre $0$ et $2009$. S'ils sont tous différents, que peut-on
   dire de l'ensemble qu'ils forment ?
3. Compare la parité de $d_1 + d_2 + \dots + d_{2010}$ et celle de
   $(a_1 - 1) + (a_2 - 2) + \dots + (a_{2010} - 2010)$. Ces deux sommes ont-elles la même parité ?
   Et que vaut la seconde ?

## Solution

**La réponse est non : c'est impossible.**

**Raisonnons par l'absurde.**

Supposons que les $2010$ nombres $d_1, \ldots, d_{2010}$ soient deux à deux différents.

Chaque $d_i = |a_i - i|$ est un entier compris entre $0$ et $2009$, puisque $a_i$ et $i$ sont tous
deux entre $1$ et $2010$. Il y a exactement $2010$ valeurs possibles, à savoir $0, 1, 2, \ldots,
2009$, et $2010$ nombres deux à deux différents : **ces nombres sont donc exactement $0, 1, 2,
\ldots, 2009$, dans un certain ordre.**

**Première façon de calculer la somme des $d_i$.**

$$d_1 + d_2 + \dots + d_{2010} = 0 + 1 + 2 + \dots + 2009 = \frac{2009 \times 2010}{2}
= 2009 \times 1005.$$

Ici $2009$ et $1005$ sont tous deux impairs, donc cette somme est **impaire**.

**Deuxième façon : on regarde la parité autrement.**

Pour tout entier $x$, les nombres $|x|$ et $x$ ont la même parité. Donc $d_i = |a_i - i|$ a la
même parité que $a_i - i$, et la somme
$$d_1 + d_2 + \dots + d_{2010}$$
a la même parité que
$$(a_1 - 1) + (a_2 - 2) + \dots + (a_{2010} - 2010).$$

Or cette dernière somme se réorganise en
$$(a_1 + a_2 + \dots + a_{2010}) - (1 + 2 + \dots + 2010).$$

Comme les $a_i$ sont exactement les entiers de $1$ à $2010$ dans un autre ordre, les deux
parenthèses sont égales ! Cette somme vaut donc $0$, qui est **pair**.

**La contradiction.**

La somme $d_1 + \dots + d_{2010}$ serait donc à la fois impaire et paire. C'est impossible.

**Conclusion : les $2010$ distances $d_i$ ne peuvent pas être toutes différentes.**

## Going further

L'argument n'a utilisé que la parité de $\dfrac{n(n-1)}{2}$, où $n = 2010$. Pour quelles valeurs
de $n$ le même raisonnement fonctionne-t-il ? Et pour les autres valeurs de $n$, arrive-t-on
vraiment à construire un rangement où toutes les distances sont différentes ? Essaie avec
$n = 4$.
