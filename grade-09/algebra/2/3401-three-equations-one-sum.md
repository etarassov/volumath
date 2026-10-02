---
id: "3401"
title: "Trois équations, une seule somme"
grade: 9
theme: algebra
difficulty: 2
duration_min: 10
tags: [systeme, equation, somme]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), AMC 10/12, Week 1: Algebra"
  reference: "Handout-4100-3834.pdf, exercice d'échauffement 3 (réponse dans Handout-4101-3834.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4100-3834.pdf"
---

## Statement

Trois nombres $x$, $y$ et $z$ vérifient les trois égalités suivantes :

$$x = y + z + 2, \qquad y = z + x + 1, \qquad z = x + y + 4.$$

Combien vaut $x + y + z$ ?

## Hints

1. On te demande la somme $x + y + z$, pas les trois nombres séparément. Peux-tu obtenir cette somme sans jamais calculer $x$, $y$ et $z$ ?
2. Additionne les trois égalités membre à membre.
3. À droite, chaque lettre apparaît exactement deux fois. Pose $S = x + y + z$ et regarde ce que devient l'égalité.

## Solution

**L'idée : additionner les trois lignes d'un coup.**

Additionnons les trois égalités membre à membre :

$$x + y + z = (y + z + 2) + (z + x + 1) + (x + y + 4).$$

À droite, la lettre $x$ apparaît deux fois, la lettre $y$ deux fois, la lettre $z$ deux fois, et les nombres donnent $2 + 1 + 4 = 7$. Donc

$$x + y + z = 2(x + y + z) + 7.$$

Posons $S = x + y + z$. L'égalité s'écrit $S = 2S + 7$, d'où $-S = 7$, c'est-à-dire

$$\boxed{x + y + z = -7.}$$

**Vérification.** On peut même retrouver les trois nombres. La première égalité donne $x = (y+z) + 2 = (S - x) + 2$, donc $2x = S + 2 = -5$ et $x = -\dfrac{5}{2}$. De même $2y = S + 1 = -6$ donne $y = -3$, et $2z = S + 4 = -3$ donne $z = -\dfrac{3}{2}$.

On contrôle : $-\dfrac52 - 3 - \dfrac32 = -7$, et $y + z + 2 = -3 - \dfrac32 + 2 = -\dfrac52 = x$. Tout est cohérent.
