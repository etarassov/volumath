---
id: "3003"
title: "Les deux derniers chiffres d'une tour de 12"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [congruences, puissances, ordre multiplicatif, chiffres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Olympiads training, Euler's Phi Function"
  reference: "Handout-3338-2918.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3338-2918.pdf"
---

## Statement

Quels sont les deux derniers chiffres du nombre

$$12^{\left(11^{10}\right)} \; ?$$

Attention à l'ordre des étages : on élève $12$ à la puissance $11^{10}$, et non $12^{11}$ à
la puissance $10$.

## Hints

1. Les deux derniers chiffres, c'est le reste modulo $100$. Et $100 = 4 \times 25$.
2. Modulo $4$, le nombre $12$ est nul. L'exposant $11^{10}$ est clairement plus grand que $1$.
3. Modulo $25$, calcule les premières puissances de $12$ : $12^2$, $12^4$, $12^5$, puis $12^{10}$. Une bonne surprise t'attend.
4. Si $12^{10} \equiv -1 \pmod{25}$, alors $12^{20} \equiv 1 \pmod{25}$. Il te suffit donc de connaître $11^{10}$ modulo $20$.
5. $11^2 = 121 = 6 \times 20 + 1$.

## Solution

Les deux derniers chiffres d'un entier, c'est son reste modulo $100$. On écrit
$100 = 4 \times 25$, avec $4$ et $25$ premiers entre eux, et on traite les deux modules à part.

**Modulo 4.**

$12 = 4 \times 3$ est divisible par $4$, et l'exposant $11^{10}$ vaut au moins $1$. Donc

$$12^{\left(11^{10}\right)} \equiv 0 \pmod 4.$$

**Modulo 25 : trouver le cycle.**

Calculons les puissances de $12$ modulo $25$ :

$$12^2 = 144 = 5 \times 25 + 19 \equiv 19,$$
$$12^4 \equiv 19^2 = 361 = 14 \times 25 + 11 \equiv 11,$$
$$12^5 \equiv 11 \times 12 = 132 = 5 \times 25 + 7 \equiv 7,$$
$$12^{10} \equiv 7^2 = 49 = 25 + 24 \equiv -1 \pmod{25}.$$

Donc $12^{20} \equiv (-1)^2 = 1 \pmod{25}$ : les puissances de $12$ se répètent modulo $25$
avec une période qui divise $20$.

**L'exposant, modulo 20.**

Il suffit donc de connaître le reste de $11^{10}$ modulo $20$. Or

$$11^2 = 121 = 6 \times 20 + 1 \equiv 1 \pmod{20},$$

donc $11^{10} = \left(11^2\right)^5 \equiv 1^5 = 1 \pmod{20}$.

On écrit $11^{10} = 20q + 1$ et on obtient

$$12^{\left(11^{10}\right)} = \left(12^{20}\right)^{q} \times 12 \equiv 1^q \times 12 = 12 \pmod{25}.$$

**On recolle.**

On cherche $x$ entre $0$ et $99$ avec $x \equiv 0 \pmod 4$ et $x \equiv 12 \pmod{25}$. Les
entiers congrus à $12$ modulo $25$ sont $12$, $37$, $62$, $87$ ; le seul qui soit multiple de
$4$ est $12$.

**Conclusion.**

$$12^{\left(11^{10}\right)} \equiv 12 \pmod{100}.$$

Les deux derniers chiffres sont $1$ et $2$. Une tour d'exposants gigantesque (l'exposant
$11^{10}$ vaut déjà $25\,937\,424\,601$) se termine simplement par $12$, comme $12^1$.
