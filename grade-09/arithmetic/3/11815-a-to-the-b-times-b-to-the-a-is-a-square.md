---
id: "11815"
title: "aᵇ·bᵃ est un carré, donc ab aussi"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carres, puissances, decomposition en facteurs premiers, nombres impairs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 5 (pot-pourri)"
  reference: "2021-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 1 (repris mot pour mot en exercice 10 des Seniors) ; corrigé 2021-04_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2021-02_sujet-envoi-5.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs **impairs**. On suppose que le nombre

$$a^b \times b^a$$

est un carré parfait.

Montrer que le produit $ab$ est lui aussi un carré parfait.

## Hints

1. Comme $a$ et $b$ sont impairs, on peut écrire $a = 2x + 1$ et $b = 2y + 1$ avec $x$ et $y$ entiers. Que devient $a^b$ ?
2. $a^b = a^{2y+1} = (a^y)^2 \times a$. Faire de même avec $b^a$, puis regrouper les deux carrés.
3. On obtient $N^2 \times ab = c^2$ pour des entiers $N$ et $c$. Regarder les exposants des nombres premiers dans la décomposition de chaque membre.

## Solution

**Étape 1 : faire apparaître un carré.** Comme $a$ et $b$ sont impairs, on écrit $a = 2x + 1$ et $b = 2y + 1$, où $x$ et $y$ sont des entiers positifs ou nuls. Alors

$$a^b = a^{2y+1} = \left(a^y\right)^2 \times a \qquad \text{et} \qquad b^a = b^{2x+1} = \left(b^x\right)^2 \times b.$$

En multipliant, et en posant $N = a^y b^x$ (un entier strictement positif) :

$$a^b \times b^a = N^2 \times ab.$$

Par hypothèse ce nombre est un carré : il existe un entier $c$ tel que $N^2 \times ab = c^2$.

**Étape 2 : un lemme sur les carrés.** Un entier $m \geqslant 1$ est un carré parfait si et seulement si, dans sa décomposition en produit de facteurs premiers, chaque nombre premier apparaît avec un exposant **pair**. En effet, si $m = d^2$, on obtient la décomposition de $m$ en doublant tous les exposants de celle de $d$ ; et réciproquement, si tous les exposants de $m$ sont pairs, on les divise par $2$ pour obtenir un entier $d$ tel que $d^2 = m$.

**Étape 3 : conclusion.** Prenons un nombre premier $q$ quelconque, et notons $\alpha$, $\beta$, $\gamma$ ses exposants dans les décompositions de $ab$, de $N$ et de $c$. L'égalité $N^2 \times ab = c^2$ donne, en comparant les exposants de $q$ des deux côtés (la décomposition est unique) :

$$2\beta + \alpha = 2\gamma, \qquad \text{donc} \qquad \alpha = 2(\gamma - \beta).$$

L'exposant $\alpha$ est donc pair. C'est vrai pour tout nombre premier $q$, donc, d'après le lemme, **$ab$ est un carré parfait**.

## Going further

- Où a-t-on utilisé que $a$ et $b$ sont impairs ? Trouver deux entiers $a$ et $b$ tels que $a^b \times b^a$ soit un carré mais pas $ab$. (On pourra essayer $a = 2$ et $b = 4$.)
- Montrer de même : si $a^b$ est un carré parfait, alors $a$ est un carré parfait ou $b$ est pair.
