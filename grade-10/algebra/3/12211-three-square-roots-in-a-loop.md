---
id: "12211"
title: "Trois racines carrées en boucle"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, racine carree, ordre, fonction carre, equation du second degre]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de février 2015 (groupe B et EGMO)"
  reference: "2017-10_ofm-2014-2015-test-fevrier-junior.pdf, exercice 1 ; corrigé 2017-10_ofm-2014-2015-test-fevrier-junior-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-fevrier-junior.pdf"
---

## Statement

Trouver tous les nombres réels $x$, $y$, $z$ tels que

$$x = \sqrt{2y + 3}, \qquad y = \sqrt{2z + 3}, \qquad z = \sqrt{2x + 3}.$$

## Hints

1. Que peut-on dire du signe de $x$, $y$ et $z$ ? Élève chaque équation au carré.
2. Suppose que $x \leqslant y$. Compare $x^2$ et $y^2$, et déduis-en une comparaison entre $y$ et $z$.
3. Continue la chaîne : tu dois revenir à $x$.

## Solution

**Étape 1. Les nombres sont positifs.** Une racine carrée est toujours positive ou nulle, donc $x \geqslant 0$, $y \geqslant 0$ et $z \geqslant 0$. En élevant au carré, le système donne

$$x^2 = 2y + 3, \qquad y^2 = 2z + 3, \qquad z^2 = 2x + 3.$$

Rappelons que, pour deux nombres positifs $u$ et $v$, on a $u \leqslant v$ si et seulement si $u^2 \leqslant v^2$, car la fonction carré est croissante sur $[0, +\infty[$.

**Étape 2. Les trois nombres sont égaux.**

Supposons d'abord que $x \leqslant y$.

- Comme $x$ et $y$ sont positifs, $x^2 \leqslant y^2$, c'est-à-dire $2y + 3 \leqslant 2z + 3$, donc $y \leqslant z$.
- Comme $y$ et $z$ sont positifs, $y^2 \leqslant z^2$, c'est-à-dire $2z + 3 \leqslant 2x + 3$, donc $z \leqslant x$.

On obtient $x \leqslant y \leqslant z \leqslant x$, ce qui impose $x = y = z$.

Si au contraire $x \geqslant y$, le même raisonnement avec toutes les inégalités retournées donne $x \geqslant y \geqslant z \geqslant x$, donc encore $x = y = z$.

**Étape 3. La valeur commune.** Elle vérifie $x^2 = 2x + 3$, soit $x^2 - 2x - 3 = 0$, qui se factorise en $(x - 3)(x + 1) = 0$. Comme $x \geqslant 0$, on a $x = 3$.

**Vérification.** Pour $x = y = z = 3$, on a bien $\sqrt{2 \times 3 + 3} = \sqrt{9} = 3$ dans les trois équations.

**Conclusion : la seule solution est $x = y = z = 3$.**

## Going further

Le même raisonnement marche pour $x = f(y)$, $y = f(z)$, $z = f(x)$ dès que la fonction $f$ est croissante : on montre que $x = y = z$, puis on résout $x = f(x)$. Il marche aussi avec quatre inconnues ou plus, disposées en boucle.
