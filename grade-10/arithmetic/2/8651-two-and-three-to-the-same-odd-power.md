---
id: "8651"
title: "Une somme toujours divisible par 5"
grade: 10
theme: arithmetic
difficulty: 2
duration_min: 15
tags: [congruences, puissances, divisibilite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, cours « Modulos » (Elsa), exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Démontrer que, pour tout entier naturel $n$, le nombre

$$2^{4n+1} + 3^{4n+1}$$

est divisible par $5$.

## Hints

1. Vérifie d'abord sur $n = 0$ et $n = 1$ pour te convaincre que c'est vrai.
2. L'exposant $4n + 1$ n'est pas là par hasard. Sépare-le : $2^{4n+1} = 2^{4n} \times 2$.
3. Et $2^{4n} = \left(2^{4}\right)^{n}$. Que vaut $2^4$ modulo $5$ ?
4. Fais la même chose avec $3$ : que vaut $3^4$ modulo $5$ ?

## Solution

Travaillons modulo $5$.

**Le terme en $2$.** On sépare le dernier facteur :

$$2^{4n+1} = 2^{4n} \times 2 = \left(2^{4}\right)^{n} \times 2 .$$

Or $2^4 = 16 = 3 \times 5 + 1$, donc $2^4 \equiv 1 \pmod 5$. En élevant à la puissance $n$ :

$$\left(2^{4}\right)^{n} \equiv 1^{n} \equiv 1 \pmod 5, \qquad \text{d'où} \qquad 2^{4n+1} \equiv 2 \pmod 5 .$$

**Le terme en $3$.** De même,

$$3^{4n+1} = \left(3^{4}\right)^{n} \times 3 ,$$

et $3^4 = 81 = 16 \times 5 + 1$, donc $3^4 \equiv 1 \pmod 5$. Donc

$$3^{4n+1} \equiv 3 \pmod 5 .$$

**La somme.** En ajoutant les deux congruences :

$$2^{4n+1} + 3^{4n+1} \equiv 2 + 3 = 5 \equiv 0 \pmod 5 .$$

**Conclusion.** Le nombre $2^{4n+1} + 3^{4n+1}$ est bien un multiple de $5$, pour tout entier naturel $n$.

$$\boxed{5 \mid 2^{4n+1} + 3^{4n+1} \quad \text{pour tout } n \in \mathbb{N}.}$$

## Going further

La clé est que $2^4$ et $3^4$ laissent tous les deux le reste $1$ dans la division par $5$. Ce n'est pas une coïncidence : pour tout nombre $a$ non divisible par $5$, on a $a^4 \equiv 1 \pmod 5$. C'est un cas particulier du **petit théorème de Fermat**, que tu rencontreras plus tard.

En attendant, vérifie-le à la main pour $a = 1, 2, 3, 4$ : les quatre calculs tiennent en deux lignes.
