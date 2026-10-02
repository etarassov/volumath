---
id: "10803"
title: "x(x + 2) = y(y + 1) n'a pas de solution"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 15
tags: [equation, encadrement, entiers]
adapted_from: null
see_also: ["10807"]
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2012-2013 n° 3 (arithmétique)"
  reference: "2017-10_ofm-2012-2013-envoi3.pdf, Exercices Juniors, exercice 4 ; corrigé 2017-10_ofm-2012-2013-envoi3-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-envoi3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2012-2013-envoi3.pdf"
---

## Statement

Montrer qu'il n'existe pas d'entiers $x$ et $y$ strictement positifs tels que

$$x(x + 2) = y(y + 1) .$$

## Hints

1. Essaie quelques valeurs : calcule $x(x+2)$ pour $x = 1, 2, 3, 4$ et $y(y+1)$ pour $y = 1, 2, 3, 4, 5$. Les deux listes semblent ne jamais se rencontrer. Pourquoi ?
2. Le nombre $y(y+1)$ est le produit de deux entiers qui se suivent. Compare $x(x+2)$ avec les produits $x(x+1)$ et $(x+1)(x+2)$.
3. Tu dois trouver $x(x+1) < x(x+2) < (x+1)(x+2)$. Que peux-tu en déduire pour $y$ ?

## Solution

Supposons qu'il existe des entiers $x \geqslant 1$ et $y \geqslant 1$ tels que $x(x+2) = y(y+1)$, et cherchons une contradiction.

**Une remarque.** Quand $y$ augmente, le produit $y(y+1)$ augmente aussi, puisque les deux facteurs grandissent. Les valeurs successives sont
$$1 \times 2 = 2, \quad 2 \times 3 = 6, \quad 3 \times 4 = 12, \quad 4 \times 5 = 20, \quad \ldots$$

**Première comparaison.** On a $x(x+1) < x(x+2)$, car on multiplie le même nombre $x > 0$ par $x + 1$ d'un côté et par le nombre plus grand $x + 2$ de l'autre.

Donc $y(y+1) > x(x+1)$. Si on avait $y \leqslant x$, on aurait au contraire $y(y+1) \leqslant x(x+1)$. Par conséquent $y > x$, c'est-à-dire $y \geqslant x + 1$.

**Seconde comparaison.** Puisque $y \geqslant x + 1$, on a
$$y(y+1) \geqslant (x+1)(x+2) .$$
Or $(x+1)(x+2) > x(x+2)$, car on multiplie le même nombre $x + 2$ par $x + 1$ d'un côté et par le nombre plus petit $x$ de l'autre. On obtient
$$y(y+1) > x(x+2),$$
ce qui contredit l'égalité de départ.

**En résumé**, le nombre $x(x+2)$ est coincé strictement entre deux produits d'entiers consécutifs qui se suivent dans la liste :
$$x(x+1) \;<\; x(x+2) \;<\; (x+1)(x+2),$$
donc il ne peut pas lui-même être un produit de deux entiers consécutifs.

**Conclusion.** L'équation $x(x+2) = y(y+1)$ n'a **aucune solution** en entiers strictement positifs.

## Going further

1. Montre de la même façon que $x(x+3) = y(y+1)$ n'a pas non plus de solution en entiers strictement positifs. *Indication : développe $x(x+3)$ et $(x+1)(x+2)$.*
2. En revanche, $x(x+4) = y(y+1)$ a une solution. Trouve-la.
3. Pour quelles valeurs de $k$ l'équation $x(x+k) = y(y+1)$ a-t-elle une solution ? C'est l'exercice 10807.
