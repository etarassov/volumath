---
id: "5004"
title: "Simplifier une fraction énorme"
grade: 9
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [pgcd, algorithme d euclide, fractions, division euclidienne]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « Introduction to Diophantine Equations », Tom Davis, 2006"
  reference: "diophantine.pdf, section 3 « Reducing Fractions »"
  url: "https://mathcircles.org/activity/introduction-to-diophantine-equations/"
  original_language: "en"
  local_copy: "sources/originals/namc/diophantine.pdf"
---

## Statement

Rendre la fraction suivante irréductible :

$$\frac{179\,703\,941}{215\,237\,573} .$$

Chercher les diviseurs de ces deux nombres un par un est hors de question : il faudrait
essayer des centaines de nombres premiers. Il existe pourtant une méthode qui donne la
réponse en cinq lignes.

## Hints

1. Pour simplifier une fraction au maximum, il faut diviser le numérateur et le dénominateur
   par leur $\mathrm{PGCD}$.
2. Il existe une méthode pour trouver un $\mathrm{PGCD}$ **sans jamais factoriser** : c'est
   l'algorithme d'Euclide.
3. Le principe : si $a = bq + r$, alors $\mathrm{PGCD}(a, b) = \mathrm{PGCD}(b, r)$. On
   remplace donc le couple $(a, b)$ par le couple $(b, r)$, plus petit, et on recommence.
4. Pose les divisions les unes après les autres jusqu'à trouver un reste nul. Le dernier
   reste non nul est le $\mathrm{PGCD}$.
5. Il te faudra cinq divisions. La dernière tombe juste.

## Solution

**L'outil : l'algorithme d'Euclide.**

Si $a = bq + r$, alors tout diviseur commun à $a$ et $b$ divise aussi $r = a - bq$, et tout
diviseur commun à $b$ et $r$ divise aussi $a = bq + r$. Les deux couples ont donc exactement
les mêmes diviseurs communs, et en particulier

$$\mathrm{PGCD}(a, b) = \mathrm{PGCD}(b, r) .$$

On peut donc remplacer les nombres par des nombres plus petits, encore et encore, jusqu'à
tomber sur un reste nul.

**On déroule l'algorithme.**

$$215\,237\,573 = 1 \times 179\,703\,941 + 35\,533\,632$$
$$179\,703\,941 = 5 \times 35\,533\,632 + 2\,035\,781$$
$$35\,533\,632 = 17 \times 2\,035\,781 + 925\,355$$
$$2\,035\,781 = 2 \times 925\,355 + 185\,071$$
$$925\,355 = 5 \times 185\,071 + 0$$

Le dernier reste non nul est $185\,071$, donc

$$\mathrm{PGCD}(179\,703\,941,\ 215\,237\,573) = 185\,071 .$$

**On simplifie.**

$$179\,703\,941 = 185\,071 \times 971 \qquad \text{et} \qquad 215\,237\,573 = 185\,071 \times 1163 .$$

(On peut vérifier ces deux divisions à la main, ou au moins la première :
$185\,071 \times 971 = 185\,071 \times 1000 - 185\,071 \times 29 = 185\,071\,000 - 5\,367\,059
= 179\,703\,941$.)

Donc

$$\frac{179\,703\,941}{215\,237\,573} = \boxed{\dfrac{971}{1163}} .$$

**Pourquoi c'est bien irréductible.** On a divisé par le **plus grand** diviseur commun. S'il
restait un diviseur commun $d > 1$ à $971$ et $1163$, alors $185\,071 \times d$ serait un
diviseur commun aux deux nombres de départ, plus grand que le $\mathrm{PGCD}$ : impossible.

## Going further

Il vaut la peine de mesurer ce qu'on a évité. Les trois nombres $185\,071$, $971$ et $1163$
sont tous les trois premiers, si bien que

$$179\,703\,941 = 971 \times 185\,071 \qquad \text{et} \qquad 215\,237\,573 = 1163 \times 185\,071 .$$

Pour trouver cela en factorisant, il aurait fallu essayer tous les nombres premiers jusqu'à
$971$, c'est-à-dire $163$ divisions rien que pour le numérateur, puis recommencer pour le
dénominateur. L'algorithme d'Euclide, lui, a fini en cinq divisions et n'a jamais eu besoin de
savoir que ces nombres étaient premiers.

C'est exactement pour cette raison qu'il est encore utilisé aujourd'hui, y compris dans les
systèmes de chiffrement des cartes bancaires : trouver un $\mathrm{PGCD}$ est rapide,
factoriser un grand nombre ne l'est pas.
