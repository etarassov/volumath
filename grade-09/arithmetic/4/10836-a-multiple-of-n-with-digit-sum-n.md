---
id: "10836"
title: "Un multiple de n dont la somme des chiffres vaut n"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [divisibilite, restes, somme-des-chiffres, principe-des-tiroirs, construction, puissances]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 1 (arithmétique)"
  reference: "2017-10_ofm-2016-2017-envoi-1.pdf, Exercices du groupe B, exercice 3 ; corrigé 2017-10_ofm-2016-2017-envoi-1-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-1.pdf"
---

## Statement

Montrer que pour tout entier $n \geqslant 1$, il existe un multiple $m$ de $n$ dont la somme des chiffres est égale à $n$.

## Hints

1. Pour $n \leqslant 9$, c'est facile. Pour $n = 11$ ou $n = 12$, cherche un exemple à la main.
2. Cherche $m$ écrit uniquement avec des chiffres $1$ et $0$ : sa somme des chiffres est alors le nombre de chiffres $1$. Un tel nombre est une somme de puissances de $10$ différentes.
3. Regarde les restes des puissances de $10$ dans la division par $n$. Combien de restes différents sont possibles ?
4. Si $n$ puissances de $10$ différentes ont toutes le même reste $k$ dans la division par $n$, que peut-on dire de leur somme ?

## Solution

L'idée est de chercher $m$ parmi les nombres qui s'écrivent avec $n$ chiffres $1$ et des chiffres $0$ : leur somme des chiffres vaut bien $n$. Il reste à placer les chiffres $1$ pour obtenir un multiple de $n$.

### Étape 1 : $n$ puissances de $10$ qui ont le même reste

Considérons les $n^2$ nombres
$$10^0 = 1, \quad 10^1, \quad 10^2, \quad \ldots, \quad 10^{n^2 - 1} .$$
Chacun a un reste dans la division par $n$, qui est l'un des $n$ nombres $0, 1, \ldots, n - 1$.

Si chaque reste était obtenu au plus $n - 1$ fois, on aurait au plus $n \times (n - 1) = n^2 - n$ nombres, ce qui est moins que $n^2$. Ce n'est pas le cas. **Il existe donc un reste $k$ obtenu au moins $n$ fois.** (C'est le *principe des tiroirs* : en rangeant $n^2$ objets dans $n$ tiroirs, un tiroir contient au moins $n$ objets.)

On choisit $n$ exposants différents $a_1 < a_2 < \cdots < a_n$ tels que $10^{a_1}, \ldots, 10^{a_n}$ aient tous le reste $k$ dans la division par $n$. On peut donc écrire, pour chaque $i$,
$$10^{a_i} = n\,q_i + k, \qquad \text{avec } q_i \text{ entier}.$$

### Étape 2 : le nombre $m$

Posons
$$m = 10^{a_1} + 10^{a_2} + \cdots + 10^{a_n} .$$

*Sa somme des chiffres.* Les exposants sont tous différents, donc $m$ s'écrit avec un chiffre $1$ à chacune des positions $a_1, \ldots, a_n$, et des $0$ ailleurs. Par exemple $10^0 + 10^2 + 10^3 = 1101$. **La somme des chiffres de $m$ vaut donc $n$.**

*C'est un multiple de $n$.* En additionnant les $n$ égalités de l'étape 1,
$$m = n\,(q_1 + q_2 + \cdots + q_n) + \underbrace{k + k + \cdots + k}_{n \text{ fois}} = n\,(q_1 + \cdots + q_n + k) .$$
**Donc $m$ est un multiple de $n$.**

### Conclusion

Pour tout entier $n \geqslant 1$, le nombre $m$ construit ci-dessus est un multiple de $n$ dont la somme des chiffres vaut $n$.

*Un exemple, $n = 4$.* Les restes de $1$, $10$, $100$, $1000$, … dans la division par $4$ sont $1$, $2$, $0$, $0$, … : à partir de $100$, tous valent $0$. On peut prendre $m = 10^2 + 10^3 + 10^4 + 10^5 = 111\,100 = 4 \times 27\,775$.

## Going further

1. La méthode donne souvent de très grands nombres. Trouve le plus petit multiple de $11$ dont la somme des chiffres vaut $11$. *Réponse : $209 = 11 \times 19$.*
2. Montre de la même façon que tout entier $n \geqslant 1$ a un multiple qui s'écrit uniquement avec des chiffres $1$ et $0$. *Indication : regarde les restes des nombres $1$, $11$, $111$, … et fais la différence de deux d'entre eux.*
