---
id: "13214"
title: "Écrire un million comme produit de trois entiers"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 20
tags: [denombrement, diviseurs, decomposition-en-facteurs-premiers, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2016 (test de rentrée OFM), éliminatoires"
  reference: "2017-09_coupe_automne_2016_elim.pdf, exercices lycéens, exercice 15 ; corrigé 2017-09_coupe_automne_2016_elim_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2016_elim.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2016_elim.pdf"
---

## Statement

De combien de manières peut-on écrire $10^6 = 1\,000\,000$ comme un produit $A \times B \times C$ de trois entiers strictement positifs ?

L'ordre compte : par exemple, $1 \times 1000 \times 1000$ et $1000 \times 1 \times 1000$ sont deux écritures différentes.

## Hints

1. Décompose $10^6$ en facteurs premiers. Quelle forme ont ses diviseurs ?
2. Écris $A = 2^{a_1} \times 5^{b_1}$, et de même pour $B$ et $C$. Que doivent vérifier les exposants de $2$ ? Et ceux de $5$ ?
3. Combien y a-t-il de façons d'écrire $6$ comme somme $a_1 + a_2 + a_3$ de trois entiers positifs ou nuls, dans l'ordre ? Fixe d'abord $a_1$.

## Solution

**La forme des facteurs.** On a $10^6 = 2^6 \times 5^6$. Chacun des nombres $A$, $B$, $C$ divise $10^6$, donc ne contient que des facteurs $2$ et $5$ :

$$A = 2^{a_1} \times 5^{b_1}, \qquad B = 2^{a_2} \times 5^{b_2}, \qquad C = 2^{a_3} \times 5^{b_3},$$

avec des exposants entiers positifs ou nuls. Le produit vaut $2^{a_1 + a_2 + a_3} \times 5^{b_1 + b_2 + b_3}$. Comme la décomposition en facteurs premiers est unique, $A \times B \times C = 10^6$ exactement quand

$$a_1 + a_2 + a_3 = 6 \qquad \text{et} \qquad b_1 + b_2 + b_3 = 6.$$

Les deux conditions sont indépendantes : le nombre d'écritures est le nombre de choix des $a_i$ multiplié par le nombre de choix des $b_i$.

**Combien de façons d'écrire 6 comme somme de trois entiers ?** On choisit $a_1$ entre $0$ et $6$. Une fois $a_1$ choisi, $a_2$ peut valoir $0, 1, \ldots, 6 - a_1$, ce qui fait $7 - a_1$ choix, et $a_3 = 6 - a_1 - a_2$ est alors imposé. Au total :

$$7 + 6 + 5 + 4 + 3 + 2 + 1 = 28 \text{ façons.}$$

De même, il y a $28$ façons de choisir $b_1, b_2, b_3$.

**Conclusion.** Il y a $28 \times 28 = 784$ façons d'écrire $10^6$ comme produit $A \times B \times C$.
