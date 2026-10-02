---
id: "12421"
title: "Un système circulaire avec des racines carrées"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, racine-carree, encadrement, minimum, symetrie]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2018"
  reference: "2018-08_pofm-2017-2018-test-mai.pdf, exercices du groupe B, exercice 1 ; corrigé 2018-08_pofm-2017-2018-test-mai-corrige.pdf (solution raccourcie ici : on part du plus petit des trois nombres)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/08/pofm-2017-2018-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-08_pofm-2017-2018-test-mai.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ de nombres réels strictement positifs tels que
$$a\sqrt{b} - c = a, \qquad b\sqrt{c} - a = b, \qquad c\sqrt{a} - b = c.$$

## Hints

1. Cherche une solution où les trois nombres sont égaux.
2. Le système ne change pas si l'on remplace $(a, b, c)$ par $(b, c, a)$. On peut donc supposer
   que $c$ est le plus petit des trois nombres.
3. Avec cette hypothèse, la première équation donne $a\sqrt{b} \leqslant 2a$. Qu'en déduis-tu pour
   $b$ ? Que donne de même la troisième équation pour $a$ ?

## Solution

### Une solution

Si $a = b = c = x$, chaque équation devient $x\sqrt{x} - x = x$, c'est-à-dire $\sqrt{x} = 2$ (on
peut diviser par $x > 0$), donc $x = 4$. Le triplet $(4, 4, 4)$ est solution.

### Il n'y en a pas d'autre

Soit $(a, b, c)$ une solution. Si l'on fait tourner les lettres, en remplaçant $(a, b, c)$ par
$(b, c, a)$, les trois équations sont simplement permutées : le triplet $(b, c, a)$ est encore une
solution, et de même $(c, a, b)$. On peut donc supposer que **$c$ est le plus petit des trois
nombres** : $c \leqslant a$ et $c \leqslant b$.

**On a $b \leqslant 4$.** La première équation s'écrit $a\sqrt{b} = a + c$. Comme $c \leqslant a$,
on obtient $a\sqrt{b} \leqslant 2a$, donc $\sqrt{b} \leqslant 2$ (car $a > 0$), c'est-à-dire
$b \leqslant 4$.

**On a $a \geqslant 4$.** La troisième équation s'écrit $c\sqrt{a} = b + c$. Comme $b \geqslant c$,
on obtient $c\sqrt{a} \geqslant 2c$, donc $\sqrt{a} \geqslant 2$, c'est-à-dire $a \geqslant 4$.

**On a $a \leqslant b$.** La deuxième équation s'écrit $b\sqrt{c} = a + b$. Or
$c \leqslant b \leqslant 4$, donc $\sqrt{c} \leqslant 2$, et $a + b = b\sqrt{c} \leqslant 2b$.
Ainsi $a \leqslant b$.

**Conclusion.** On a $4 \leqslant a \leqslant b \leqslant 4$, donc $a = b = 4$. La deuxième équation
devient alors $4\sqrt{c} = 8$, donc $c = 4$.

Le seul triplet solution est donc **$(a, b, c) = (4, 4, 4)$**.
