---
id: "8550"
title: "Combien de nombres pour forcer une différence de 2 ?"
grade: 9
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [principe-des-tiroirs, minimum, contre-exemple, difference]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe B"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre IV, « Principe des tiroirs et de l'extremum » (Angela) du Groupe B, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Combien d'entiers faut-il au minimum choisir dans l'ensemble $\{1, 2, \ldots, 20\}$ pour
être certain que, parmi les nombres choisis, il y en ait deux dont la différence vaut
exactement $2$ ?

## Hints

1. Un problème de minimum se traite en deux parties : montrer qu'un certain nombre suffit, et montrer qu'un de moins ne suffit pas.
2. Pour la première partie, range les vingt entiers en tiroirs de deux nombres qui diffèrent de $2$, chaque entier étant rangé dans un tiroir et un seul. Combien de tiroirs obtiens-tu ?
3. Attention : les paires $\{1,3\}, \{2,4\}, \{3,5\}, \ldots$ ne forment pas une partition. Groupe plutôt les entiers par blocs de quatre consécutifs.
4. Pour la seconde partie, il faut exhiber une sélection sans aucune différence de $2$. Reprends les blocs de quatre et garde les deux premiers de chaque bloc.

## Solution

**La réponse est $11$.**

### Onze nombres suffisent

Découpons $\{1, 2, \ldots, 20\}$ en cinq blocs de quatre entiers consécutifs :

$$\{1,2,3,4\}, \quad \{5,6,7,8\}, \quad \{9,10,11,12\}, \quad \{13,14,15,16\}, \quad
\{17,18,19,20\} .$$

Dans chaque bloc $\{m, m+1, m+2, m+3\}$, formons deux tiroirs :

$$\{m, \; m+2\} \qquad \text{et} \qquad \{m+1, \; m+3\} .$$

Chacun de ces tiroirs contient deux nombres dont la différence vaut exactement $2$, et
chaque entier de $1$ à $20$ est rangé dans exactement un tiroir. Cela fait
$5 \times 2 = 10$ tiroirs. Concrètement :

$$\{1,3\},\ \{2,4\},\ \{5,7\},\ \{6,8\},\ \{9,11\},\ \{10,12\},\ \{13,15\},\ \{14,16\},\
\{17,19\},\ \{18,20\} .$$

Si l'on choisit $11$ entiers pour seulement $10$ tiroirs, le principe des tiroirs garantit que
deux d'entre eux sont dans le même tiroir, donc que leur différence vaut $2$.

### Dix nombres ne suffisent pas

Choisissons les deux premiers entiers de chaque bloc :

$$1, \; 2, \; 5, \; 6, \; 9, \; 10, \; 13, \; 14, \; 17, \; 18 .$$

Cela fait bien $10$ nombres. Vérifions qu'aucune différence ne vaut $2$.

- Deux nombres issus du même bloc diffèrent de $1$.
- Deux nombres issus de blocs différents diffèrent d'au moins $3$ : le plus grand d'un bloc
  est $m+1$ et le plus petit du bloc suivant est $m+4$.

Aucune différence ne vaut donc $2$, et $10$ nombres ne suffisent pas.

### Conclusion

Le nombre minimal cherché est $\boxed{11}$.
