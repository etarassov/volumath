---
id: "12051"
title: "Quatre fractions de somme au plus 1 quand abcd = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, racine-carree, inegalite-arithmetico-geometrique, regroupement, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test du 26 février 2014"
  reference: "2017-10_ofm-2013-2014-test-fevrier.pdf, exercice 3 (commun) ; corrigé 2017-10_ofm-2013-2014-test-fevrier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-fevrier.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels strictement positifs tels que $abcd = 1$. Montrer que

$$\frac{1}{a + b + 2} + \frac{1}{b + c + 2} + \frac{1}{c + d + 2} + \frac{1}{d + a + 2} \leqslant 1 .$$

## Hints

1. Que vaut la somme quand $a = b = c = d = 1$ ?
2. Montrez que pour deux réels $x > 0$ et $y > 0$, on a $x + y \geqslant 2\sqrt{xy}$. Pensez à développer $(\sqrt x - \sqrt y)^2$.
3. Regroupez la première fraction avec la troisième, et la deuxième avec la quatrième. Si $t = \sqrt{ab}$, que vaut $\sqrt{cd}$ ?

## Solution

**Étape 1 : un outil.** Pour deux réels $x > 0$ et $y > 0$, on a

$$x + y - 2\sqrt{xy} = (\sqrt x)^2 - 2\sqrt x \sqrt y + (\sqrt y)^2 = (\sqrt x - \sqrt y)^2 \geqslant 0 ,$$

donc $x + y \geqslant 2\sqrt{xy}$.

**Étape 2 : majorer chaque fraction.** D'après l'étape 1, $a + b + 2 \geqslant 2\sqrt{ab} + 2$. Ces deux nombres sont strictement positifs, et si l'on remplace un nombre positif par un nombre positif plus grand, son inverse diminue. Donc

$$\frac{1}{a + b + 2} \leqslant \frac{1}{2\sqrt{ab} + 2} ,$$

et de même pour les trois autres fractions.

**Étape 3 : la première et la troisième fraction ensemble.** Posons $t = \sqrt{ab}$, qui est strictement positif. Comme $abcd = 1$, on a $cd = 1/(ab)$, donc $\sqrt{cd} = 1/t$. D'après l'étape 2,

$$\frac{1}{a + b + 2} + \frac{1}{c + d + 2} \leqslant \frac{1}{2t + 2} + \frac{1}{2/t + 2} .$$

En multipliant le numérateur et le dénominateur de la seconde fraction par $t$, on obtient $t/(2 + 2t)$. Donc

$$\frac{1}{2t + 2} + \frac{t}{2t + 2} = \frac{1 + t}{2(1 + t)} = \frac{1}{2} .$$

Ainsi la somme de la première et de la troisième fraction est au plus $1/2$.

**Étape 4 : la deuxième et la quatrième fraction ensemble.** On fait exactement le même calcul avec $s = \sqrt{bc}$. Comme $bc \times da = abcd = 1$, on a $\sqrt{da} = 1/s$, et

$$\frac{1}{b + c + 2} + \frac{1}{d + a + 2} \leqslant \frac{1}{2s + 2} + \frac{s}{2s + 2} = \frac{1}{2} .$$

**Conclusion.** En ajoutant les résultats des étapes 3 et 4, la somme des quatre fractions est au plus $1/2 + 1/2 = 1$. L'inégalité est démontrée.

On ne peut pas remplacer $1$ par un nombre plus petit : pour $a = b = c = d = 1$, chaque fraction vaut $1/4$ et la somme vaut exactement $1$.

## Going further

1. Montrer que la somme vaut $1$ seulement quand $a = b = c = d = 1$.
2. Calculer la somme pour $a = b = c = d = 1/2$. L'inégalité reste-t-elle vraie sans la condition $abcd = 1$ ?
3. Montrer qu'elle reste vraie si l'on suppose seulement $abcd \geqslant 1$.
