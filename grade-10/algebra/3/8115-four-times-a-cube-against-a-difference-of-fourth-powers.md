---
id: "8115"
title: "4a³(a − b) contre a⁴ − b⁴"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, factorisation, puissances]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe A"
  reference: "stage_ete_2018.pdf, Groupe A, « Algèbre – Calculs algébriques », exercice 11"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Soient $a$ et $b$ deux nombres réels tels que $a > b > 0$. Montrer que

$$4a^3(a-b) \geq a^4 - b^4.$$

## Hints

1. Le membre de gauche contient le facteur $a - b$. Essaie de le faire apparaître aussi à droite.
2. Factorise $a^4 - b^4$ le plus complètement possible : d'abord comme une différence de deux carrés, puis encore une fois.
3. Tu obtiendras $a^4 - b^4 = (a-b)(a^3 + a^2b + ab^2 + b^3)$. Comme $a - b > 0$, tu peux simplifier par ce facteur sans changer le sens de l'inégalité.
4. Il reste à comparer $4a^3$ à une somme de quatre termes. Compare-les un par un, en utilisant $0 < b < a$.

## Solution

**Étape 1 : factoriser le membre de droite.**

$$a^4 - b^4 = (a^2)^2 - (b^2)^2 = (a^2 - b^2)(a^2 + b^2) = (a-b)(a+b)(a^2+b^2).$$

Développons le produit des deux derniers facteurs :

$$(a+b)(a^2+b^2) = a^3 + ab^2 + a^2b + b^3.$$

Donc

$$a^4 - b^4 = (a-b)\left(a^3 + a^2b + ab^2 + b^3\right).$$

**Étape 2 : simplifier par $a-b$.**

Comme $a > b$, le nombre $a - b$ est strictement positif. Diviser les deux membres de l'inégalité par $a-b$ ne change donc pas son sens : l'inégalité à démontrer équivaut à

$$4a^3 \geq a^3 + a^2b + ab^2 + b^3.$$

**Étape 3 : comparer les quatre termes.**

On sait que $0 < b < a$. Comparons chacun des quatre termes de droite à $a^3$.

- $a^3 \leq a^3$, c'est clair.
- $a^2 b < a^2 \times a = a^3$, car $b < a$ et $a^2 > 0$.
- $ab^2 < a \times a^2 = a^3$, car $b^2 < a^2$ (les deux nombres $b$ et $a$ sont positifs) et $a > 0$.
- $b^3 < a^3$, car $0 < b < a$.

En additionnant ces quatre comparaisons :

$$a^3 + a^2b + ab^2 + b^3 < a^3 + a^3 + a^3 + a^3 = 4a^3.$$

**Conclusion.**

L'inégalité $4a^3 \geq a^3 + a^2b + ab^2 + b^3$ est donc vraie (et même stricte), et en remultipliant par $a - b > 0$ :

$$4a^3(a-b) \geq a^4 - b^4.$$
