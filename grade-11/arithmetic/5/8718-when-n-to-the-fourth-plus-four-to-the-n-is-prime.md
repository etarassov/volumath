---
id: "8718"
title: "Quand n⁴ + 4ⁿ est-il premier ?"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [nombres-premiers, factorisation, identites-remarquables, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024, cours de Groupe A"
  reference: "poly_valbonne_2024.pdf, Groupe A, « Nombres premiers » (Paul A), exercice 18"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Trouver tous les entiers naturels $n$ pour lesquels

$$n^4 + 4^n$$

est un nombre premier.

## Hints

1. Commence par calculer la valeur pour $n = 0, 1, 2, 3, 4, 5$. Tu verras tout de suite ce qu'il faut démontrer.
2. Le cas $n$ pair se règle en une ligne. Regarde la parité de $n^4 + 4^n$.
3. Pour $n$ impair, il faut **factoriser**. Le point de départ est l'identité de Sophie Germain :

   $$a^4 + 4b^4 = (a^2 + 2b^2 + 2ab)(a^2 + 2b^2 - 2ab) .$$

   Pour la retrouver, ajoute et retranche $4a^2b^2$.
4. Il reste à écrire $4^n$ sous la forme $4b^4$. C'est possible exactement quand $n$ est impair : cherche $b$ comme une puissance de $2$.
5. Une factorisation ne suffit pas à prouver qu'un nombre est composé : il faut vérifier que les **deux** facteurs sont strictement supérieurs à $1$.

## Solution

**Réponse : $n = 1$ est le seul cas, et $1^4 + 4^1 = 5$.**

### Les petites valeurs

| $n$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ |
|---|---|---|---|---|---|---|
| $n^4 + 4^n$ | $1$ | $5$ | $32$ | $145$ | $512$ | $1649$ |

On voit $1$ (qui n'est pas premier), puis $5$ (premier), puis du composé : $145 = 5 \times 29$ et $1649 = 17 \times 97$. Conjecture : seul $n = 1$ convient.

### Le cas $n = 0$

$0^4 + 4^0 = 0 + 1 = 1$, et $1$ n'est pas premier.

### Le cas $n$ pair, $n \geqslant 2$

Si $n$ est pair, $n^4$ est pair, et $4^n$ est pair aussi. Donc $n^4 + 4^n$ est pair. Or il vaut au moins $2^4 + 4^2 = 32 > 2$. Un nombre pair strictement plus grand que $2$ n'est pas premier.

### L'identité de Sophie Germain

C'est l'outil du cas restant. Partons de $a^4 + 4b^4$ et ajoutons puis retranchons $4a^2b^2$, ce qui ne change rien :

$$a^4 + 4b^4 = \left(a^4 + 4a^2b^2 + 4b^4\right) - 4a^2b^2 = \left(a^2 + 2b^2\right)^2 - (2ab)^2 .$$

C'est une différence de deux carrés, donc

$$a^4 + 4b^4 = \left(a^2 + 2b^2 + 2ab\right)\left(a^2 + 2b^2 - 2ab\right) .$$

### Le cas $n$ impair, $n \geqslant 3$

Il faut écrire $4^n$ sous la forme $4b^4$. On cherche donc $b$ tel que $b^4 = 4^{\,n-1} = 2^{\,2(n-1)}$, c'est-à-dire

$$b = 2^{\frac{n-1}{2}} .$$

C'est bien un entier, puisque $n$ est impair, donc $n-1$ est pair. On a alors

$$n^4 + 4^n = n^4 + 4b^4 = \left(n^2 + 2b^2 + 2nb\right)\left(n^2 + 2b^2 - 2nb\right) .$$

**Les deux facteurs sont strictement plus grands que $1$.** Le plus grand des deux, $n^2 + 2b^2 + 2nb$, est évidemment supérieur à $1$. Pour le plus petit, on reconnaît un début de carré :

$$n^2 + 2b^2 - 2nb = \left(n^2 - 2nb + b^2\right) + b^2 = (n-b)^2 + b^2 \;\geqslant\; b^2 .$$

Or $n \geqslant 3$ donne $\frac{n-1}{2} \geqslant 1$, donc $b \geqslant 2$ et $b^2 \geqslant 4 > 1$.

Ainsi $n^4 + 4^n$ est le produit de deux entiers tous deux supérieurs ou égaux à $2$ : il n'est pas premier.

*Vérification sur $n = 3$.* Ici $b = 2$, et la formule donne $(9 + 8 + 12)(9 + 8 - 12) = 29 \times 5 = 145$. C'est bien ce qu'on avait calculé.

### Conclusion

Le seul entier naturel $n$ tel que $n^4 + 4^n$ soit premier est

$$\boxed{n = 1}, \qquad \text{et alors } n^4 + 4^n = 5 .$$

## Going further

1. Reprends l'identité de Sophie Germain pour factoriser $4^{545} + 545^4$ sans calculatrice, et donne deux facteurs explicites.

2. Montre que $n^4 + 4$ n'est jamais premier pour $n \geqslant 2$. C'est le cas $b = 1$ de l'identité.

3. La même idée sert ailleurs : montre que pour tout entier $m \geqslant 2$, le nombre $m^4 + 4m^2 + 16$ n'est pas premier. *Indication : ajoute et retranche le bon terme pour faire apparaître une différence de carrés.*
