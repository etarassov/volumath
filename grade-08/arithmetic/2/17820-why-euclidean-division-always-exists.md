---
id: "17820"
title: "Pourquoi la division euclidienne existe toujours"
grade: 8
theme: arithmetic
difficulty: 2
duration_min: 20
tags: [division-euclidienne, recurrence, restes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », combinatoire, jeudi matin, « Récurrence » (Félix Lequen), exercice 10, p.50 ; solution p.51. La solution imprimée écrit une fois « 0 ≤ r ≤ b » au lieu de « 0 ≤ r < b »."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $b$ un entier strictement positif. Montrer que, pour tout entier $a \geq 0$, il existe des entiers $q$ et $r$ tels que

$$a = bq + r \qquad \text{et} \qquad 0 \leq r < b .$$

(Ce sont le quotient et le reste de la division euclidienne de $a$ par $b$. On demande de prouver qu'ils existent toujours.)

## Hints

1. Commencez par $a = 0$ : quels $q$ et $r$ conviennent ?
2. Supposez que vous connaissez $q$ et $r$ pour un entier $a$. Comment en déduire un quotient et un reste pour $a + 1$ ?
3. Essayez $a + 1 = bq + (r + 1)$. Quand est-ce que ça ne marche pas ? Que faire dans ce cas ?

## Solution

On va de proche en proche : on montre que le résultat est vrai pour $a = 0$, puis que s'il est vrai pour un entier $a$, il est vrai pour $a + 1$. Il sera alors vrai pour $a = 1$, puis $2$, puis $3$, et ainsi de suite pour tous les entiers. C'est un raisonnement par récurrence.

**Pour $a = 0$.** On prend $q = 0$ et $r = 0$ : $0 = b \times 0 + 0$ et $0 \leq 0 < b$.

**Passer de $a$ à $a + 1$.** Supposons qu'on ait trouvé des entiers $q$ et $r$ avec $a = bq + r$ et $0 \leq r < b$. Alors

$$a + 1 = bq + (r + 1) .$$

Il y a deux cas, car $r$ est un entier entre $0$ et $b - 1$.

- **Si $r \leq b - 2$**, alors $r + 1 \leq b - 1$, donc $0 \leq r + 1 < b$. Le quotient $q$ et le reste $r + 1$ conviennent pour $a + 1$.
- **Si $r = b - 1$**, alors $r + 1 = b$ et $a + 1 = bq + b = b(q + 1) + 0$. Le quotient $q + 1$ et le reste $0$ conviennent pour $a + 1$.

Dans les deux cas, on a trouvé un quotient et un reste pour $a + 1$.

**Conclusion :** pour tout entier $a \geq 0$, il existe des entiers $q$ et $r$ avec $a = bq + r$ et $0 \leq r < b$.

## Going further

Le quotient et le reste sont aussi uniques. Si $a = bq + r = bq' + r'$ avec $0 \leq r < b$ et $0 \leq r' < b$, alors $b(q - q') = r' - r$. Le nombre $r' - r$ est un multiple de $b$ strictement compris entre $-b$ et $b$ : c'est donc $0$. Ainsi $r = r'$, puis $q = q'$.

Cette démonstration est un peu comme compter les billes d'un sac en les rangeant par paquets de $b$ : chaque nouvelle bille complète le paquet en cours, ou en commence un nouveau quand le paquet est plein.
