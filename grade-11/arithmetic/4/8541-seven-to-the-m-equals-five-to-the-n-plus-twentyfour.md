---
id: "8541"
title: "7 puissance m égale 5 puissance n plus 24"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [congruences, equation-en-entiers, factorisation, parite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 20 (Olympiades coréennes junior 2018)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Trouver tous les couples $(m, n)$ d'entiers naturels tels que

$$7^m = 5^n + 24 .$$

## Hints

1. Essaie de petites valeurs pour deviner la solution.
2. Regarde l'équation modulo $3$. Que valent $7$ et $5$ modulo $3$ ? Et $24$ ?
3. Regarde-la ensuite modulo $4$. Tu devrais apprendre quelque chose sur la parité de $m$ et de $n$.
4. Une fois $m$ et $n$ pairs, écris $m = 2m'$ et $n = 2n'$ : une différence de deux carrés apparaît, donc un produit valant $24$.

## Solution

**Un peu d'expérimentation.** $m = 2$ donne $49$, et $49 - 24 = 25 = 5^2$. Le couple
$(m, n) = (2, 2)$ est donc solution. Montrons que c'est la seule.

**Modulo 3 : $n$ est pair.** On a $7 \equiv 1$, $5 \equiv -1$ et $24 \equiv 0$ modulo $3$.
L'équation donne donc

$$1 \equiv 1^m = 7^m \equiv 5^n + 24 \equiv (-1)^n \pmod 3 .$$

Donc $(-1)^n \equiv 1 \pmod 3$, ce qui impose $n$ pair. Écrivons $n = 2n'$.

**Modulo 4 : $m$ est pair.** On a $7 \equiv -1$, $5 \equiv 1$ et $24 \equiv 0$ modulo $4$.
L'équation donne

$$(-1)^m \equiv 7^m = 5^n + 24 \equiv 1 \pmod 4 .$$

Donc $m$ est pair. Écrivons $m = 2m'$.

**La factorisation.** L'équation devient

$$\left(7^{m'}\right)^2 - \left(5^{n'}\right)^2 = 24 ,$$

c'est-à-dire

$$\left(7^{m'} - 5^{n'}\right)\left(7^{m'} + 5^{n'}\right) = 24 .$$

**On liste les possibilités.** Les deux facteurs sont des entiers, leur produit vaut $24 > 0$
et le second est strictement positif, donc le premier aussi. De plus $7^{m'}$ et $5^{n'}$
sont impairs, donc leur somme et leur différence sont **paires**.

Les décompositions de $24$ en un produit de deux entiers pairs positifs, le premier facteur
étant le plus petit, sont

$$24 = 2 \times 12 \qquad \text{et} \qquad 24 = 4 \times 6 .$$

- Si $7^{m'} - 5^{n'} = 2$ et $7^{m'} + 5^{n'} = 12$, alors en additionnant
  $2 \times 7^{m'} = 14$, donc $7^{m'} = 7$ et $m' = 1$ ; puis $5^{n'} = 5$ et $n' = 1$.
- Si $7^{m'} - 5^{n'} = 4$ et $7^{m'} + 5^{n'} = 6$, alors $2 \times 7^{m'} = 10$, donc
  $7^{m'} = 5$. Impossible, car $5$ n'est pas une puissance de $7$.

**Conclusion.** On obtient $m' = n' = 1$, donc $m = n = 2$.

**Vérification.** $7^2 = 49$ et $5^2 + 24 = 25 + 24 = 49$. C'est bon.

Le seul couple solution est $(m, n) = (2, 2)$.
