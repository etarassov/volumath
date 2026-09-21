---
id: "8416"
title: "Quand 4n⁴ + 1 est-il premier ?"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombre-premier, factorisation, identite-remarquable, difference-de-carres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe A"
  reference: "Poly-2021-Valbonne.pdf, Groupe A, « Inégalités et manipulations algébriques » (Auguste De Lambilly), exercice 3 (la solution imprimée ne retient que n = 1 et oublie n = −1, qui convient aussi)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les entiers relatifs $n$ pour lesquels le nombre

$$4n^4 + 1$$

est un nombre premier.

## Hints

1. Fais d'abord le calcul pour $n = 0, 1, 2, 3$ et regarde si les résultats sont premiers. Une conjecture se dégage vite.
2. Pour démontrer, il faut **factoriser** $4n^4 + 1$. Cela semble impossible : il n'y a que deux termes. L'astuce consiste à en ajouter un, puis à le retrancher.
3. Ajoute et retranche $4n^2$. Le morceau $4n^4 + 4n^2 + 1$ est un carré : lequel ?
4. Tu obtiens une différence de deux carrés, donc un produit de deux facteurs. Pour qu'un produit de deux entiers positifs soit premier, que doit valoir l'un des deux ?

## Solution

**Étape 1. Faire apparaître une différence de carrés.**

L'expression $4n^4 + 1$ n'a que deux termes, mais en lui ajoutant et en lui retranchant $4n^2$ on fait apparaître un carré :

$$4n^4 + 1 = \big(4n^4 + 4n^2 + 1\big) - 4n^2 = \big(2n^2 + 1\big)^2 - (2n)^2.$$

C'est une différence de deux carrés, donc

$$4n^4 + 1 = \big(2n^2 + 1 - 2n\big)\big(2n^2 + 1 + 2n\big).$$

Notons

$$u = 2n^2 - 2n + 1 \qquad \text{et} \qquad v = 2n^2 + 2n + 1,$$

de sorte que $4n^4 + 1 = u \times v$.

**Étape 2. Les deux facteurs sont des entiers strictement positifs.**

On a $u = 2n(n-1) + 1$. Pour tout entier $n$, les entiers $n$ et $n-1$ sont consécutifs, donc leur produit $n(n-1)$ est positif ou nul. Ainsi $u \geqslant 1$.

De même $v = 2n(n+1) + 1 \geqslant 1$, puisque $n(n+1)$ est un produit de deux entiers consécutifs, lui aussi positif ou nul.

**Étape 3. Un produit qui doit être premier.**

Supposons $4n^4 + 1$ premier, et notons-le $p$. Comme $p = uv$ avec $u$ et $v$ entiers strictement positifs, et qu'un nombre premier n'a d'autres diviseurs positifs que $1$ et lui-même, l'un des deux facteurs vaut $1$.

- Si $u = 1$ : $2n^2 - 2n + 1 = 1$, donc $2n(n-1) = 0$, donc $n = 0$ ou $n = 1$.
- Si $v = 1$ : $2n^2 + 2n + 1 = 1$, donc $2n(n+1) = 0$, donc $n = 0$ ou $n = -1$.

Les seules valeurs possibles sont donc $n = -1$, $n = 0$ et $n = 1$.

**Étape 4. On vérifie ces trois valeurs.**

| $n$ | $4n^4 + 1$ | premier ? |
|---|---|---|
| $-1$ | $5$ | oui |
| $0$ | $1$ | non, $1$ n'est pas premier |
| $1$ | $5$ | oui |

**Conclusion.** Le nombre $4n^4 + 1$ est premier exactement pour $n = 1$ et pour $n = -1$, et il vaut alors $5$.

## Going further

L'identité utilisée ici porte un nom : c'est l'**identité de Sophie Germain**,

$$a^4 + 4b^4 = \big(a^2 - 2ab + 2b^2\big)\big(a^2 + 2ab + 2b^2\big),$$

que l'on retrouve en prenant $a = 1$ et $b = n$ (au facteur près, c'est le même calcul). Elle se démontre exactement de la même façon : on ajoute et on retranche $4a^2b^2$.

Elle sert chaque fois qu'on veut montrer qu'un nombre de la forme $a^4 + 4b^4$ n'est pas premier. Par exemple, $4^{545} + 545^4$ n'est pas premier, ce qui n'est pas évident à première vue.

Notons enfin que si l'on se restreint aux entiers **naturels**, la seule réponse est $n = 1$.
