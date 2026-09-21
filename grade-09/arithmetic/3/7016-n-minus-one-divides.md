---
id: "7016"
title: "n − 1 divise-t-il n² + 2 ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, division euclidienne, diviseurs]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2012, groupe des débutants"
  reference: "stage_junior_2012.pdf, arithmétique matin (Vincent Jugé), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2012.pdf"
---

## Statement

Trouver tous les entiers relatifs $n$ tels que $n - 1$ divise $n^2 + 2$.

## Hints

1. Si $d$ divise deux nombres, il divise aussi leur différence, et plus généralement toute
   combinaison $ax + by$.
2. $n-1$ divise $n^2 - 1$. Compare avec $n^2 + 2$.
3. Tu arrives à « $n-1$ divise $3$ ». Quels sont les diviseurs de $3$, **y compris les
   négatifs** ?

## Solution

**Le principe.** Si un entier $d$ divise $A$ et divise $B$, alors il divise $A - B$. On va
s'en servir pour faire disparaître le $n^2$.

**Le calcul.** Remarquons d'abord que $n-1$ divise toujours
$$(n+1)(n-1) = n^2 - 1 .$$

Supposons maintenant que $n-1$ divise $n^2 + 2$. Alors $n-1$ divise la différence
$$(n^2 + 2) - (n^2 - 1) = 3 .$$

**Les diviseurs de 3.** Les entiers qui divisent $3$ sont $-3$, $-1$, $1$ et $3$. Donc
$$n - 1 \in \{-3,\ -1,\ 1,\ 3\}, \qquad \text{c'est-à-dire} \qquad n \in \{-2,\ 0,\ 2,\ 4\} .$$

**La réciproque.** Ce raisonnement donne les seuls candidats possibles. Vérifions qu'ils
conviennent tous :

| $n$ | $n-1$ | $n^2+2$ | $n-1$ divise-t-il $n^2+2$ ? |
|---|---|---|---|
| $-2$ | $-3$ | $6$ | oui, $6 = -3 \times (-2)$ |
| $0$ | $-1$ | $2$ | oui |
| $2$ | $1$ | $6$ | oui |
| $4$ | $3$ | $18$ | oui, $18 = 3 \times 6$ |

**Conclusion.** Les entiers cherchés sont exactement
$$n = -2, \qquad n = 0, \qquad n = 2, \qquad n = 4 .$$

## Going further

Si l'on se limite aux entiers **naturels**, il ne reste que $n = 0$, $n = 2$ et $n = 4$.

La méthode est générale : pour savoir quand $n - a$ divise un polynôme $P(n)$, on remplace $n$
par $a$. Ici $P(n) = n^2 + 2$ et $P(1) = 3$ : on retrouve directement le $3$ ci-dessus.
