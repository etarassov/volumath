---
id: "13041"
title: "Une fraction de puissances de 2 égale à 2ᵃ + b"
grade: 9
theme: algebra
difficulty: 3
duration_min: 20
tags: [puissances, identites remarquables, encadrement, factorisation]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 3 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

Soient $a$ et $b$ des entiers tels que $0 < b < a$ et
$$\frac{2^{8060} - 1}{\left(2^{4030} + 1\right)\left(2^{2015} - 1\right)} = 2^a + b .$$
Déterminer la valeur de $a + b$.

## Hints

1. Remarque que $8060 = 2 \times 4030$ et $4030 = 2 \times 2015$. Le nombre $2^{8060}$ est donc un carré.
2. Utilise deux fois l'identité $A^2 - 1 = (A - 1)(A + 1)$ pour factoriser le numérateur. Que reste-t-il après simplification ?
3. Tu obtiens $2^{2015} + 1 = 2^a + b$. Pour en déduire $a$, encadre $2^a + b$ entre deux puissances de $2$ consécutives, en utilisant $b < a < 2^a$.

## Solution

**On factorise le numérateur.** Comme $8060 = 2 \times 4030$, on a $2^{8060} = \left(2^{4030}\right)^2$, et l'identité $A^2 - 1 = (A - 1)(A + 1)$ donne
$$2^{8060} - 1 = \left(2^{4030} - 1\right)\left(2^{4030} + 1\right).$$
De même, $2^{4030} = \left(2^{2015}\right)^2$, donc
$$2^{4030} - 1 = \left(2^{2015} - 1\right)\left(2^{2015} + 1\right).$$
Ainsi
$$2^{8060} - 1 = \left(2^{2015} - 1\right)\left(2^{2015} + 1\right)\left(2^{4030} + 1\right),$$
et après simplification, la fraction vaut
$$2^{2015} + 1 .$$

**On cherche $a$ et $b$.** Il faut donc $2^a + b = 2^{2015} + 1$, avec $0 < b < a$.

Pour tout entier $a \geqslant 1$, on a $a < 2^a$ (on le vérifie pour $a = 1$, et quand $a$ augmente de $1$, le membre de gauche augmente de $1$ alors que celui de droite double, donc augmente d'au moins $2$). Par conséquent
$$2^a < 2^a + b < 2^a + a < 2^a + 2^a = 2^{a + 1} .$$
Le nombre $2^{2015} + 1$ est donc strictement compris entre $2^a$ et $2^{a + 1}$.

Or $2^{2015} < 2^{2015} + 1 < 2^{2016}$. Si l'on avait $a \leqslant 2014$, on aurait $2^{2015} + 1 < 2^{a+1} \leqslant 2^{2015}$, ce qui est faux. Si l'on avait $a \geqslant 2016$, on aurait $2^{2015} + 1 > 2^a \geqslant 2^{2016}$, faux aussi. Donc $a = 2015$, puis $b = 1$. On a bien $0 < 1 < 2015$.

**Conclusion.** On a $a = 2015$ et $b = 1$, donc $a + b = 2016$.

## Going further

1. Simplifier de la même façon $\dfrac{3^{64} - 1}{\left(3^{32} + 1\right)\left(3^{16} + 1\right)\left(3^{8} + 1\right)}$.
2. Montrer que $2^{2015} + 1$ est divisible par $3$. (On pourra regarder les restes de $2^n$ dans la division par $3$.)
