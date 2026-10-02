---
id: "1208"
title: "Un polynôme caché dans un autre"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [polynome, racines, division-euclidienne, identification, degre]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, compétition d'automne 2023"
  reference: "Handout-4216-3990.pdf, problème 6.10 (réponse dans Handout-4217-3990.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4216-3990.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels tels que :

- le polynôme $g(x) = x^3 + a x^2 + x + 10$ possède **trois racines réelles distinctes** ;
- chacune de ces trois racines est aussi racine du polynôme $f(x) = x^4 + x^3 + b x^2 + 100 x + c$.

Calculer $f(1)$.

## Hints

1. Effectuer la division euclidienne de $f$ par $g$ : il existe des polynômes $Q$ et $R$ avec $f = gQ + R$ et $\deg R \leqslant 2$.
2. Que vaut $R$ en chacune des trois racines de $g$ ?
3. Un polynôme de degré au plus $2$ qui s'annule en trois nombres distincts ne peut être que le polynôme nul.
4. Il reste donc $f = g \times Q$. Quel est le degré de $Q$ ? Quel est son coefficient dominant, sachant que $f$ et $g$ sont unitaires ?
5. Écrire $Q(x) = x + s$, développer $g(x)(x+s)$ et identifier les coefficients avec ceux de $f$, un par un, en commençant par celui qui ne fait intervenir qu'une seule inconnue.

## Solution

**Étape 1 : $g$ divise $f$.**

Effectuons la division euclidienne de $f$ par $g$ : il existe deux polynômes $Q$ et $R$ tels que

$$f(x) = g(x)\,Q(x) + R(x), \qquad \deg R \leqslant 2.$$

Soit $r$ une racine de $g$. Par hypothèse $r$ est aussi racine de $f$, donc

$$R(r) = f(r) - g(r)\,Q(r) = 0 - 0 = 0.$$

Ainsi $R$ s'annule aux trois racines de $g$, qui sont distinctes. Un polynôme non nul de degré au plus $2$ a au plus deux racines : $R$ est donc le polynôme nul, et

$$f(x) = g(x)\,Q(x).$$

**Étape 2 : la forme de $Q$.**

Comme $\deg f = 4$ et $\deg g = 3$, on a $\deg Q = 1$. De plus $f$ et $g$ sont unitaires (coefficient de plus haut degré égal à $1$), donc $Q$ l'est aussi. Il existe donc un réel $s$ tel que

$$Q(x) = x + s.$$

**Étape 3 : identifier les coefficients.**

Développons :

$$g(x)(x+s) = (x^3 + ax^2 + x + 10)(x+s)$$
$$= x^4 + a x^3 + x^2 + 10x \;+\; s x^3 + as x^2 + s x + 10 s$$
$$= x^4 + (a + s)\,x^3 + (1 + as)\,x^2 + (10 + s)\,x + 10 s.$$

Comparons avec $f(x) = x^4 + x^3 + b x^2 + 100 x + c$ :

$$a + s = 1, \qquad 1 + as = b, \qquad 10 + s = 100, \qquad 10 s = c.$$

La troisième égalité ne contient qu'une inconnue : $s = 90$. On en déduit alors, dans l'ordre :

$$a = 1 - s = -89, \qquad b = 1 + as = 1 + (-89)(90) = 1 - 8010 = -8009, \qquad c = 10 \times 90 = 900.$$

**Étape 4 : la valeur demandée.**

$$f(1) = 1 + 1 + b + 100 + c = 1 + 1 - 8009 + 100 + 900 = -7007.$$

On peut aussi passer par la forme factorisée, ce qui est plus rapide :

$$f(1) = g(1) \times (1 + 90) = (1 - 89 + 1 + 10) \times 91 = (-77) \times 91 = -7007.$$

**Un mot sur l'hypothèse.** Il fallait bien trois racines **distinctes** : c'est ce qui force $R$ à être nul. Et l'hypothèse est réalisable : pour $a = -89$, le polynôme $g(x) = x^3 - 89x^2 + x + 10$ change de signe entre $-1$ et $0$, entre $0$ et $1$, puis entre $1$ et $100$ (on a $g(-1) = -81$, $g(0) = 10$, $g(1) = -77$ et $g(100) = 110\,110$), donc il a bien trois racines réelles distinctes d'après le théorème des valeurs intermédiaires.

**Conclusion.** $f(1) = -7007$.

## Going further

1. Retrouver $a$ autrement : les trois racines de $g$ ont pour somme $-a$ et pour produit $-10$. La quatrième racine de $f$ est $-s = -90$. Que disent les relations entre coefficients et racines de $f$ ?
2. Le problème aurait-il encore une réponse unique si $g$ n'avait que deux racines distinctes, l'une d'elles étant double ?
