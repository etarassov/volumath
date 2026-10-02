---
id: "10410"
title: "Quatre positifs, quatre négatifs, quatre inégalités"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, produit, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 3 (algèbre)"
  reference: "2017-10_ofm-2013-2014-envoi-3.pdf, Exercices du groupe B, exercice 1 ; corrigé 2017-10_ofm-2013-2014-envoi-3-solutions.pdf (le produit final y est mal recopié, « abcbdefgh »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-3.pdf"
---

## Statement

Existe-t-il quatre nombres strictement positifs $a$, $b$, $c$, $d$ et quatre nombres strictement négatifs $e$, $f$, $g$, $h$ qui vérifient les quatre inégalités suivantes en même temps ?

$$ae + bc > 0, \qquad ef + cg > 0, \qquad fd + gh > 0, \qquad da + hb > 0 .$$

## Hints

1. Dans chaque inégalité, un produit est positif et l'autre est négatif. Lesquels ?
2. Réécris chaque inégalité sous la forme « un produit de nombres positifs est plus grand qu'un autre produit de nombres positifs ». Par exemple, $ae + bc > 0$ devient $bc > a \times (-e)$, et $-e$ est positif.
3. Quand on a plusieurs inégalités entre nombres positifs, on a le droit de les multiplier membre à membre. Que trouve-t-on ?

## Solution

**La réponse est non.** Raisonnons par l'absurde : supposons que de tels nombres existent.

**Tout réécrire avec des nombres positifs.** Les nombres $-e$, $-f$, $-g$, $-h$ sont strictement positifs. Dans chaque inégalité, isolons le terme négatif et passons-le de l'autre côté :

- $ae + bc > 0$ s'écrit $bc > a \times (-e)$ ;
- $ef + cg > 0$ s'écrit $(-e)(-f) > c \times (-g)$, car $ef = (-e)(-f)$ ;
- $fd + gh > 0$ s'écrit $(-g)(-h) > (-f) \times d$, car $gh = (-g)(-h)$ ;
- $da + hb > 0$ s'écrit $da > (-h) \times b$.

Dans ces quatre inégalités, les deux membres sont des produits de nombres strictement positifs.

**Multiplier membre à membre.** Si $0 < x < y$ et $0 < z < t$, alors $xz < yt$. On peut donc multiplier les quatre inégalités membre à membre :

$$bc \times (-e)(-f) \times (-g)(-h) \times da \; > \; a(-e) \times c(-g) \times (-f)d \times (-h)b .$$

**Comparer les deux membres.** À gauche comme à droite, on trouve une fois chacun des huit nombres $a$, $b$, $c$, $d$, $-e$, $-f$, $-g$, $-h$. Les deux membres sont donc égaux au même produit

$$N = abcd \times (-e)(-f)(-g)(-h) ,$$

et l'inégalité dit $N > N$, ce qui est impossible.

**Conclusion.** Il n'existe pas de tels nombres : les quatre inégalités ne peuvent jamais être vraies en même temps.

## Going further

1. Montrer que trois des quatre inégalités peuvent être vraies en même temps.
2. Construire un problème du même genre avec trois nombres positifs et trois nombres négatifs.
