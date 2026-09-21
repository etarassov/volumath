---
id: "7247"
title: "La fraction coincée entre deux autres"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [fractions, inegalite, signe d'une difference, mediante]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Algèbre : calcul », exercice 8 ; repris en 2024 dans Poly_StCheron_2024.pdf, groupe A, « Calculus » (Clémentine), exercice 11"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels strictement positifs tels que
$$\frac{a}{b} < \frac{c}{d} .$$

Montrer que
$$\frac{a}{b} \;<\; \frac{a+c}{b+d} \;<\; \frac{c}{d} .$$

## Hints

1. Commence par traduire l'hypothèse $\dfrac{a}{b} < \dfrac{c}{d}$ sans fractions : multiplie par
   $bd$, qui est strictement positif.
2. Pour comparer deux fractions, étudie le signe de leur différence, après avoir mis au même
   dénominateur.
3. Calcule $\dfrac{a+c}{b+d} - \dfrac{a}{b}$. Le numérateur devrait se simplifier joliment.

## Solution

**Traduire l'hypothèse.**

Les nombres $b$ et $d$ sont strictement positifs, donc $bd > 0$. En multipliant l'hypothèse
$\dfrac{a}{b} < \dfrac{c}{d}$ par $bd$, l'inégalité garde son sens :
$$ad < bc, \qquad \text{c'est-à-dire} \qquad bc - ad > 0 .$$

**Première comparaison.**

$$\frac{a+c}{b+d} - \frac{a}{b} = \frac{b(a+c) - a(b+d)}{b(b+d)}
= \frac{ab + bc - ab - ad}{b(b+d)} = \frac{bc - ad}{b(b+d)} .$$

Le numérateur $bc - ad$ est strictement positif, et le dénominateur $b(b+d)$ aussi puisque $b > 0$
et $b + d > 0$. Donc
$$\frac{a+c}{b+d} - \frac{a}{b} > 0, \qquad \text{c'est-à-dire} \qquad
\frac{a}{b} < \frac{a+c}{b+d} .$$

**Seconde comparaison.**

$$\frac{c}{d} - \frac{a+c}{b+d} = \frac{c(b+d) - d(a+c)}{d(b+d)}
= \frac{bc + cd - ad - cd}{d(b+d)} = \frac{bc - ad}{d(b+d)} .$$

De nouveau le numérateur est strictement positif, et le dénominateur $d(b+d)$ aussi. Donc
$$\frac{a+c}{b+d} < \frac{c}{d} .$$

**Conclusion.**

$$\frac{a}{b} < \frac{a+c}{b+d} < \frac{c}{d} .$$

## Going further

La fraction $\dfrac{a+c}{b+d}$ s'appelle la **médiante** des fractions $\dfrac{a}{b}$ et
$\dfrac{c}{d}$. C'est l'« addition fausse » que font parfois les élèves : additionner les
numérateurs entre eux et les dénominateurs entre eux. Le résultat n'est pas la somme des deux
fractions, mais il n'est pas dépourvu d'intérêt pour autant, puisqu'il tombe toujours entre les
deux.

Elle intervient par exemple quand on compare deux taux de réussite : si Alice réussit $a$ tirs sur
$b$ et Bob $c$ tirs sur $d$, la médiante donne le taux de réussite des deux mis ensemble, et il
est bien compris entre les deux taux individuels.

Les médiantes sont aussi au cœur des **suites de Farey** et de l'arbre de Stern-Brocot, qui
rangent toutes les fractions irréductibles dans un arbre binaire.
