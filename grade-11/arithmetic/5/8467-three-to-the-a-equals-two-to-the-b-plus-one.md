---
id: "8467"
title: "3ᵃ = 2ᵇ + 1"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [equation-diophantienne, modulo-8, factorisation, puissances-de-deux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations diophantiennes » (Jean Rax), exercice 15 (énoncé sans solution imprimée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les couples d'entiers naturels $(a, b)$ tels que

$$3^{\,a} = 2^{\,b} + 1.$$

## Hints

1. Cherche les solutions à la main pour $b = 0, 1, 2, 3, 4, 5$. Tu devrais en trouver deux.
2. Il faut maintenant montrer qu'il n'y en a pas d'autres. Traite d'abord à part les petites valeurs de $b$, disons $b \leqslant 2$.
3. Pour $b \geqslant 3$, le nombre $2^{\,b}$ est un multiple de $8$. Que devient alors l'équation modulo $8$ ? Calcule $3^{\,a}$ modulo $8$ selon la parité de $a$.
4. Tu obtiens que $a$ est pair, disons $a = 2c$. Écris alors $2^{\,b} = 3^{\,2c} - 1$ et factorise avec l'identité $X^2 - 1 = (X-1)(X+1)$.
5. Les deux facteurs sont des puissances de $2$ dont la différence vaut $2$. Quelles sont-elles ?

## Solution

### Étape 1. Chercher à la main

| $b$ | $2^{\,b} + 1$ | est-ce une puissance de $3$ ? |
|---|---|---|
| $0$ | $2$ | non |
| $1$ | $3$ | **oui**, $3 = 3^1$ |
| $2$ | $5$ | non |
| $3$ | $9$ | **oui**, $9 = 3^2$ |
| $4$ | $17$ | non |
| $5$ | $33$ | non |
| $6$ | $65$ | non |

Deux solutions apparaissent : $(a, b) = (1, 1)$ et $(a, b) = (2, 3)$. Montrons qu'il n'y en a pas d'autres.

### Étape 2. Les petites valeurs de $b$

- Si $b = 0$ : $3^{\,a} = 2$, impossible, car $3^0 = 1$ et $3^1 = 3$.
- Si $b = 1$ : $3^{\,a} = 3$, donc $a = 1$. C'est la première solution.
- Si $b = 2$ : $3^{\,a} = 5$, impossible, car $3^1 = 3$ et $3^2 = 9$.

Supposons désormais $b \geqslant 3$.

### Étape 3. Modulo 8 : l'exposant $a$ est pair

Si $b \geqslant 3$, alors $8$ divise $2^{\,b}$, donc

$$3^{\,a} = 2^{\,b} + 1 \equiv 1 \pmod 8.$$

Calculons les puissances de $3$ modulo $8$. On a $3^1 \equiv 3$ et $3^2 = 9 \equiv 1$. En multipliant à chaque fois par $3^2 \equiv 1$, on voit que les puissances de $3$ alternent modulo $8$ : elles valent $1$ quand l'exposant est **pair**, et $3$ quand l'exposant est **impair**.

Comme $3^{\,a} \equiv 1 \pmod 8$, l'exposant $a$ est **pair**. Écrivons $a = 2c$ avec $c \geqslant 1$ (car $a = 0$ donnerait $3^0 = 1 = 2^{\,b}+1$, donc $2^{\,b} = 0$, impossible).

### Étape 4. Factoriser

L'équation devient

$$2^{\,b} = 3^{\,2c} - 1 = \left(3^{\,c}\right)^2 - 1 = \left(3^{\,c} - 1\right)\left(3^{\,c} + 1\right).$$

Les deux facteurs sont des entiers strictement positifs dont le produit est une puissance de $2$. Comme les seuls diviseurs positifs de $2^{\,b}$ sont les puissances de $2$, il existe des entiers $u$ et $v$ tels que

$$3^{\,c} - 1 = 2^{\,u}, \qquad 3^{\,c} + 1 = 2^{\,v}, \qquad u + v = b.$$

Comme $3^{\,c} - 1 < 3^{\,c} + 1$, on a $u < v$.

### Étape 5. Deux puissances de 2 de différence 2

Soustrayons les deux égalités :

$$2^{\,v} - 2^{\,u} = 2, \qquad \text{c'est-à-dire} \qquad 2^{\,u}\left(2^{\,v-u} - 1\right) = 2.$$

Donc $2^{\,u}$ divise $2$, ce qui laisse $u = 0$ ou $u = 1$.

- Si $u = 0$ : alors $2^{\,v} - 1 = 2$, donc $2^{\,v} = 3$ : impossible.
- Si $u = 1$ : alors $2^{\,v-1} - 1 = 1$, donc $2^{\,v-1} = 2$ et $v = 2$.

On obtient $3^{\,c} - 1 = 2$ et $3^{\,c} + 1 = 4$, donc $3^{\,c} = 3$, donc $c = 1$.

D'où $a = 2c = 2$ et $b = u + v = 1 + 2 = 3$. C'est la seconde solution.

### Conclusion

$$\boxed{(a, b) = (1, 1) \quad \text{et} \quad (a, b) = (2, 3).}$$

Autrement dit, les seules égalités sont $3 = 2 + 1$ et $9 = 8 + 1$.

## Going further

L'équation $3^{\,a} - 2^{\,b} = 1$ est un cas particulier d'une question célèbre : **quand deux puissances parfaites sont-elles consécutives ?** Catalan a conjecturé en 1844 que la seule réponse est $8$ et $9$, c'est-à-dire $3^2 - 2^3 = 1$, et cela n'a été démontré qu'en 2002, par Preda Mihăilescu. Notre exercice en traite le tout petit bout où les bases sont fixées à $2$ et $3$, et cela reste faisable à la main.

La même machinerie règle l'équation voisine $2^{\,b} - 3^{\,a} = 1$. Le cas $a = 0$ se traite à part et donne $2^{\,b} = 2$, soit $b = 1$ : c'est l'égalité $2 - 1 = 1$. Pour $a \geqslant 1$, on regarde modulo $3$ : $2^{\,b} \equiv 1$, donc $b$ est pair, $b = 2d$, et

$$3^{\,a} = \left(2^{\,d}-1\right)\left(2^{\,d}+1\right)$$

est un produit de deux puissances de $3$ de différence $2$, donc $1$ et $3$, donc $d = 1$, $b = 2$ et $a = 1$ : l'égalité $4 = 3 + 1$.
