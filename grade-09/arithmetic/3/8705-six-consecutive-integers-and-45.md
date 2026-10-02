---
id: "8705"
title: "Combien d'entiers consécutifs pour être sûr d'obtenir un multiple de 45 ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [divisibilite, entiers-consecutifs, nombres-premiers, contre-exemple]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices collégiens, exercice 3"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

On multiplie entre eux $n$ entiers strictement positifs consécutifs, par exemple $7 \times 8 \times 9$ si $n = 3$.

Déterminer le plus petit entier $n$ pour lequel ce produit est **toujours** divisible par $45$, quel que soit l'entier par lequel on commence.

## Hints

1. Commence par décomposer $45$ en facteurs premiers. Tu verras qu'il faut deux choses en même temps.
2. Parmi $n$ entiers consécutifs, combien y a-t-il de multiples de $3$ ? Et de multiples de $5$ ?
3. Pour montrer qu'un certain $n$ **ne convient pas**, un seul contre-exemple suffit. Essaie de partir de $1$.
4. Une question qui demande « le plus petit » réclame toujours deux démonstrations : que ce nombre marche, et qu'aucun plus petit ne marche.

## Solution

**De quoi a-t-on besoin ?**

$$45 = 9 \times 5 = 3^2 \times 5 .$$

Un produit est divisible par $45$ dès qu'il est divisible à la fois par $9$ et par $5$ : comme $9$ et $5$ n'ont aucun diviseur commun autre que $1$, s'ils divisent tous les deux un nombre, leur produit $45$ le divise aussi.

Il nous faut donc, dans notre paquet de $n$ entiers consécutifs, de quoi fabriquer un facteur $9$ et un facteur $5$.

**Une remarque utile : plus $n$ est grand, plus c'est facile.**

Si $n$ entiers consécutifs donnent toujours un multiple de $45$, alors $n+1$ entiers consécutifs aussi : leur produit est le produit des $n$ premiers, multiplié par un entier de plus. Donc dès qu'on aura trouvé un $n$ qui marche et un $n-1$ qui ne marche pas, on aura fini.

**Étape 1 : $n = 6$ convient.**

Prenons six entiers consécutifs et coupons-les en deux paquets de trois :

$$\underbrace{n_1,\ n_2,\ n_3}_{\text{trois consécutifs}}, \qquad \underbrace{n_4,\ n_5,\ n_6}_{\text{trois consécutifs}} .$$

Parmi trois entiers consécutifs il y a toujours exactement un multiple de $3$. Il y en a donc un dans le premier paquet et un dans le second : **deux** multiples de $3$ en tout, et ce sont deux nombres différents. Chacun apporte un facteur $3$, donc le produit est divisible par $3 \times 3 = 9$.

Par ailleurs, parmi cinq entiers consécutifs il y a toujours un multiple de $5$, donc à plus forte raison parmi six. Le produit est donc divisible par $5$.

Divisible par $9$ et par $5$, il est divisible par $45$.

**Étape 2 : $n = 5$ ne convient pas.**

Il suffit d'un contre-exemple :

$$1 \times 2 \times 3 \times 4 \times 5 = 120 .$$

Or $120 = 45 \times 2 + 30$ : ce n'est pas un multiple de $45$. (On le voit aussi ainsi : $120 = 2^3 \times 3 \times 5$, il n'y a qu'un seul facteur $3$, donc $9$ ne divise pas $120$.)

Donc $n = 5$ ne convient pas, et d'après la remarque du début, aucun $n$ plus petit ne convient non plus.

**Conclusion.** Le plus petit entier cherché est $\boxed{n = 6}$.

## Going further

1. Pourquoi cinq entiers consécutifs ne suffisent-ils pas, alors qu'ils contiennent forcément un multiple de $5$ ? Parce qu'ils peuvent ne contenir qu'**un seul** multiple de $3$ : par exemple $7, 8, 9, 10, 11$. Attention cependant, $7 \times 8 \times 9 \times 10 \times 11$ est quand même un multiple de $45$, puisque $9$ est lui-même un multiple de $9$. Un contre-exemple doit être vérifié, pas deviné.
2. Même question avec $100$ à la place de $45$. Puis avec $8$. Puis avec $27$.
3. Question plus difficile : montrer que le produit de $n$ entiers consécutifs est toujours divisible par $n!$ (la factorielle de $n$, c'est-à-dire $1 \times 2 \times \cdots \times n$).
