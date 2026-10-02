---
id: "11006"
title: "2ᶻ + 2 est le carré d'un rationnel"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [puissances, carres, fractions, fraction-irreductible, congruences, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Seniors, exercice 11 ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Trouver tous les couples $(z, r)$, où $z$ est un entier relatif et $r$ un nombre rationnel, tels que
$$2^z + 2 = r^2 .$$

On rappelle qu'un nombre rationnel s'écrit $\dfrac{a}{b}$ avec $a$ et $b$ entiers et $b \neq 0$, et que
$2^{-t} = \dfrac{1}{2^t}$.

## Hints

1. Si $(z, r)$ est solution, $(z, -r)$ aussi : tu peux supposer $r > 0$ et écrire $r = \dfrac{a}{b}$ sous forme irréductible.
2. Si $z \geqslant 0$, le nombre $r^2$ est entier. Montre qu'alors $r$ est un entier, puis regarde les restes dans la division par $4$.
3. Si $z = -t$ avec $t \geqslant 1$, écris $2^z + 2$ comme une fraction irréductible et compare-la à $\dfrac{a^2}{b^2}$.
4. Tu dois arriver à $(a-1)(a+1) = 2^{t+1}$. Quelles puissances de $2$ diffèrent de $2$ ?

## Solution

**Préparation.** Le nombre $2^z + 2$ est strictement positif, donc $r \neq 0$. Si $(z, r)$ est solution,
$(z, -r)$ l'est aussi. On cherche donc les solutions avec $r > 0$, puis on ajoutera les opposés.

On écrit $r = \dfrac{a}{b}$ sous forme irréductible, avec $a, b \geqslant 1$ sans facteur premier commun.
Alors $a^2$ et $b^2$ n'ont pas non plus de facteur premier commun (leurs facteurs premiers sont ceux
de $a$ et de $b$), donc $r^2 = \dfrac{a^2}{b^2}$ est aussi sous forme irréductible.

**Premier cas : $z \geqslant 0$.** Alors $2^z + 2$ est un entier, donc la fraction irréductible
$\dfrac{a^2}{b^2}$ est un entier : son dénominateur vaut $1$, donc $b = 1$ et $r = a$ est un entier. On
cherche donc les entiers $a \geqslant 1$ tels que $a^2 = 2^z + 2$.

- $z = 0$ : $a^2 = 3$, impossible.
- $z = 1$ : $a^2 = 4$, donc $a = 2$.
- $z \geqslant 2$ : $2^z$ est un multiple de $4$, donc $2^z + 2$ a pour reste $2$ dans la division par $4$.
  Or un carré a toujours pour reste $0$ ou $1$ : si $a = 2c$, $a^2 = 4c^2$ ; si $a = 2c + 1$,
  $a^2 = 4c^2 + 4c + 1$. C'est impossible.

**Second cas : $z < 0$.** On pose $z = -t$ avec $t \geqslant 1$. Alors
$$2^z + 2 = \frac{1}{2^t} + 2 = \frac{1 + 2^{t+1}}{2^t} .$$
Cette fraction est irréductible : le numérateur $1 + 2^{t+1}$ est impair, et le dénominateur n'a que
des facteurs $2$. Deux fractions irréductibles à dénominateurs positifs qui sont égales ont le même
numérateur et le même dénominateur. Donc
$$a^2 = 1 + 2^{t+1} \qquad \text{et} \qquad b^2 = 2^t .$$

La première égalité s'écrit $(a - 1)(a + 1) = 2^{t+1}$. Les deux nombres $a - 1$ et $a + 1$ sont des
diviseurs positifs d'une puissance de $2$ (on a $a - 1 \geqslant 1$, car $a^2 \geqslant 5$), donc ce sont
eux-mêmes des puissances de $2$, et ils diffèrent de $2$.

Or si deux puissances de $2$ valent toutes les deux au moins $4$, elles sont multiples de $4$ et leur
différence aussi : elle ne peut pas valoir $2$. La plus petite, $a - 1$, vaut donc $1$ ou $2$. Avec
$a - 1 = 1$, on aurait $a + 1 = 3$, qui n'est pas une puissance de $2$. Il reste $a - 1 = 2$ et
$a + 1 = 4$, soit $a = 3$, puis $2^{t+1} = 8$, donc $t = 2$, et $b^2 = 4$, donc $b = 2$.

On obtient $z = -2$ et $r = \dfrac{3}{2}$. Vérification : $2^{-2} + 2 = \dfrac{1}{4} + 2 = \dfrac{9}{4} = \left(\dfrac{3}{2}\right)^2$.

**Conclusion.** En ajoutant les valeurs négatives de $r$, les solutions sont
$$(z, r) = (1, 2), \quad (1, -2), \quad \left(-2, \tfrac{3}{2}\right), \quad \left(-2, -\tfrac{3}{2}\right).$$
