---
id: "8050"
title: "Factoriser a¹⁰ + a⁵ + 1"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [factorisation, identite remarquable, polynome, racines cubiques de l unite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, cours de Groupe B"
  reference: "stage_ete_2017.pdf, « Groupe B : algèbre », lundi 21 après-midi (Mathieu Barré), exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Factoriser l'expression

$$a^{10} + a^5 + 1$$

en un produit de deux polynômes à coefficients entiers, l'un et l'autre de degré au moins $1$.

## Hints

1. Un polynôme de degré $10$ qui se factorise, c'est qu'il a un facteur « caché » de petit
   degré. Essaie de le deviner : les seuls exposants qui apparaissent sont $10$, $5$ et $0$,
   trois multiples de $5$... mais aussi trois nombres dont les restes dans la division par $3$
   sont $1$, $2$ et $0$.
2. Cela suggère le facteur $a^2 + a + 1$. Vérifie sur un exemple : que vaut $a^{10}+a^5+1$
   quand $a^3 = 1$ et $a \neq 1$ ? Tu peux faire le calcul sans connaître $a$, juste en
   remplaçant $a^3$ par $1$.
3. Pour la factorisation effective, écris
   $$a^{10} + a^5 + 1 = a(a^9 - 1) + a^2(a^3 - 1) + (a^2 + a + 1) ,$$
   après avoir vérifié que cette égalité est bien correcte.
4. Il ne reste plus qu'à voir que $a^9 - 1$ et $a^3 - 1$ sont tous les deux divisibles par
   $a^3 - 1$, lui-même divisible par $a^2 + a + 1$.

## Solution

La réponse est

$$\boxed{a^{10} + a^5 + 1 = (a^2 + a + 1)\,\big(a^8 - a^7 + a^5 - a^4 + a^3 - a + 1\big) .}$$

### Deviner le facteur

Supposons un instant que $a$ vérifie $a^3 = 1$ sans être égal à $1$ ; un tel nombre existe
parmi les nombres complexes, et il vérifie alors

$$a^2 + a + 1 = \frac{a^3 - 1}{a - 1} = 0 .$$

Pour un tel $a$, on peut remplacer $a^3$ par $1$ partout :

$$a^{10} = (a^3)^3 \times a = a , \qquad a^5 = a^3 \times a^2 = a^2 ,$$

donc

$$a^{10} + a^5 + 1 = a + a^2 + 1 = 0 .$$

Le polynôme s'annule là où $a^2 + a + 1$ s'annule : c'est le signe qu'il est divisible par
$a^2 + a + 1$. Reste à le montrer proprement, sans complexes.

### La factorisation, sans rien supposer

On part de l'identité, qu'il suffit de développer pour vérifier :

$$a^{10} + a^5 + 1 = a\,(a^9 - 1) \ + \ a^2\,(a^3 - 1) \ + \ (a^2 + a + 1) .$$

En effet, le membre de droite vaut $a^{10} - a + a^5 - a^2 + a^2 + a + 1 = a^{10} + a^5 + 1$.

Or

$$a^9 - 1 = (a^3)^3 - 1 = (a^3 - 1)\big(a^6 + a^3 + 1\big) ,$$

et surtout

$$a^3 - 1 = (a - 1)(a^2 + a + 1) .$$

Les trois morceaux contiennent donc tous le facteur $a^2 + a + 1$, et on peut le mettre en
facteur :

$$a^{10} + a^5 + 1 = (a^2 + a + 1)\Big[\, a\,(a-1)\big(a^6 + a^3 + 1\big) \ + \ a^2 (a-1) \ + \ 1 \,\Big] .$$

Il ne reste qu'à développer le crochet :

$$a(a-1)\big(a^6+a^3+1\big) = (a^2 - a)(a^6+a^3+1) = a^8 + a^5 + a^2 - a^7 - a^4 - a ,$$

puis

$$a^2(a-1) + 1 = a^3 - a^2 + 1 .$$

En additionnant, les termes $+a^2$ et $-a^2$ se simplifient :

$$a^8 - a^7 + a^5 - a^4 + a^3 - a + 1 .$$

D'où la factorisation annoncée.

### Vérification

Prenons $a = 2$. À gauche,

$$2^{10} + 2^5 + 1 = 1024 + 32 + 1 = 1057 .$$

À droite, $a^2+a+1 = 7$ et

$$256 - 128 + 32 - 16 + 8 - 2 + 1 = 151 ,$$

et effectivement $7 \times 151 = 1057$.

## Going further

Le second facteur ne se casse pas davantage : on peut montrer qu'il est irréductible sur les
entiers. Il porte un nom, c'est le quinzième polynôme cyclotomique, celui dont les racines
sont les nombres complexes $z$ tels que $z^{15} = 1$ et qu'aucune puissance plus petite ne
ramène à $1$.

La même idée sert ailleurs. Par exemple $a^{10} + a^5 + 1$ n'est jamais premier dès que
$a \geq 2$, puisque les deux facteurs valent alors tous les deux au moins $7$. Et le même
raisonnement montre que $a^{2n} + a^n + 1$ est divisible par $a^2 + a + 1$ chaque fois que $n$
n'est pas un multiple de $3$.
