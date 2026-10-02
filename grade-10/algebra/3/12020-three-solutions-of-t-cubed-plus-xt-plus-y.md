---
id: "12020"
title: "a³ + ax + y = 0 pour trois nombres distincts"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, identites remarquables, systemes, calcul litteral]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test d'entraînement de janvier 2013"
  reference: "2017-10_ofm-2012-2013-test-janvier.pdf, exercice 2 (sujet junior) ; corrigé 2017-10_ofm-2012-2013-test-janvier-corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2012-2013-test-janvier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2012-2013-test-janvier.pdf"
---

## Statement

Les réels $a$, $b$, $c$ sont deux à deux distincts et non nuls. On suppose qu'il existe deux réels $x$ et $y$ tels que

$$a^3 + ax + y = 0, \qquad b^3 + bx + y = 0, \qquad c^3 + cx + y = 0 .$$

Démontrer que $a + b + c = 0$.

## Hints

1. Retranchez deux des égalités : le nombre $y$ disparaît.
2. Vérifiez en développant que $a^3 - c^3 = (a - c)(a^2 + ac + c^2)$.
3. Vous obtenez $a^2 + ac + c^2 + x = 0$, puis une égalité semblable avec $b$ et $c$. Retranchez-les à nouveau : cette fois, c'est $x$ qui disparaît.

## Solution

**Étape 1 : faire disparaître $y$.** Retranchons la troisième égalité de la première :

$$\left(a^3 - c^3\right) + (a - c)\,x = 0 .$$

En développant, on vérifie que $(a - c)(a^2 + ac + c^2) = a^3 + a^2 c + a c^2 - a^2 c - a c^2 - c^3 = a^3 - c^3$. L'égalité s'écrit donc

$$(a - c)\left(a^2 + ac + c^2 + x\right) = 0 .$$

Un produit est nul seulement si l'un des facteurs est nul. Comme $a \neq c$, le premier facteur n'est pas nul, donc

$$a^2 + ac + c^2 + x = 0 . \qquad (1)$$

De la même façon, en retranchant la troisième égalité de la deuxième, et comme $b \neq c$ :

$$b^2 + bc + c^2 + x = 0 . \qquad (2)$$

**Étape 2 : faire disparaître $x$.** Retranchons $(2)$ de $(1)$ :

$$a^2 - b^2 + ac - bc = 0, \qquad \text{c'est-à-dire} \qquad (a - b)(a + b) + (a - b)\,c = 0,$$

soit

$$(a - b)(a + b + c) = 0 .$$

Comme $a \neq b$, le premier facteur n'est pas nul.

**Conclusion.** On a donc $a + b + c = 0$.

## Going further

L'hypothèse « non nuls » ne sert pas. Seul compte que $a$, $b$, $c$ soient distincts.

L'énoncé dit que $a$, $b$, $c$ sont trois solutions différentes de l'équation $t^3 + xt + y = 0$, d'inconnue $t$. Le résultat est un cas particulier d'une règle générale : dans une équation $t^3 + p\,t^2 + q\,t + r = 0$ qui a trois solutions distinctes, la somme des solutions vaut $-p$. Ici il n'y a pas de terme en $t^2$, donc $p = 0$.
