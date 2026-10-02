---
id: "8320"
title: "Quand n² + n + 1 est-il un carré parfait ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, encadrement, identites-remarquables]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Modulo et factorisation » (Émile), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

Pour quels entiers naturels $n$ le nombre

$$n^2 + n + 1$$

est-il un carré parfait ?

## Hints

1. Fais un tableau pour $n = 0, 1, 2, 3, 4, 5$. Tu verras très vite ce qui se passe.
2. Un carré parfait ne peut pas se cacher n'importe où : entre deux carrés consécutifs il n'y a aucun carré.
3. Compare $n^2 + n + 1$ avec $n^2$ d'un côté et avec $(n+1)^2$ de l'autre.
4. Développe $(n+1)^2$. Est-il plus grand que $n^2 + n + 1$ ? À partir de quand ?
5. Le cas $n = 0$ se traite à part.

## Solution

**Le cas $n = 0$.**

Pour $n = 0$ on obtient $0 + 0 + 1 = 1 = 1^2$. C'est bien un carré parfait.

**Le cas $n \geqslant 1$ : l'expression est coincée entre deux carrés consécutifs.**

Supposons $n \geqslant 1$. Alors d'une part

$$n^2 + n + 1 > n^2 ,$$

puisque $n + 1 > 0$. D'autre part

$$n^2 + n + 1 < n^2 + 2n + 1 = (n+1)^2 ,$$

car $n + 1 < 2n + 1$ dès que $n > 0$.

Ainsi

$$n^2 \;<\; n^2 + n + 1 \;<\; (n+1)^2 .$$

Le nombre $n^2 + n + 1$ est donc strictement compris entre les deux carrés **consécutifs** $n^2$
et $(n+1)^2$. Or il n'existe aucun carré parfait strictement entre deux carrés consécutifs : si
$m^2$ vérifiait $n^2 < m^2 < (n+1)^2$ avec $m \geqslant 0$, on aurait $n < m < n+1$, et il
n'existe pas d'entier strictement entre $n$ et $n+1$.

Donc $n^2 + n + 1$ n'est pas un carré parfait.

**Conclusion.** Le seul entier naturel qui convient est

$$\boxed{n = 0} .$$

## Going further

La technique « coincer l'expression entre deux carrés consécutifs » est l'une des plus utiles en
arithmétique de concours. Elle sert dès qu'on vous demande si une expression du second degré
peut être un carré.

Essaie de l'appliquer à $n^2 + 3n + 3$ : pour quels entiers naturels $n$ est-ce un carré parfait ?
Attention, la réponse n'est pas la même, car cette fois l'expression peut dépasser $(n+1)^2$.
