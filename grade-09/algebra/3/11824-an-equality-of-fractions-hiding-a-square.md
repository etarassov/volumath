---
id: "11824"
title: "Une égalité de fractions qui cache un carré"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [factorisation, calcul litteral, carres, identites remarquables]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 12 ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois entiers strictement positifs tels que

$$\frac{a^2 - a - c}{b} + \frac{b^2 - b - c}{a} = a + b + 2.$$

Montrer que $a + b + c$ est un carré parfait.

## Hints

1. Commencer par se débarrasser des dénominateurs en multipliant les deux membres par $ab$.
2. Regrouper d'un côté les termes de degré $3$, de l'autre tout le reste. Factoriser chaque côté par $a + b$.
3. On pourra utiliser $a^3 + b^3 - a^2 b - a b^2 = a^2(a - b) - b^2(a - b)$.

## Solution

**Étape 1 : chasser les dénominateurs.** On multiplie les deux membres par $ab$, qui est non nul :

$$a(a^2 - a - c) + b(b^2 - b - c) = ab(a + b + 2),$$

c'est-à-dire

$$a^3 - a^2 - ac + b^3 - b^2 - bc = a^2 b + a b^2 + 2ab.$$

**Étape 2 : regrouper.** On met les termes de degré $3$ à gauche et le reste à droite :

$$a^3 + b^3 - a^2 b - a b^2 = a^2 + 2ab + b^2 + ac + bc.$$

**Étape 3 : factoriser chaque membre.** À gauche :

$$a^3 - a^2 b + b^3 - a b^2 = a^2 (a - b) - b^2 (a - b) = (a - b)(a^2 - b^2) = (a - b)^2 (a + b).$$

À droite :

$$(a + b)^2 + c(a + b) = (a + b)(a + b + c).$$

On obtient donc

$$(a + b)(a - b)^2 = (a + b)(a + b + c).$$

**Étape 4 : conclure.** Comme $a + b > 0$, on peut diviser par $a + b$ :

$$a + b + c = (a - b)^2.$$

Puisque $a - b$ est un entier, **$a + b + c$ est le carré de l'entier $a - b$.**

## Going further

- Trouver un exemple : choisir $a$ et $b$, puis $c$, pour que l'égalité de l'énoncé soit vraie. Pourquoi faut-il $a$ et $b$ assez éloignés ?
