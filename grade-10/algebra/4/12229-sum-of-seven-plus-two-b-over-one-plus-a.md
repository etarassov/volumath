---
id: "12229"
title: "Somme des (7 + 2b)/(1 + a) quand a + b + c = 1"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, fractions, inegalite-arithmetico-geometrique, somme-cyclique, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2015, jour 2"
  reference: "2017-10_ofm-2014-2015-test-mai-2.pdf, test final du 13 mai 2015, exercices pour les candidats à la JBMO, exercice 5 (pas de corrigé publié pour ce test ; le même exercice revient comme exercice 2 du test de février 2016 junior, 2017-10_ofm-2015-2016-test-fevrier-junior.pdf, dont le corrigé suit la même méthode)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-test-mai-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2014-2015-test-mai-2.pdf"
---

## Statement

Soient $a$, $b$ et $c$ des nombres réels strictement positifs tels que $a + b + c = 1$. Montrer que

$$\frac{7 + 2b}{1 + a} + \frac{7 + 2c}{1 + b} + \frac{7 + 2a}{1 + c} \geqslant \frac{69}{4}.$$

## Hints

1. Calcule la somme pour $a = b = c = \frac{1}{3}$.
2. Écris $7 + 2b = 2(1 + b) + 5$, et sépare la somme en deux morceaux.
3. Pour le premier morceau : les trois nombres $\frac{1 + b}{1 + a}$, $\frac{1 + c}{1 + b}$, $\frac{1 + a}{1 + c}$ ont pour produit $1$. Montre que trois nombres positifs de produit $1$ ont une somme au moins égale à $3$.
4. Pour le second morceau : développe $(x + y + z)\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right)$ et utilise $t + \frac{1}{t} \geqslant 2$.

## Solution

On note $S$ le membre de gauche. Pour $a = b = c = \frac{1}{3}$, chaque fraction vaut $\dfrac{7 + \frac{2}{3}}{1 + \frac{1}{3}} = \dfrac{23}{4}$, et $S = \dfrac{69}{4}$ : l'inégalité est donc la meilleure possible.

Posons $x = 1 + a$, $y = 1 + b$ et $z = 1 + c$. Ce sont des réels strictement positifs, et $x + y + z = 3 + 1 = 4$. Comme $7 + 2b = 2(1 + b) + 5 = 2y + 5$, et de même pour les autres numérateurs,

$$S = \frac{2y + 5}{x} + \frac{2z + 5}{y} + \frac{2x + 5}{z} = 2\left(\frac{y}{x} + \frac{z}{y} + \frac{x}{z}\right) + 5\left(\frac{1}{x} + \frac{1}{y} + \frac{1}{z}\right).$$

**Lemme 1.** Pour tout réel $t > 0$, on a $t + \dfrac{1}{t} \geqslant 2$.

En effet, $t + \dfrac{1}{t} - 2 = \dfrac{t^2 - 2t + 1}{t} = \dfrac{(t - 1)^2}{t} \geqslant 0$.

**Lemme 2.** Si $u$, $v$, $w$ sont des réels strictement positifs tels que $uvw = 1$, alors $u + v + w \geqslant 3$.

Rangeons les trois nombres. Le plus grand est au moins égal à $1$, sinon le produit serait plus petit que $1$. Le plus petit est au plus égal à $1$, sinon le produit serait plus grand que $1$. Quitte à changer les noms, on peut donc supposer $u \geqslant 1 \geqslant v$. Alors $(u - 1)(1 - v) \geqslant 0$, c'est-à-dire $u - uv - 1 + v \geqslant 0$, soit $u + v \geqslant 1 + uv$. Comme $w = \dfrac{1}{uv}$, le lemme 1 donne

$$u + v + w \geqslant 1 + uv + \frac{1}{uv} \geqslant 1 + 2 = 3.$$

**Lemme 3.** Si $x$, $y$, $z$ sont des réels strictement positifs, alors $(x + y + z)\left(\dfrac{1}{x} + \dfrac{1}{y} + \dfrac{1}{z}\right) \geqslant 9$.

En développant, on obtient neuf termes : trois termes égaux à $1$, et trois paires de la forme $\dfrac{x}{y} + \dfrac{y}{x}$. Chaque paire est au moins égale à $2$ d'après le lemme 1, donc le produit est au moins égal à $3 + 3 \times 2 = 9$.

**Conclusion.** Les trois nombres $\dfrac{y}{x}$, $\dfrac{z}{y}$, $\dfrac{x}{z}$ ont pour produit $1$, donc leur somme est au moins égale à $3$ d'après le lemme 2. D'après le lemme 3, et comme $x + y + z = 4$,

$$\frac{1}{x} + \frac{1}{y} + \frac{1}{z} \geqslant \frac{9}{x + y + z} = \frac{9}{4}.$$

Finalement,

$$S \geqslant 2 \times 3 + 5 \times \frac{9}{4} = 6 + \frac{45}{4} = \frac{69}{4}.$$

L'égalité a lieu pour $a = b = c = \frac{1}{3}$.

## Going further

Le lemme 2 est l'inégalité entre moyenne arithmétique et moyenne géométrique pour trois nombres : $\dfrac{u + v + w}{3} \geqslant \sqrt[3]{uvw}$. Le lemme 3 s'en déduit aussi, en multipliant $x + y + z \geqslant 3\sqrt[3]{xyz}$ et $\dfrac{1}{x} + \dfrac{1}{y} + \dfrac{1}{z} \geqslant \dfrac{3}{\sqrt[3]{xyz}}$.

La décomposition $7 + 2b = 2(1 + b) + 5$ n'est pas un hasard : on cherche à écrire chaque numérateur avec $1 + b$, le dénominateur de la fraction suivante, pour faire apparaître des quotients dont le produit vaut $1$.
