---
id: "1612"
title: "Au moins une des trois équations a une solution"
grade: 11
theme: algebra
difficulty: 3
duration_min: 20
tags: [second-degre, discriminant, somme-de-carres, raisonnement-par-labsurde]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 20 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels quelconques. On considère les trois équations

$$x^2 + (a-b)\,x + (b-c) = 0,$$
$$x^2 + (b-c)\,x + (c-a) = 0,$$
$$x^2 + (c-a)\,x + (a-b) = 0.$$

Montrer qu'au moins l'une de ces trois équations admet une solution réelle.

## Hints

1. Une équation du second degré $x^2 + px + q = 0$ a une solution réelle exactement quand son discriminant est positif ou nul. Écris les trois discriminants.
2. Raisonne par l'absurde : suppose qu'aucune des trois n'a de solution réelle. Que peux-tu dire alors de la **somme** des trois discriminants ?
3. Calcule cette somme. Les termes du premier degré se regroupent : que vaut $(a-b) + (b-c) + (c-a)$ ?
4. Il ne reste qu'une somme de trois carrés.

## Solution

**L'idée : on ne cherche pas quelle équation a une racine, on additionne les trois
discriminants. Leur somme est positive, donc l'un d'eux au moins l'est.**

**Étape 1. Les trois discriminants.**

Pour une équation $x^2 + px + q = 0$, le discriminant vaut $\Delta = p^2 - 4q$, et
l'équation a au moins une solution réelle si et seulement si $\Delta \ge 0$.

Ici :
$$\Delta_1 = (a-b)^2 - 4(b-c), \qquad
\Delta_2 = (b-c)^2 - 4(c-a), \qquad
\Delta_3 = (c-a)^2 - 4(a-b).$$

**Étape 2. La somme des trois discriminants.**

$$\Delta_1 + \Delta_2 + \Delta_3 = (a-b)^2 + (b-c)^2 + (c-a)^2 \;-\; 4\bigl[(b-c) + (c-a) + (a-b)\bigr].$$

Or le crochet est nul :
$$(b-c) + (c-a) + (a-b) = b - c + c - a + a - b = 0 .$$

Il reste donc
$$\Delta_1 + \Delta_2 + \Delta_3 = (a-b)^2 + (b-c)^2 + (c-a)^2 \;\ge\; 0 ,$$
comme somme de trois carrés.

**Étape 3. Conclusion.**

Raisonnons par l'absurde et supposons qu'aucune des trois équations n'a de solution réelle.
Alors $\Delta_1 < 0$, $\Delta_2 < 0$ et $\Delta_3 < 0$, donc
$$\Delta_1 + \Delta_2 + \Delta_3 < 0 ,$$
ce qui contredit l'étape 2.

**Donc au moins un des trois discriminants est positif ou nul, c'est-à-dire qu'au moins une
des trois équations a une solution réelle.**

**Remarque.** Le raisonnement utilise le fait général suivant : si trois nombres réels ont
une somme positive ou nulle, l'un d'eux au moins est positif ou nul.

## Going further

Le raisonnement ne dit pas **laquelle** des trois équations a une racine, et c'est normal :
selon les valeurs de $a$, $b$, $c$, ce n'est pas toujours la même. Avec $a = b = c$, les trois
équations deviennent $x^2 = 0$ et ont toutes la racine $0$. Avec $a = 0$, $b = 1$, $c = 0$ on
trouve $\Delta_1 = 1 - 4 = -3$, $\Delta_2 = 1 - 0 = 1$ et $\Delta_3 = 0 + 4 = 4$ : la première
n'a pas de racine réelle, les deux autres en ont.
