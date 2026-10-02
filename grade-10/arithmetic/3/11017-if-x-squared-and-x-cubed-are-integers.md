---
id: "11017"
title: "Si x² et x³ sont entiers, x l'est aussi"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [rationnels, fraction-irreductible, nombres-premiers, raisonnement-par-labsurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2020-2021 n° 3 (arithmétique)"
  reference: "2020-12_Sujet-envoi-3.pdf, Exercices Seniors, exercice 11 ; corrigé 2021-02_Corrige-envoi-3.pdf. Le corrigé conclut avec les valuations p-adiques ; on passe ici par une fraction irréductible."
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/12/Sujet-envoi-3.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-12_Sujet-envoi-3.pdf"
---

## Statement

Soit $x$ un nombre réel positif ou nul tel que $x^2$ et $x^3$ soient tous les deux des entiers.

Montrer que $x$ est un entier.

## Hints

1. Sans hypothèse supplémentaire, $x$ pourrait être irrationnel, comme $\sqrt{2}$. Commence par montrer
   que $x$ est un quotient de deux entiers.
2. Si $x \neq 0$, on a $x = \dfrac{x^3}{x^2}$. Écris alors $x$ sous forme de fraction irréductible
   $\dfrac{a}{b}$.
3. Que vaut $x^2$ en fonction de $a$ et $b$ ? Si $b > 1$, prends un nombre premier qui divise $b$.

## Solution

**Le cas $x = 0$.** Alors $x$ est un entier, il n'y a rien à faire. Supposons désormais $x > 0$.

**$x$ est un nombre rationnel.** Comme $x > 0$, on a $x^2 > 0$ et l'on peut écrire
$$x = \frac{x^3}{x^2} ,$$
qui est le quotient de deux entiers. On peut donc écrire $x$ sous forme de fraction irréductible
$$x = \frac{a}{b}, \qquad a \text{ et } b \text{ entiers strictement positifs sans facteur premier commun.}$$

**On montre que $b = 1$.** On a $x^2 = \dfrac{a^2}{b^2}$, et ce nombre est un entier $k$ : $a^2 = k\, b^2$.

Supposons $b > 1$ et prenons un nombre premier $q$ qui divise $b$. Alors $q$ divise $b^2$, donc $q$ divise
$a^2 = a \times a$. Un nombre premier qui divise un produit divise l'un des facteurs, donc $q$ divise $a$.
Ainsi $q$ divise à la fois $a$ et $b$, ce qui contredit le fait que la fraction $\dfrac{a}{b}$ est
irréductible.

Donc $b = 1$.

**Conclusion.** $x = a$ est un entier.

## Going further

Les deux hypothèses sont nécessaires. Avec $x = \sqrt{2}$, le carré $x^2 = 2$ est entier mais pas $x$.
Avec $x = \sqrt[3]{2}$, le cube $x^3 = 2$ est entier mais pas $x$.

Plus généralement, si $x^m$ et $x^n$ sont des entiers et que $m$ et $n$ n'ont pas de diviseur commun autre
que $1$, alors $x$ est un entier. Peux-tu le démontrer avec $m = 5$ et $n = 7$ ?
