---
id: "8260"
title: "Une fonction croissante qui se défait elle-même"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 25
tags: [fonction-croissante, composition, equation-fonctionnelle, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, « Équations fonctionnelles » (Vincent Jugé), exercice 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Déterminer toutes les fonctions $f$ définies sur $\mathbb{R}$, à valeurs dans $\mathbb{R}$,
**strictement croissantes**, et telles que

$$f(f(x)) = x \qquad \text{pour tout réel } x .$$

## Hints

1. Une fonction évidente convient. Laquelle ? Toute la question est de montrer qu'il n'y en a
   pas d'autre.
2. Raisonne par l'absurde : suppose qu'il existe un réel $x$ pour lequel $f(x) \ne x$. Deux cas.
3. Suppose $f(x) > x$. Applique $f$ aux deux membres. Que dit la stricte croissance ?
4. Recommence avec $f(x) < x$.

## Solution

**Réponse : la seule solution est la fonction identité $f(x) = x$.**

**Elle convient.** Si $f(x) = x$ pour tout $x$, alors $f$ est bien strictement croissante et
$f(f(x)) = f(x) = x$. ✓

**C'est la seule.**

Soit $f$ une solution et soit $x$ un réel. Montrons que $f(x) = x$. Supposons le contraire :
alors $f(x) > x$ ou $f(x) < x$.

*Premier cas : $f(x) > x$.*

Appliquons $f$ aux deux membres. Comme $f$ est strictement croissante, elle conserve l'ordre
strict :

$$f(f(x)) > f(x) .$$

Mais $f(f(x)) = x$ par hypothèse. On obtient donc

$$x > f(x) ,$$

alors qu'on était parti de $f(x) > x$. Les deux inégalités sont contradictoires.

*Deuxième cas : $f(x) < x$.*

De la même façon, la stricte croissance donne

$$f(f(x)) < f(x), \qquad \text{c'est-à-dire} \qquad x < f(x) ,$$

ce qui contredit $f(x) < x$.

**Conclusion.**

Les deux cas sont impossibles, donc $f(x) = x$. Comme $x$ était quelconque,

$$\boxed{f = \mathrm{id}, \ \text{c'est-à-dire } f(x) = x \ \text{pour tout } x .}$$

**Pourquoi la stricte croissance est essentielle.**

Sans cette hypothèse, il y a beaucoup d'autres solutions. Par exemple $f(x) = -x$ vérifie
$f(f(x)) = -(-x) = x$, mais elle est strictement **dé**croissante. Autre exemple : la fonction
qui échange $1$ et $2$ et laisse tout le reste en place.

## Going further

1. Déterminer toutes les fonctions strictement **décroissantes** $f$ telles que $f(f(x)) = x$.
   Il y en a beaucoup : en donner trois différentes.
2. Le raisonnement ci-dessus utilise-t-il que $f$ est définie sur $\mathbb{R}$ tout entier ?
   Reprendre l'énoncé pour une fonction strictement croissante de $[0,1]$ dans $[0,1]$.
3. Que donne le même raisonnement pour une fonction strictement croissante vérifiant
   $f(f(f(x))) = x$ ?
