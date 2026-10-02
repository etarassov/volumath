---
id: "12854"
title: "Le plus petit de trois nombres ne dépasse pas 45"
grade: 10
theme: algebra
difficulty: 3
duration_min: 15
tags: [inegalite, minimum, fractions]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 27 mars 2024"
  reference: "2025-01_Enonce-Test-4.pdf, test junior, exercice 1 ; corrigé 2025-01_Corrige-Test-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-4.pdf"
---

## Statement

Soit $u$ et $v$ deux réels strictement positifs. On considère les trois nombres

$$u, \qquad \frac{2024}{v} \qquad \text{et} \qquad \frac{1}{u} + v.$$

Démontrer que le plus petit de ces trois nombres est inférieur ou égal à $45$.

## Hints

1. Pour que le plus petit des trois nombres soit inférieur ou égal à $45$, il suffit que **l'un** des trois le soit.
2. Si $u \leq 45$, c'est terminé. De même si $2024/v \leq 45$. Il reste donc le cas où $u > 45$ et $2024/v > 45$ : que pouvez-vous dire alors de $1/u$ et de $v$ ?
3. Calculez $45 \times 45$.

## Solution

Il suffit de montrer qu'au moins un des trois nombres est inférieur ou égal à $45$ : le plus petit des trois l'est alors aussi.

Si $u \leq 45$ ou si $2024/v \leq 45$, c'est fini. Supposons donc que $u > 45$ et $2024/v > 45$, et montrons que le troisième nombre est plus petit que $45$.

### Ce que disent les deux premières inégalités

- Comme $u > 45 > 0$, on a $1/45 - 1/u = (u - 45)/(45u) > 0$, donc $1/u < 1/45$.
- Comme $2024/v > 45$, on multiplie les deux membres par le nombre positif $v/45$ : on obtient $2024/45 > v$.

### Le troisième nombre

En ajoutant ces deux inégalités,

$$\frac{1}{u} + v < \frac{1}{45} + \frac{2024}{45} = \frac{2025}{45} = 45,$$

car $45 \times 45 = 2025$.

### Conclusion

Dans tous les cas, l'un des trois nombres est inférieur ou égal à $45$. **Le plus petit des trois est donc inférieur ou égal à $45$.**

## Going further

1. Trouvez des valeurs de $u$ et $v$ pour lesquelles les trois nombres sont tous égaux à $45$. Que pouvez-vous en déduire sur la plus grande valeur possible du plus petit des trois ?
2. Soit $a > 0$. Montrez de la même façon que le plus petit des nombres $u$, $a/v$ et $1/u + v$ est inférieur ou égal à $\sqrt{a + 1}$.
