---
id: "1402"
title: "Quatre trinômes cachés dans un polynôme de degré 8"
grade: 12
theme: algebra
difficulty: 4
duration_min: 30
tags: [factorisation, identites-remarquables, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 2 « Algebra », problème 5 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Écrire le polynôme

$$P(x) = x^8 + x^4 + 1$$

comme un produit de **quatre** polynômes du second degré à coefficients réels.

## Hints

1. Il manque un terme pour reconnaître un carré. Que vaut $(x^4 + 1)^2$ ?
2. $x^8 + x^4 + 1 = (x^4+1)^2 - x^4$. Reconnaître alors une différence de deux carrés.
3. On obtient un produit de deux polynômes de degré $4$. Recommencer la même astuce sur chacun : pour $x^4 + x^2 + 1$, écrire $(x^2+1)^2 - x^2$.
4. Pour $x^4 - x^2 + 1$, le carré qu'il faut retrancher à $(x^2+1)^2$ n'est plus $x^2$ mais $3x^2$. Sa racine carrée fait apparaître $\sqrt 3$.

## Solution

**Première étape : faire apparaître une différence de carrés.**

On complète le carré en haut du polynôme. Comme

$$(x^4 + 1)^2 = x^8 + 2x^4 + 1,$$

il vient

$$x^8 + x^4 + 1 = (x^8 + 2x^4 + 1) - x^4 = (x^4+1)^2 - (x^2)^2 .$$

C'est une différence de deux carrés, donc

$$x^8 + x^4 + 1 = (x^4 + 1 + x^2)(x^4 + 1 - x^2) = (x^4 + x^2 + 1)(x^4 - x^2 + 1) .$$

**Deuxième étape : le premier facteur.**

Exactement la même astuce, un cran plus bas :

$$x^4 + x^2 + 1 = (x^2+1)^2 - x^2 = (x^2 + 1 + x)(x^2 + 1 - x) .$$

Donc

$$x^4 + x^2 + 1 = (x^2 + x + 1)(x^2 - x + 1) .$$

**Troisième étape : le second facteur.**

Pour $x^4 - x^2 + 1$, on part encore de $(x^2+1)^2 = x^4 + 2x^2 + 1$. Cette fois il faut retrancher $3x^2$ :

$$x^4 - x^2 + 1 = (x^4 + 2x^2 + 1) - 3x^2 = (x^2+1)^2 - (\sqrt 3\, x)^2 .$$

D'où

$$x^4 - x^2 + 1 = (x^2 + \sqrt 3\, x + 1)(x^2 - \sqrt 3\, x + 1) .$$

**Conclusion.**

$$x^8 + x^4 + 1 = (x^2 + x + 1)\,(x^2 - x + 1)\,(x^2 + \sqrt 3\, x + 1)\,(x^2 - \sqrt 3\, x + 1) .$$

**Vérification rapide.** Chacun de ces quatre trinômes a un discriminant strictement négatif : $1 - 4 = -3$ pour les deux premiers, $3 - 4 = -1$ pour les deux derniers. Aucun ne se casse davantage sur les réels, la factorisation est donc allée au bout. Et $P(0) = 1$ est bien égal au produit $1 \times 1 \times 1 \times 1$ des termes constants, tandis que le coefficient de $x^8$ vaut bien $1 \times 1 \times 1 \times 1 = 1$.

## Going further

1. Factoriser de la même façon $x^4 + 4$. (Écrire $x^4 + 4 = (x^2+2)^2 - 4x^2$.)
2. Factoriser $x^8 + x^4 + 1$ en deux polynômes de degré $4$ **à coefficients entiers**, autrement que ci-dessus. Est-ce possible ?
3. Le polynôme $x^8 + x^4 + 1$ a-t-il des racines réelles ? Et des racines complexes ? Combien ?
