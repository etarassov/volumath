---
id: "7607"
title: "Une inégalité qui cache un carré"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, identite remarquable, developpement, factorisation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours (groupes A et B)"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe A, exercice 2 (le même exercice figure comme exercice 2 du groupe B)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Démontrer que, pour tous nombres réels $a$ et $b$,

$$a^2 + b^2 + 2(a-1)(b-1) \geqslant 1 .$$

## Hints

1. Essayez d'abord quelques valeurs, par exemple $a = b = 0$, puis $a = b = 1$, puis $a = 2$ et $b = -1$. Quand l'égalité semble-t-elle se produire ?
2. Développez tout et ramenez tous les termes du même côté : il s'agit de montrer qu'une certaine expression est positive ou nulle.
3. Une expression est sûrement positive ou nulle quand c'est un carré. Regardez les termes $a^2$, $b^2$ et $2ab$ : que reconnaissez-vous ?
4. Posez $s = a + b$ et réécrivez tout en fonction de $s$.

## Solution

Développons le produit $2(a-1)(b-1)$ :

$$2(a-1)(b-1) = 2(ab - a - b + 1) = 2ab - 2a - 2b + 2 .$$

L'inégalité à démontrer s'écrit donc

$$a^2 + b^2 + 2ab - 2a - 2b + 2 \geqslant 1 ,$$

c'est-à-dire, en retranchant $1$ des deux côtés,

$$a^2 + b^2 + 2ab - 2a - 2b + 1 \geqslant 0 .$$

Regardons maintenant le membre de gauche. Les trois premiers termes forment une identité remarquable :

$$a^2 + 2ab + b^2 = (a+b)^2 .$$

Et les deux termes suivants se regroupent aussi : $-2a - 2b = -2(a+b)$. En posant $s = a + b$, le membre de gauche devient

$$s^2 - 2s + 1 ,$$

qui est encore une identité remarquable :

$$s^2 - 2s + 1 = (s-1)^2 .$$

Finalement,

$$a^2 + b^2 + 2(a-1)(b-1) - 1 = (a + b - 1)^2 .$$

Un carré est toujours positif ou nul, donc cette quantité est positive ou nulle, ce qui est exactement l'inégalité demandée.

**Conclusion.** Pour tous réels $a$ et $b$, on a $a^2 + b^2 + 2(a-1)(b-1) \geqslant 1$.

## Going further

Le calcul donne plus que l'inégalité : il donne le **cas d'égalité**. On a égalité exactement quand $(a+b-1)^2 = 0$, c'est-à-dire quand

$$a + b = 1 .$$

Il y a donc une infinité de couples qui réalisent l'égalité : $(0\,;1)$, $(1\,;0)$, $\left(\tfrac12\,;\tfrac12\right)$, $(7\,;-6)$, et tous les autres points de la droite d'équation $y = 1 - x$.

Une remarque de méthode : quand on veut démontrer une inégalité, la première chose à essayer est presque toujours de tout ramener d'un côté et de chercher à écrire le résultat comme une somme de carrés. Ici, un seul carré a suffi.
