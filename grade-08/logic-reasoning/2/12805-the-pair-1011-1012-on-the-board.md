---
id: "12805"
title: "Le couple (1011, 1012) au tableau"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 20
tags: [invariant, somme, construction, tableau]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de janvier 2023"
  reference: "2023-01_Enonce-Web-Test-2.pdf, test junior, exercice 1 ; corrigé 2023-01_Corrige-Web-Test-2.pdf (qui écrit par erreur (a, 2013 − a) au lieu de (a, 2023 − a))"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/01/Énoncé-Web-Test-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-01_Enonce-Web-Test-2.pdf"
---

## Statement

Martin écrit au tableau le couple d'entiers $(1011, 1012)$. Ensuite, chaque minute, si le couple $(a, b)$ est écrit au tableau, il l'efface et le remplace, à son choix, par l'un des trois couples

$$(b,\ a), \qquad (b + 1,\ a - 1), \qquad (b - 2,\ a + 2).$$

Sa seule contrainte : il n'écrit jamais un couple qui contient un nombre strictement négatif.

Quels sont tous les couples que Martin peut faire apparaître au tableau ?

## Hints

1. Calculez la somme des deux nombres du couple avant et après chacune des trois opérations.
2. Avec deux opérations bien choisies, pouvez-vous faire passer une unité du premier nombre vers le second, sans rien changer d'autre ?
3. Et dans l'autre sens, du second vers le premier ?

## Solution

La réponse : Martin peut écrire exactement les couples $(a,\ 2023 - a)$ avec $a$ entier et $0 \leq a \leq 2023$.

Pour une telle question, il faut faire deux choses : montrer que Martin ne peut rien écrire d'autre, puis montrer qu'il peut vraiment écrire chacun de ces couples.

### Martin ne peut rien écrire d'autre

Au départ, la somme des deux nombres vaut $1011 + 1012 = 2023$. Aucune opération ne change cette somme :

$$b + a = a + b, \qquad (b+1) + (a-1) = a + b, \qquad (b-2) + (a+2) = a + b.$$

Tout couple écrit au tableau est donc de la forme $(a,\ 2023 - a)$, et comme Martin n'écrit pas de nombre négatif, $a \geq 0$ et $2023 - a \geq 0$, c'est-à-dire $0 \leq a \leq 2023$.

### Martin peut écrire chacun de ces couples

**Faire passer une unité de gauche à droite.** Si le couple $(a, b)$ est au tableau avec $a \geq 1$, Martin écrit $(b + 1,\ a - 1)$, puis il échange les deux nombres et obtient $(a - 1,\ b + 1)$. Les deux couples écrits n'ont pas de nombre négatif.

En répétant ce mouvement à partir de $(1011, 1012)$, Martin obtient successivement

$$(1010,\ 1013), \quad (1009,\ 1014), \quad \ldots, \quad (0,\ 2023),$$

c'est-à-dire tous les couples $(a, 2023 - a)$ avec $0 \leq a \leq 1011$.

**Faire passer une unité de droite à gauche.** Si le couple $(a, b)$ est au tableau avec $b \geq 1$, Martin échange d'abord les nombres, ce qui donne $(b, a)$, puis il applique la deuxième opération à ce nouveau couple, ce qui donne $(a + 1,\ b - 1)$.

En répétant ce mouvement à partir de $(1011, 1012)$, Martin obtient

$$(1012,\ 1011), \quad (1013,\ 1010), \quad \ldots, \quad (2023,\ 0),$$

c'est-à-dire tous les couples $(a, 2023 - a)$ avec $1011 \leq a \leq 2023$.

**Conclusion.** Les couples que Martin peut écrire sont exactement les $2024$ couples $(a,\ 2023 - a)$ pour $a = 0, 1, \ldots, 2023$. La troisième opération n'apporte aucun couple nouveau, mais il fallait vérifier qu'elle aussi conserve la somme.
