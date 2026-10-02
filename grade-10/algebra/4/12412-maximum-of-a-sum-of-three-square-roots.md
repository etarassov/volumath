---
id: "12412"
title: "Le maximum d'une somme de trois racines"
grade: 10
theme: algebra
difficulty: 4
duration_min: 25
tags: [inegalite, maximum, racine-carree, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection senior du 21 février 2018"
  reference: "2018-02_pofm-2017-2018-test-fevrier-senior.pdf, exercice 1 ; corrigé 2018-02_pofm-2017-2018-test-fevrier-senior-corrige.pdf (le corrigé utilise l'inégalité de Cauchy-Schwarz, remplacée ici par une majoration élémentaire)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-test-fevrier-senior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-02_pofm-2017-2018-test-fevrier-senior.pdf"
---

## Statement

Déterminer la plus grande valeur possible de
$$\sqrt{x} + \sqrt{2y + 2} + \sqrt{3z + 6}$$
lorsque $x$, $y$, $z$ sont des nombres réels strictement positifs vérifiant $x + y + z = 3$.

## Hints

1. Essaie quelques valeurs de $x$, $y$, $z$. Que vaut la somme quand $x = y = z = 1$ ?
2. Pour deux réels $t \geqslant 0$ et $c > 0$, développe $(\sqrt{t} - c)^2 \geqslant 0$. Tu obtiens
   une majoration de $\sqrt{t}$ par une expression sans racine.
3. Applique cette majoration à chacune des trois racines, en choisissant $c$ pour que l'égalité ait
   lieu quand $x = y = z = 1$.

## Solution

### Une valeur à viser

Avec $x = y = z = 1$, qui vérifie bien $x + y + z = 3$, la somme vaut
$$\sqrt{1} + \sqrt{4} + \sqrt{9} = 1 + 2 + 3 = 6.$$
On va montrer qu'on ne peut jamais dépasser $6$.

### Un outil : majorer une racine

Soient $t \geqslant 0$ et $c > 0$. Comme un carré est positif,
$$(\sqrt{t} - c)^2 \geqslant 0, \qquad \text{c'est-à-dire} \qquad t - 2c\sqrt{t} + c^2 \geqslant 0.$$
En divisant par $2c > 0$, on obtient
$$\sqrt{t} \leqslant \frac{t + c^2}{2c},$$
avec égalité exactement quand $\sqrt{t} = c$, c'est-à-dire $t = c^2$.

### On l'applique trois fois

On choisit à chaque fois pour $c$ la valeur de la racine quand $x = y = z = 1$, c'est-à-dire
$1$, $2$ et $3$, pour que les trois majorations soient des égalités en ce point.

- Avec $t = x$ et $c = 1$ : $\sqrt{x} \leqslant \dfrac{x + 1}{2}$.
- Avec $t = 2y + 2$ et $c = 2$ : $\sqrt{2y + 2} \leqslant \dfrac{2y + 2 + 4}{4} = \dfrac{y + 3}{2}$.
- Avec $t = 3z + 6$ et $c = 3$ : $\sqrt{3z + 6} \leqslant \dfrac{3z + 6 + 9}{6} = \dfrac{z + 5}{2}$.

En additionnant ces trois inégalités,
$$\sqrt{x} + \sqrt{2y + 2} + \sqrt{3z + 6} \leqslant \frac{x + y + z + 9}{2} = \frac{3 + 9}{2} = 6.$$

### Conclusion

La somme vaut toujours au plus $6$, et elle vaut exactement $6$ pour $x = y = z = 1$. **La valeur
maximale est $6$.**

## Going further

Le corrigé officiel écrit la somme sous la forme
$\sqrt{x} \times 1 + \sqrt{y + 1} \times \sqrt{2} + \sqrt{z + 2} \times \sqrt{3}$ et utilise
l'inégalité de Cauchy-Schwarz : pour tous réels $a_1, a_2, a_3, b_1, b_2, b_3$,
$$(a_1 b_1 + a_2 b_2 + a_3 b_3)^2 \leqslant (a_1^2 + a_2^2 + a_3^2)(b_1^2 + b_2^2 + b_3^2).$$
Retrouver le maximum $6$ de cette façon. Pour démontrer l'inégalité elle-même, on peut regarder le
polynôme $(a_1 u - b_1)^2 + (a_2 u - b_2)^2 + (a_3 u - b_3)^2$ en la variable $u$, qui ne prend
que des valeurs positives.
