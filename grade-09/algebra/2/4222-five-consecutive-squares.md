---
id: "4222"
title: "Cinq carrés qui se suivent"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [developpement, identite remarquable, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Intermediate, Induction in Arithmetic"
  reference: "Handout-2319-2054.pdf, exercice 3 a)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2319-2054.pdf"
---

## Statement

Démontrer que, pour tout entier naturel $n$, le nombre
$$n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2$$
est divisible par $5$.

## Hints

1. Teste d'abord avec $n = 1$, puis $n = 2$ : tu dois trouver $55$ puis $90$.
2. Développe chacun des cinq carrés avec l'identité $(a+b)^2 = a^2 + 2ab + b^2$.
3. Regroupe les $n^2$ entre eux, les $n$ entre eux, les constantes entre eux. Puis factorise par
   $5$.

## Solution

Développons les cinq carrés :

$$n^2 = n^2$$
$$(n+1)^2 = n^2 + 2n + 1$$
$$(n+2)^2 = n^2 + 4n + 4$$
$$(n+3)^2 = n^2 + 6n + 9$$
$$(n+4)^2 = n^2 + 8n + 16$$

Additionnons colonne par colonne.

- Les termes en $n^2$ : il y en a cinq, ils donnent $5n^2$.
- Les termes en $n$ : $2n + 4n + 6n + 8n = 20n$.
- Les constantes : $1 + 4 + 9 + 16 = 30$.

La somme vaut donc
$$n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2 = 5n^2 + 20n + 30.$$

Chacun des trois termes est un multiple de $5$, on peut donc factoriser :
$$5n^2 + 20n + 30 = 5\,(n^2 + 4n + 6).$$

Comme $n$ est un entier, $n^2 + 4n + 6$ est un entier. La somme est donc le produit de $5$ par un
entier : elle est divisible par $5$.

**Conclusion.** La somme des carrés de cinq entiers consécutifs est toujours divisible par $5$.

*Vérification :* pour $n = 1$, on trouve $1 + 4 + 9 + 16 + 25 = 55 = 5 \times 11$, et la formule
donne $5(1 + 4 + 6) = 5 \times 11 = 55$. ✓

## Going further

1. La somme des carrés de **trois** entiers consécutifs est-elle toujours divisible par $3$ ?
   Refais le même calcul : tu trouveras $3n^2 + 6n + 5$, et la réponse est donc **non**, il reste
   toujours $2$ dans la division par $3$.
2. Et la somme de **cinq** entiers consécutifs, sans les carrés cette fois ? Est-elle divisible
   par $5$ ? (Oui : elle vaut $5n + 10$.)
