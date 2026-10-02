---
id: "13045"
title: "Quand 4 divise (a² + 1)(a² + 5)"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 10
tags: [parite, divisibilite, carres, disjonction de cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 9 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Combien y a-t-il d'entiers $a$ compris entre $1$ et $1000$ (inclus) tels que le nombre
$$(a^2 + 1)(a^2 + 5)$$
soit divisible par $4$ ?

## Hints

1. Essaie avec $a = 1$, $2$, $3$, $4$. Vois-tu une règle ?
2. Sépare deux cas, selon que $a$ est pair ou impair. Quelle est alors la parité de $a^2$ ? Et celle de $a^2 + 1$ et de $a^2 + 5$ ?
3. Un produit de deux nombres pairs est-il toujours divisible par $4$ ?

## Solution

**Premiers essais.** Pour $a = 1$ : $2 \times 6 = 12$, divisible par $4$. Pour $a = 2$ : $5 \times 9 = 45$, non. Pour $a = 3$ : $10 \times 14 = 140$, oui. Pour $a = 4$ : $17 \times 21 = 357$, non. Il semble que seuls les nombres impairs conviennent.

**Si $a$ est pair.** Alors $a^2 = a \times a$ est pair, donc $a^2 + 1$ et $a^2 + 5$ sont impairs. Leur produit est impair : il n'est même pas divisible par $2$, donc pas par $4$.

**Si $a$ est impair.** Alors $a^2$ est impair (produit de deux nombres impairs), donc $a^2 + 1$ et $a^2 + 5$ sont pairs. On peut écrire $a^2 + 1 = 2u$ et $a^2 + 5 = 2v$ avec $u$ et $v$ entiers, et
$$(a^2 + 1)(a^2 + 5) = 2u \times 2v = 4uv,$$
qui est divisible par $4$.

**Conclusion.** Le nombre $(a^2 + 1)(a^2 + 5)$ est divisible par $4$ exactement quand $a$ est impair. Entre $1$ et $1000$, il y a $500$ nombres impairs : la réponse est $500$.

## Going further

1. Lorsque $a$ est impair, le nombre $(a^2 + 1)(a^2 + 5)$ est-il divisible par $8$ ? Essayer quelques valeurs, puis le démontrer. (On pourra montrer que le carré d'un nombre impair s'écrit $8m + 1$.)
2. Combien y a-t-il d'entiers $a$ entre $1$ et $1000$ tels que $(a^2 + 1)(a^2 + 5)$ soit divisible par $3$ ?
