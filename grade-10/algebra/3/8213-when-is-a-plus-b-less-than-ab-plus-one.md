---
id: "8213"
title: "Quand a + b est-il plus petit que ab + 1 ?"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inequation, factorisation, signe-d-un-produit]
adapted_from: null
see_also: ["8108"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe A"
  reference: "PolycopieV1-1.pdf, chapitre III « Groupe A », première partie, « TD manipulations algébriques, récurrence » (Yohann D'Anello), exercice 9"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Trouver tous les couples de réels $(a, b)$ tels que

$$a + b < ab + 1 .$$

## Hints

1. Une inéquation avec deux inconnues ne se « résout » pas comme une équation à une inconnue : il faut décrire l'ensemble des couples qui marchent.
2. Commence par tout mettre du même côté, de façon à comparer une expression à $0$.
3. Tu obtiens $ab - a - b + 1 > 0$. Regarde bien ces quatre termes : ne se factorisent-ils pas ?
4. Une fois l'expression écrite comme un **produit**, la question devient : quand un produit de deux facteurs est-il strictement positif ?

## Solution

**Factoriser.**

Rassemblons tout à droite :

$$a + b < ab + 1 \quad \Longleftrightarrow \quad 0 < ab + 1 - a - b \quad \Longleftrightarrow \quad ab - a - b + 1 > 0 .$$

Les quatre termes se factorisent en regroupant deux par deux :

$$ab - a - b + 1 = a(b-1) - (b-1) = (a-1)(b-1) .$$

L'inéquation de départ est donc **exactement équivalente** à

$$(a-1)(b-1) > 0 .$$

**Quand un produit est-il strictement positif ?**

Un produit de deux nombres est strictement positif exactement quand les deux facteurs sont non nuls et **de même signe**. Il y a donc deux familles de solutions.

*Premier cas : les deux facteurs sont strictement positifs.*

$$a - 1 > 0 \ \text{ et } \ b - 1 > 0, \qquad \text{c'est-à-dire} \qquad a > 1 \ \text{ et } \ b > 1 .$$

*Second cas : les deux facteurs sont strictement négatifs.*

$$a - 1 < 0 \ \text{ et } \ b - 1 < 0, \qquad \text{c'est-à-dire} \qquad a < 1 \ \text{ et } \ b < 1 .$$

**Conclusion.**

$$\boxed{a + b < ab + 1 \iff (a > 1 \text{ et } b > 1) \ \text{ ou } \ (a < 1 \text{ et } b < 1) .}$$

Autrement dit : l'inégalité est vraie exactement quand $a$ et $b$ sont **du même côté de $1$**.

**Vérifications rapides.**

- $a = 3$, $b = 2$ : à gauche $5$, à droite $7$. L'inégalité est vraie, et les deux nombres sont $> 1$. ✓
- $a = 0$, $b = -4$ : à gauche $-4$, à droite $1$. Vraie, et les deux nombres sont $< 1$. ✓
- $a = 5$, $b = 0$ : à gauche $5$, à droite $1$. Fausse, et les deux nombres sont bien de part et d'autre de $1$. ✓
- $a = 1$, $b$ quelconque : à gauche $1 + b$, à droite $b + 1$. Égalité, donc l'inégalité stricte est fausse. ✓ (Cohérent : $a - 1 = 0$ annule le produit.)

## Going further

Décrire de la même façon l'ensemble des couples $(a,b)$ tels que $a + b < ab + 4$. *Indication : chercher un nombre $c$ tel que l'inégalité se factorise en $(a - c)(b - c) > 0$ ; est-ce toujours possible ?*
