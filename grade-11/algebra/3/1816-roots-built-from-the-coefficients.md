---
id: "1816"
title: "Des racines fabriquées avec les coefficients"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [second-degre, somme-et-produit, systeme, parametres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Vieta's formula"
  reference: "Handout-1551-1502.pdf, exercice 1 (corrigé dans Handout-1599-1504.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1551-1502.pdf"
---

## Statement

Trouver tous les couples de réels $(p, q)$ avec $p \neq q$ tels que les deux nombres

$$2p \qquad \text{et} \qquad p+q$$

soient les deux racines de l'équation

$$x^2 + px + q = 0.$$

## Hints

1. Rappelle-toi les relations entre les coefficients et les racines : si $x_1$ et $x_2$ sont les racines de $x^2+bx+c=0$, alors $x_1+x_2 = -b$ et $x_1x_2 = c$.
2. Applique-les ici avec $x_1 = 2p$, $x_2 = p+q$, $b = p$ et $c = q$. Tu obtiens deux équations reliant $p$ et $q$.
3. La première équation est très simple : elle donne $q$ en fonction de $p$. Reporte dans la seconde.
4. Tu obtiens une équation en $p$ seul. Mets $p$ en facteur.
5. Deux valeurs de $p$ sortent. L'une des deux est interdite par la condition $p \neq q$ : laquelle ?
6. Termine toujours par une vérification : reprends l'équation avec les valeurs trouvées et calcule ses racines.

## Solution

**Mise en équations.**

Pour l'équation $x^2 + px + q = 0$, la somme des racines vaut $-p$ et leur produit vaut $q$. Comme les racines sont $2p$ et $p+q$ :

$$2p + (p+q) = -p \qquad (1)$$
$$2p\,(p+q) = q \qquad (2)$$

**Utilisation de la première équation.**

$$(1) \iff 3p + q = -p \iff q = -4p.$$

**Report dans la seconde.**

$$2p\,(p + (-4p)) = -4p \iff 2p \times (-3p) = -4p \iff -6p^2 = -4p \iff 6p^2 - 4p = 0.$$

On factorise :

$$2p\,(3p - 2) = 0 \iff p = 0 \ \text{ ou } \ p = \frac{2}{3}.$$

**Élimination du cas interdit.**

- Si $p = 0$, alors $q = -4 \times 0 = 0$, donc $p = q$. Ce cas est exclu par l'énoncé.
- Si $p = \dfrac{2}{3}$, alors $q = -4 \times \dfrac{2}{3} = -\dfrac{8}{3}$. On a bien $p \neq q$.

**Vérification.**

Avec $p = \dfrac{2}{3}$ et $q = -\dfrac{8}{3}$, l'équation s'écrit

$$x^2 + \frac{2}{3}x - \frac{8}{3} = 0.$$

Son discriminant vaut

$$\Delta = \left(\frac{2}{3}\right)^2 + 4 \times \frac{8}{3} = \frac{4}{9} + \frac{96}{9} = \frac{100}{9}, \qquad \sqrt{\Delta} = \frac{10}{3}.$$

Les racines sont donc

$$\frac{-\frac{2}{3} - \frac{10}{3}}{2} = \frac{-\frac{12}{3}}{2} = \frac{-4}{2} = -2 \qquad \text{et} \qquad \frac{-\frac{2}{3} + \frac{10}{3}}{2} = \frac{\frac{8}{3}}{2} = \frac{4}{3}.$$

Or $2p = \dfrac{4}{3}$ et $p + q = \dfrac{2}{3} - \dfrac{8}{3} = -2$. Les racines trouvées sont bien $2p$ et $p+q$.

**Conclusion.** Le seul couple convenable est

$$\boxed{p = \frac{2}{3}, \qquad q = -\frac{8}{3}.}$$

## Going further

1. Que se passe-t-il si l'on supprime la condition $p \neq q$ ? Décris la solution supplémentaire et l'équation correspondante.
2. Cherche de la même façon tous les couples $(p,q)$ tels que $p$ et $q$ soient eux-mêmes les racines de $x^2+px+q=0$.
