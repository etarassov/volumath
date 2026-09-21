---
id: "7238"
title: "Quand n − 1 divise n² + 2"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [divisibilite, diviseurs, combinaison]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2018"
  reference: "Poly_final_CJ18.pdf, « Première journée », schibboleth des groupes, arithmétique, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_final_CJ18.pdf"
---

## Statement

Trouver tous les entiers $n$ tels que $n - 1$ divise $n^2 + 2$.

*(On cherche les entiers relatifs $n$, avec $n \neq 1$ pour que la division ait un sens.)*

## Hints

1. Si $n-1$ divise deux nombres, il divise aussi leur différence, et plus généralement toute
   combinaison du type « un multiple de l'un moins un multiple de l'autre ».
2. $n - 1$ divise évidemment $n^2 - 1$. Compare $n^2 + 2$ et $n^2 - 1$.
3. Il reste une condition très simple sur $n - 1$. Quels sont les diviseurs de $3$ ?

## Solution

**Faire apparaître un multiple évident.**

Le nombre $n - 1$ divise $n^2 - 1$, puisque
$$n^2 - 1 = (n-1)(n+1) .$$

**La soustraction.**

Supposons que $n-1$ divise $n^2 + 2$. Comme il divise aussi $n^2 - 1$, il divise leur différence :
$$(n^2 + 2) - (n^2 - 1) = 3 .$$

Donc $n-1$ divise $3$.

**Réciproquement.**

Si $n - 1$ divise $3$, alors $n-1$ divise $3 + (n^2-1) = n^2 + 2$. La condition « $n-1$ divise
$3$ » est donc **équivalente** à la condition de l'énoncé.

**Les diviseurs de 3.**

Les diviseurs de $3$ dans les entiers relatifs sont
$$-3, \quad -1, \quad 1, \quad 3 .$$

D'où $n - 1 \in \{-3, -1, 1, 3\}$, c'est-à-dire
$$n \in \{-2,\ 0,\ 2,\ 4\} .$$

**Vérification.**

| $n$ | $n-1$ | $n^2+2$ | quotient |
|---|---|---|---|
| $-2$ | $-3$ | $6$ | $-2$ |
| $0$ | $-1$ | $2$ | $-2$ |
| $2$ | $1$ | $6$ | $6$ |
| $4$ | $3$ | $18$ | $6$ |

Tout est cohérent.

**Les entiers cherchés sont $n = -2$, $n = 0$, $n = 2$ et $n = 4$.**

## Going further

Si l'on se limite aux entiers **naturels**, les solutions sont $n = 0$, $n = 2$ et $n = 4$.

La méthode est générale : pour savoir quand $n - a$ divise un polynôme $P(n)$, on calcule $P(a)$ ;
la condition est alors que $n - a$ divise $P(a)$. Ici $P(n) = n^2 + 2$ et $a = 1$, d'où
$P(1) = 3$ : on retrouve directement la condition « $n-1$ divise $3$ ».
