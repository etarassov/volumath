---
id: "7149"
title: "Somme treize, produit quarante et un"
grade: 11
theme: algebra
difficulty: 2
duration_min: 15
tags: [identites remarquables, somme et produit, polynomes symetriques]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Avancés : algèbre », mercredi après-midi (Jean-Louis Tu), exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels tels que

$$a + b = 13 \qquad \text{et} \qquad ab = 41 .$$

Calculer $a^3 + b^3$.

## Hints

1. Il est possible de calculer $a$ et $b$ (ce sont les racines d'une équation du second
   degré), mais ce n'est pas la bonne idée : les valeurs sont laides.
2. Développe $(a+b)^3$. Quels termes apparaissent en plus de $a^3$ et $b^3$ ?
3. Les deux termes en trop peuvent-ils s'écrire avec $ab$ et $a+b$ ?

## Solution

**L'identité.** Développons le cube de la somme :

$$(a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3 = a^3 + b^3 + 3ab\,(a+b) .$$

D'où

$$a^3 + b^3 = (a+b)^3 - 3ab\,(a+b) .$$

**L'application.** Avec $a + b = 13$ et $ab = 41$ :

$$a^3 + b^3 = 13^3 - 3 \times 41 \times 13 = 2197 - 1599 = 598 .$$

**Conclusion.** $\boxed{a^3 + b^3 = 598}$.

## Going further

On n'a jamais eu besoin de connaître $a$ et $b$. C'est le principe des **fonctions
symétriques** : toute expression symétrique en $a$ et $b$ (c'est-à-dire qui ne change pas
quand on échange les deux lettres) s'exprime à l'aide de $s = a+b$ et $p = ab$ seulement.

Par exemple :

$$a^2 + b^2 = s^2 - 2p, \qquad a^3 + b^3 = s^3 - 3ps, \qquad a^4 + b^4 = s^4 - 4ps^2 + 2p^2 .$$

Pour information, $a$ et $b$ sont ici les racines de $X^2 - 13X + 41 = 0$, c'est-à-dire
$\dfrac{13 \pm \sqrt{5}}{2}$. Essaie de calculer $a^3 + b^3$ à partir de là : tu verras
pourquoi la méthode ci-dessus est préférable.

Une question pour continuer : avec les mêmes $a$ et $b$, combien vaut $a^5 + b^5$ ?
