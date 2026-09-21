---
id: "7802"
title: "Le plus grand diviseur de 2015"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [diviseurs, decomposition, nombres premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, « Coupe Animath et évaluation initiale », éliminatoires collégiens, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Le nombre $6$ a quatre diviseurs : $1$, $2$, $3$ et $6$. Le plus grand diviseur de $6$ qui est
différent de $6$ est donc $3$.

Déterminer le plus grand diviseur de $2015$ qui est différent de $2015$.

## Hints

1. Si $d$ est un diviseur de $2015$, alors $2015 = d \times q$ où $q$ est lui aussi un diviseur
   de $2015$. Les diviseurs vont donc par paires.
2. Dans une telle paire, plus $d$ est grand, plus $q$ est petit. Pour que $d$ soit le plus grand
   possible, que doit valoir $q$ ?
3. Cherche donc le plus petit diviseur de $2015$ qui soit différent de $1$. Teste $2$, puis
   $3$, puis $5$.

## Solution

**L'idée : les diviseurs vont par paires.**

Si $d$ divise $2015$, on peut écrire $2015 = d \times q$, et $q$ est lui aussi un diviseur de
$2015$. Quand $d$ grandit, $q$ diminue. Donc :

> le plus grand diviseur de $2015$ différent de $2015$ correspond au plus petit diviseur de
> $2015$ différent de $1$.

**On cherche ce plus petit diviseur.**

- $2015$ est impair, donc $2$ ne le divise pas.
- La somme de ses chiffres est $2 + 0 + 1 + 5 = 8$, qui n'est pas un multiple de $3$, donc
  $3$ ne le divise pas.
- $2015$ se termine par $5$, donc $5$ le divise.

Le plus petit diviseur de $2015$ différent de $1$ est donc $5$.

**On conclut.**

$$2015 = 5 \times 403,$$
donc le plus grand diviseur de $2015$ différent de $2015$ est $\boxed{403}$.

*Vérification.* En poursuivant la décomposition, $403 = 13 \times 31$, donc
$2015 = 5 \times 13 \times 31$. La liste complète des diviseurs est
$$1, \quad 5, \quad 13, \quad 31, \quad 65, \quad 155, \quad 403, \quad 2015,$$
et le plus grand avant $2015$ est bien $403$.
