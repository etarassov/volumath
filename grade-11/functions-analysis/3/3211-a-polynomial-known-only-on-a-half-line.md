---
id: "3211"
title: "Un polynôme connu seulement par composition"
grade: 11
theme: functions-analysis
difficulty: 3
duration_min: 20
tags: [polynome, composition, changement-de-variable]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Functions review"
  reference: "Handout-4800-4981.pdf, section 2.2, exercice 6, d'après AHSME 1983, problème 18 (réponse dans Handout-4805-4981.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4800-4981.pdf"
---

## Statement

Soit $f$ une fonction **polynôme** telle que, pour tout réel $x$,

$$f\left( x^2 + 1 \right) = x^4 + 5x^2 + 3 .$$

Exprimer $f\left( x^2 - 1 \right)$ en fonction de $x$.

## Hints

1. On ne connaît $f$ qu'à travers la valeur qu'elle prend en $x^2+1$. Donne un nom à cette quantité : pose $y = x^2 + 1$.
2. Réécris le membre de droite en n'utilisant que $y$. Pour cela, remarque que $x^2 = y - 1$ et que $x^4 = \left( x^2 \right)^2$.
3. Tu obtiens une formule pour $f(y)$. Attention : cette formule n'est démontrée que pour les $y$ de la forme $x^2+1$, c'est-à-dire $y \ge 1$. Pourquoi l'hypothèse « $f$ est un polynôme » permet-elle quand même de conclure ?
4. Il ne reste plus qu'à remplacer $y$ par $x^2 - 1$ et à développer.

## Solution

**Changement de variable.**

Posons $y = x^2 + 1$. Alors $x^2 = y - 1$ et

$$x^4 = \left( x^2 \right)^2 = (y-1)^2 .$$

L'hypothèse devient

$$f(y) = x^4 + 5x^2 + 3 = (y-1)^2 + 5(y-1) + 3 .$$

Développons :

$$f(y) = y^2 - 2y + 1 + 5y - 5 + 3 = y^2 + 3y - 1 .$$

**Pourquoi cette formule vaut partout.**

Quand $x$ parcourt $\mathbb{R}$, la quantité $y = x^2+1$ prend toutes les valeurs de $[1 ; +\infty[$, et seulement celles-là. On a donc démontré

$$f(y) = y^2 + 3y - 1 \qquad \text{pour tout } y \ge 1 .$$

C'est ici que sert l'hypothèse « $f$ est un polynôme ». La différence

$$g(y) = f(y) - \left( y^2 + 3y - 1 \right)$$

est un polynôme qui s'annule en une infinité de points (tous les $y \ge 1$). Or un polynôme non nul n'a qu'un nombre fini de racines. Donc $g$ est le polynôme nul, et

$$f(y) = y^2 + 3y - 1 \qquad \text{pour tout réel } y .$$

**On remplace.**

$$f\left( x^2 - 1 \right) = \left( x^2 - 1 \right)^2 + 3\left( x^2 - 1 \right) - 1 .$$

$$= x^4 - 2x^2 + 1 + 3x^2 - 3 - 1$$

$$= x^4 + x^2 - 3 .$$

**Vérification.** Prenons $x = 1$. D'un côté $f(1^2-1) = f(0) = 0 + 0 - 1 = -1$, de l'autre $x^4+x^2-3 = 1+1-3 = -1$. Prenons $x = 2$ : $f(3) = 9 + 9 - 1 = 17$, et $x^4+x^2-3 = 16+4-3 = 17$. Cohérent.

**Conclusion.**

$$f\left( x^2 - 1 \right) = x^4 + x^2 - 3 .$$

## Going further

1. Que vaut $f(x)$ pour $x$ quelconque ? Vérifier alors directement que $f(x^2+1)$ redonne bien $x^4+5x^2+3$.
2. Sans l'hypothèse « $f$ est un polynôme », le problème aurait-il une réponse unique ? Construire une fonction $h$ qui vérifie $h(x^2+1) = x^4+5x^2+3$ mais pour laquelle $h(x^2-1)$ n'est pas $x^4+x^2-3$.
3. Trouver le polynôme $f$ tel que $f(x + 1) = x^2 - 3x$ pour tout réel $x$.
