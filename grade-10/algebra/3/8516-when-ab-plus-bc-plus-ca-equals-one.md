---
id: "8516"
title: "Quand ab + bc + ca vaut 1"
grade: 10
theme: algebra
difficulty: 3
duration_min: 30
tags: [inegalite, identite-remarquable, racine-carree, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 2 » (Théo), exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$, $b$, $c$ trois nombres réels positifs tels que

$$ab + bc + ca = 1 .$$

Démontrer que $a + b + c \geqslant \sqrt{3}$, et déterminer le cas d'égalité.

## Hints

1. Il y a une racine carrée dans la conclusion et pas dans l'hypothèse. Plutôt que de faire apparaître la racine, essaie de calculer $(a+b+c)^2$.
2. Développe $(a+b+c)^2$. Tu y verras apparaître $ab + bc + ca$, qui vaut $1$.
3. Il te restera à comparer $a^2 + b^2 + c^2$ et $ab + bc + ca$. Regarde la quantité $(a-b)^2 + (b-c)^2 + (c-a)^2$.

## Solution

**Un résultat intermédiaire.** Montrons d'abord que, pour tous réels $a$, $b$, $c$,

$$a^2 + b^2 + c^2 \geqslant ab + bc + ca . \qquad (\star)$$

En effet, en développant,

$$(a-b)^2 + (b-c)^2 + (c-a)^2 = 2a^2 + 2b^2 + 2c^2 - 2ab - 2bc - 2ca .$$

Le membre de gauche est une somme de carrés, donc positif ou nul. Donc
$2(a^2+b^2+c^2) - 2(ab+bc+ca) \geqslant 0$, ce qui donne bien $(\star)$.

**Le calcul principal.** On a

$$(a+b+c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca) .$$

D'après $(\star)$, $a^2 + b^2 + c^2 \geqslant ab + bc + ca = 1$, donc

$$(a+b+c)^2 \geqslant 1 + 2 \times 1 = 3 .$$

**La racine carrée.** Les nombres $a$, $b$, $c$ sont positifs, donc $a + b + c$ est positif.
Un nombre positif dont le carré vaut au moins $3$ est lui-même au moins $\sqrt{3}$ :

$$a + b + c \geqslant \sqrt{3} .$$

**Le cas d'égalité.** Il y a égalité seulement s'il y a égalité dans $(\star)$, c'est-à-dire
si $(a-b)^2 + (b-c)^2 + (c-a)^2 = 0$, donc si $a = b = c$.

Dans ce cas, la condition $ab + bc + ca = 1$ devient $3a^2 = 1$, donc
$a = \dfrac{1}{\sqrt{3}}$ (le cas $a$ négatif est exclu).

Réciproquement, pour $a = b = c = \dfrac{1}{\sqrt{3}}$, on a bien $ab + bc + ca = 3 \times \dfrac{1}{3} = 1$
et $a + b + c = \dfrac{3}{\sqrt{3}} = \sqrt{3}$.

L'égalité a donc lieu exactement pour $a = b = c = \dfrac{1}{\sqrt{3}}$.
