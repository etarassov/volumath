---
id: "3404"
title: "Trois quotients égaux"
grade: 10
theme: algebra
difficulty: 2
duration_min: 15
tags: [quotient, substitution, puissances]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Week 1: Algebra"
  reference: "Handout-4100-3834.pdf, section 2.2, exercice 14 (réponse dans Handout-4101-3834.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4100-3834.pdf"
---

## Statement

Les nombres réels non nuls $x$ et $y$ vérifient

$$\frac{2}{x} = \frac{y}{3} = \frac{x}{y}.$$

Combien vaut $x^3$ ?

## Hints

1. On ne te demande ni $x$ ni $y$, mais $x^3$. Il faut donc faire disparaître $y$.
2. Multiplie entre eux le deuxième et le troisième quotient. Que se simplifie-t-il ?
3. Les trois quotients sont égaux : le produit de deux d'entre eux vaut donc le carré du premier.

## Solution

**L'idée : multiplier deux des trois quotients fait disparaître $y$.**

Appelons $k$ la valeur commune des trois quotients :

$$\frac{2}{x} = \frac{y}{3} = \frac{x}{y} = k.$$

Multiplions le deuxième et le troisième quotient. D'un côté, le $y$ se simplifie :

$$\frac{y}{3} \times \frac{x}{y} = \frac{x}{3}.$$

De l'autre côté, ce produit vaut $k \times k = k^2$. Or $k = \dfrac{2}{x}$, donc $k^2 = \dfrac{4}{x^2}$. On obtient

$$\frac{x}{3} = \frac{4}{x^2}.$$

En multipliant les deux membres par $3x^2$ (qui n'est pas nul) :

$$x^3 = 12.$$

**Conclusion : $x^3 = 12$.**

**Vérification.** Prenons $x = \sqrt[3]{12}$. Alors $k = \dfrac{2}{x}$ et $y = 3k = \dfrac{6}{x}$. Le troisième quotient vaut
$$\frac{x}{y} = \frac{x}{6/x} = \frac{x^2}{6} = \frac{x^3}{6x} = \frac{12}{6x} = \frac{2}{x} = k.$$
Les trois quotients sont bien égaux.
