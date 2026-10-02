---
id: "8821"
title: "Le PGCD de a + b et de a² − ab + b²"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [pgcd, nombres-premiers-entre-eux, lemme-deuclide, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Arithmétique : Nombres premiers » (Anatole et Martin), exercice 22, p. 59"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Soient $a$ et $b$ deux entiers strictement positifs **premiers entre eux**.

Quelles valeurs peut prendre
$$d = \mathrm{PGCD}\left(a+b, \; a^2 - ab + b^2\right) \; ?$$

Il faut à la fois montrer que seules certaines valeurs sont possibles, et donner pour chacune un exemple qui l'atteint.

## Hints

1. Pour contrôler un PGCD, on regarde ses diviseurs premiers. Soit $p$ un nombre premier divisant $d$ : il divise $a+b$ et $a^2-ab+b^2$.
2. Cherche une combinaison de $a+b$ et $a^2-ab+b^2$ qui soit simple. Calcule $(a+b)^2 - (a^2-ab+b^2)$.
3. Tu obtiens $3ab$. Par le lemme d'Euclide, $p$ divise $3$, ou $a$, ou $b$. Montre que les deux derniers cas contredisent l'hypothèse « $a$ et $b$ premiers entre eux ».
4. Il reste $p = 3$, donc $d$ est une puissance de $3$. Pour éliminer $9$, travaille modulo $9$ : si $9 \mid a+b$, alors $a \equiv -b$, et $a^2-ab+b^2 \equiv 3b^2$.
5. Pour la partie « exemples », essaie $(a,b) = (1,1)$ puis $(a,b)=(1,2)$.

## Solution

### Étape 1 : le seul diviseur premier possible est $3$

Posons $d = \mathrm{PGCD}(a+b, \; a^2-ab+b^2)$ et soit $p$ un nombre premier divisant $d$. Alors $p$ divise $a+b$ et $a^2-ab+b^2$, donc il divise toute combinaison de ces deux nombres. Calculons
$$(a+b)^2 - \left(a^2 - ab + b^2\right) = a^2 + 2ab + b^2 - a^2 + ab - b^2 = 3ab .$$

Comme $p$ divise $(a+b)^2$ et $a^2-ab+b^2$, il divise $3ab$.

D'après le **lemme d'Euclide** (si un nombre premier divise un produit, il divise l'un des facteurs), $p$ divise $3$, ou $a$, ou $b$.

- Si $p \mid a$ : comme $p \mid a+b$, on en déduit $p \mid (a+b) - a = b$. Donc $p$ divise à la fois $a$ et $b$, ce qui contredit « $a$ et $b$ premiers entre eux ».
- Si $p \mid b$ : par le même raisonnement, $p \mid a$, même contradiction.

Il reste donc $p \mid 3$, c'est-à-dire $p = 3$. Autrement dit, **le seul diviseur premier possible de $d$ est $3$** : $d$ est une puissance de $3$.

### Étape 2 : $9$ ne divise pas $d$

Supposons par l'absurde que $9 \mid d$. Alors $9 \mid a+b$, donc
$$a \equiv -b \pmod 9 .$$

Reportons dans la seconde quantité :
$$a^2 - ab + b^2 \equiv (-b)^2 - (-b)b + b^2 = b^2 + b^2 + b^2 = 3b^2 \pmod 9 .$$

Comme $9$ divise aussi $a^2-ab+b^2$, on obtient $9 \mid 3b^2$, donc $3 \mid b^2$, donc $3 \mid b$ (car $3$ est premier).

Mais alors $3$ divise $b$ et $3$ divise $a+b$ (puisque $9$ le divise), donc $3 \mid a$. De nouveau $a$ et $b$ ne seraient pas premiers entre eux : contradiction.

Donc $9 \nmid d$, et comme $d$ est une puissance de $3$, il ne reste que
$$d = 1 \qquad \text{ou} \qquad d = 3 .$$

### Étape 3 : les deux valeurs sont atteintes

- $(a, b) = (1, 1)$ : ces deux nombres sont premiers entre eux, $a+b = 2$ et $a^2-ab+b^2 = 1$, donc $d = \mathrm{PGCD}(2,1) = 1$.
- $(a, b) = (1, 2)$ : ces deux nombres sont premiers entre eux, $a+b = 3$ et $a^2-ab+b^2 = 1 - 2 + 4 = 3$, donc $d = \mathrm{PGCD}(3,3) = 3$.

**Conclusion.**
$$\boxed{\mathrm{PGCD}\left(a+b, \; a^2-ab+b^2\right) \in \{1, \; 3\},}$$
et les deux valeurs se produisent réellement.

### À quoi cela sert

Le produit $(a+b)(a^2-ab+b^2)$ vaut $a^3+b^3$. Ce que l'on vient de démontrer contrôle donc entièrement le « chevauchement » entre les deux facteurs naturels d'une somme de deux cubes de nombres premiers entre eux. C'est un ingrédient classique des équations diophantiennes en cubes.

## Going further

Montrer que $d = 3$ si et seulement si $3$ divise $a + b$.
