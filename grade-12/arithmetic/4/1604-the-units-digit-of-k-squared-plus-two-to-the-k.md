---
id: "1604"
title: "Le chiffre des unités de k² + 2^k"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 25
tags: [congruences, chiffre-des-unites, puissances, restes-chinois]
adapted_from: null
see_also: []
same_as: ["2806"]
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2A, Group Competition"
  reference: "Handout-2698-2323.pdf, problème 15 (réponse dans Handout-2710-2323.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-2698-2323.pdf"
---

## Statement

On pose
$$k = 2020^2 + 2^{2020}.$$

Quel est le chiffre des unités de $k^2 + 2^k$ ?

## Hints

1. Le chiffre des unités d'un entier $n$, c'est le reste de $n$ dans la division par $10$. Comme $10 = 2 \times 5$, il suffit de connaître $n$ modulo $2$ et modulo $5$.
2. Modulo $2$, c'est facile : $k$ est-il pair ou impair ? Et $k^2 + 2^k$ ?
3. Modulo $5$, calcule d'abord $k$. Attention : $2020$ est un multiple de $5$, et les puissances de $2$ modulo $5$ se répètent avec une période courte. Laquelle ?
4. Pour $2^k$ modulo $5$, tu n'as pas besoin de connaître $k$ : il te suffit de connaître $k$ **modulo 4**. Calcule donc aussi $k$ modulo $4$.

## Solution

**L'idée : ne jamais calculer $k$, qui a plus de six cents chiffres. On travaille modulo $2$
et modulo $5$, et on recolle les deux informations à la fin.**

Le chiffre des unités d'un entier est son reste dans la division euclidienne par $10$. Comme
$10 = 2 \times 5$ avec $2$ et $5$ premiers entre eux, il suffit de connaître $k^2 + 2^k$
modulo $2$ et modulo $5$.

**Étape 1. Modulo 2.**

$2020^2$ est pair et $2^{2020}$ est pair, donc $k$ est **pair**. Alors $k^2$ est pair, et
$2^k$ est pair aussi (car $k \ge 1$). Donc
$$k^2 + 2^k \equiv 0 \pmod 2 .$$

**Étape 2. La valeur de $k$ modulo 5.**

D'une part $2020 = 5 \times 404$, donc $2020 \equiv 0 \pmod 5$ et $2020^2 \equiv 0 \pmod 5$.

D'autre part, les puissances de $2$ modulo $5$ sont périodiques de période $4$ :
$$2^1 \equiv 2,\quad 2^2 \equiv 4,\quad 2^3 \equiv 3,\quad 2^4 \equiv 1 \pmod 5 ,$$
puis tout recommence. Comme $2020 = 4 \times 505$ est un multiple de $4$, on a
$2^{2020} \equiv 1 \pmod 5$.

Donc
$$k \equiv 0 + 1 = 1 \pmod 5, \qquad\text{d'où}\qquad k^2 \equiv 1 \pmod 5 .$$

**Étape 3. La valeur de $k$ modulo 4.**

Pour calculer $2^k$ modulo $5$, la période $4$ montre qu'il suffit de connaître le reste de
$k$ modulo $4$.

$2020 = 4 \times 505$ est un multiple de $4$, donc $2020^2$ aussi. Et $2^{2020}$ est un
multiple de $4$ puisque $2020 \ge 2$. Donc
$$k \equiv 0 \pmod 4 .$$

**Étape 4. La valeur de $2^k$ modulo 5.**

Écrivons $k = 4q$ avec $q$ entier, $q \ge 1$. Alors
$$2^k = 2^{4q} = (2^4)^q \equiv 1^q = 1 \pmod 5 .$$

**Étape 5. Recoller.**

$$k^2 + 2^k \equiv 1 + 1 = 2 \pmod 5, \qquad k^2 + 2^k \equiv 0 \pmod 2 .$$

Les entiers congrus à $2$ modulo $5$ ont pour chiffre des unités $2$ ou $7$. Le nombre étant
pair, ce chiffre est $2$.

**Conclusion : le chiffre des unités de $k^2 + 2^k$ est $2$.**

## Going further

Une vérification est possible sur ordinateur, à condition de ne jamais écrire $2^k$ en
entier : en Python, `(pow(k, 2, 10) + pow(2, k, 10)) % 10` renvoie bien `2`, parce que
`pow(a, b, m)` calcule $a^b \bmod m$ par exponentiation rapide, sans jamais former $a^b$.
