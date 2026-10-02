---
id: "12862"
title: "Trois nombres premiers et p² + pq + q² = r²"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [nombres-premiers, factorisation, difference-de-carres, diviseurs, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2024"
  reference: "2025-01_Enonce-Test-5.pdf, test junior, exercice 2 ; corrigé 2025-01_Corrige-Test-5.pdf (on suit la solution alternative du corrigé)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-5.pdf"
---

## Statement

Trouver tous les triplets $(p, q, r)$ de nombres premiers tels que

$$p^2 + pq + q^2 = r^2.$$

## Hints

1. Écrivez $p^2 + pq + q^2$ à l'aide de $(p + q)^2$.
2. Factorisez $(p + q)^2 - r^2$.
3. Vous obtenez deux facteurs dont le produit vaut $pq$. Montrez que le plus petit des deux est plus petit que $p$ et que $q$.
4. Vous devez arriver à $(p - 2)(q - 2) = 3$.

## Solution

La réponse est $(p, q, r) = (3, 5, 7)$ ou $(5, 3, 7)$.

### Une factorisation

Soit $(p, q, r)$ un triplet qui convient. Comme $(p + q)^2 = p^2 + 2pq + q^2$, on a

$$(p + q)^2 - r^2 = (p + q)^2 - (p^2 + pq + q^2) = pq.$$

On factorise la différence de deux carrés :

$$(p + q - r)(p + q + r) = pq.$$

Le facteur $p + q + r$ et le produit $pq$ sont strictement positifs, donc $p + q - r$ l'est aussi. Les deux facteurs sont donc des diviseurs positifs de $pq$.

### Le petit facteur vaut 1

On a $p + q + r > p$ et $p + q + r > q$. Donc

$$p + q - r = \frac{pq}{p + q + r} < \frac{pq}{p} = q \qquad \text{et de même} \qquad p + q - r < p.$$

Or, comme $p$ et $q$ sont premiers, les diviseurs positifs de $pq$ sont $1$, $p$, $q$ et $pq$ (si $p = q$, ce sont seulement $1$, $p$ et $p^2$) : d'après la décomposition en facteurs premiers, un diviseur de $pq$ ne peut contenir que les facteurs premiers $p$ et $q$, et pas plus de fois que $pq$ lui-même. Le seul de ces diviseurs qui soit plus petit que $p$ et que $q$ est $1$. Donc

$$p + q - r = 1 \qquad \text{et} \qquad p + q + r = pq.$$

### Fin du calcul

La première égalité donne $r = p + q - 1$. En reportant dans la seconde :

$$p + q + (p + q - 1) = pq, \qquad \text{c'est-à-dire} \qquad pq - 2p - 2q + 1 = 0.$$

On ajoute $3$ des deux côtés pour factoriser : $pq - 2p - 2q + 4 = 3$, soit

$$(p - 2)(q - 2) = 3.$$

Comme $p \geq 2$ et $q \geq 2$, les nombres $p - 2$ et $q - 2$ sont des entiers positifs ou nuls, de produit $3$. Ils valent donc $1$ et $3$, dans un ordre ou dans l'autre. Ainsi $\{p, q\} = \{3, 5\}$, et $r = 3 + 5 - 1 = 7$.

### Vérification

Les nombres $3$, $5$ et $7$ sont premiers, et $3^2 + 3 \times 5 + 5^2 = 9 + 15 + 25 = 49 = 7^2$.

### Conclusion

**Les triplets cherchés sont $(3, 5, 7)$ et $(5, 3, 7)$.**

## Going further

1. Sans imposer que les nombres soient premiers, trouvez d'autres entiers strictement positifs $a$, $b$, $c$ tels que $a^2 + ab + b^2 = c^2$. (Essayez $a = 7$ ou $a = 5$.)
2. Trouvez tous les triplets $(p, q, r)$ de nombres premiers tels que $p^2 - pq + q^2 = r^2$.
