---
id: "11005"
title: "a⁵b + 3 et ab⁵ + 3, deux cubes à la fois ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, cubes, restes, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 3 (arithmétique)"
  reference: "2020-01_sujet-envoi-3.pdf, Exercices Juniors, exercice 9 (le même énoncé est repris en exercice 14, Exercices Seniors) ; corrigé 2020-02_corrige-commente-envoi-3.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/01/sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-01_sujet-envoi-3.pdf"
---

## Statement

Un **cube parfait** est un entier de la forme $c^3$, où $c$ est un entier relatif (par exemple $-8$, $0$, $27$).

Existe-t-il des entiers relatifs $a$ et $b$ tels que les deux nombres
$$a^5 b + 3 \qquad \text{et} \qquad a b^5 + 3$$
soient tous les deux des cubes parfaits ?

## Hints

1. Les cubes ont très peu de restes possibles dans la division par $9$. Lesquels ?
2. Si $3$ divise $a$, quel est le reste de $a^5 b + 3$ dans la division par $9$ ?
3. On peut donc supposer que $3$ ne divise ni $a$ ni $b$. Pose $x = a^5 b$ et $y = a b^5$. Quels restes peuvent avoir $x$ et $y$ ?
4. Calcule le produit $xy$ : c'est une puissance sixième. Quel est son reste dans la division par $9$ ?

## Solution

On écrit $u \equiv v \pmod 9$ quand $u$ et $v$ ont le même reste dans la division par $9$. Le reste d'une
somme ou d'un produit ne dépend que des restes des termes.

**Les cubes modulo 9.** Tout entier est congru à l'un des nombres $0, \pm 1, \pm 2, \pm 3, \pm 4$ modulo $9$.
Leurs cubes sont $0$, $\pm 1$, $\pm 8$, $\pm 27$, $\pm 64$, et
$$8 \equiv -1, \qquad 27 \equiv 0, \qquad 64 = 63 + 1 \equiv 1 \pmod 9 .$$
Un cube a donc toujours pour reste $0$, $1$ ou $8$ dans la division par $9$. De plus, le reste $0$
n'arrive que pour les multiples de $3$ : si $3$ ne divise pas $c$, alors $c^3 \equiv 1$ ou $c^3 \equiv -1$.

Supposons maintenant que $a^5 b + 3$ et $a b^5 + 3$ soient des cubes, et cherchons une contradiction.

**Étape 1 : 3 ne divise ni $a$ ni $b$.** Si $3$ divise $a$, alors $3^5$ divise $a^5$, donc $9$ divise
$a^5 b$ et $a^5 b + 3 \equiv 3 \pmod 9$. Ce n'est pas un reste de cube. De même, si $3$ divise $b$, alors
$9$ divise $a b^5$ et $a b^5 + 3 \equiv 3 \pmod 9$, impossible aussi.

**Étape 2 : les restes de $x = a^5 b$ et $y = a b^5$.** Comme $3$ ne divise ni $a$ ni $b$, il ne divise pas
$x$, donc il ne divise pas non plus $x + 3$. Le cube $x + 3$ n'est donc pas de reste $0$ : il a pour
reste $1$ ou $8$. Alors
$$x \equiv 1 - 3 = -2 \equiv 7 \qquad \text{ou} \qquad x \equiv 8 - 3 = 5 \pmod 9 .$$
Pour la même raison, $y \equiv 7$ ou $y \equiv 5 \pmod 9$.

**Étape 3 : le reste du produit $xy$.** On a
$$xy = a^5 b \times a b^5 = a^6 b^6 = \left( (ab)^3 \right)^2 .$$
Comme $3$ ne divise pas $ab$, le cube $(ab)^3$ est congru à $1$ ou à $-1$, et son carré est congru à
$1$. Donc $xy \equiv 1 \pmod 9$.

Mais avec $x$ et $y$ chacun congru à $5$ ou à $7$, les seules possibilités pour le produit sont
$$5 \times 5 = 25 \equiv 7, \qquad 5 \times 7 = 35 \equiv 8, \qquad 7 \times 7 = 49 \equiv 4 \pmod 9 .$$
Aucune ne vaut $1$ : c'est la contradiction cherchée.

**Conclusion.** Il n'existe pas d'entiers $a$ et $b$ tels que $a^5 b + 3$ et $a b^5 + 3$ soient tous les
deux des cubes parfaits.

## Going further

Le corrigé officiel suit un autre chemin : il montre que $9$ divise $a^2 - b^2$, puis que
$a^5 b + 3 \equiv (ab)^3 + 3 \pmod 9$, ce qui n'est jamais un cube puisque deux cubes ne diffèrent
jamais de $3$ modulo $9$. Refaire ce raisonnement est un bon exercice.
