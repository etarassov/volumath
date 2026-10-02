---
id: "12829"
title: "Multiples de 222 et somme des carrés des chiffres"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [chiffres, multiples, divisibilite, restes, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection de mai 2023"
  reference: "2023-09_Enonce-Test-5.pdf, test junior, exercice 3 ; corrigé 2023-09_Corrige-Test-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/09/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2023-09_Enonce-Test-5.pdf"
---

## Statement

Trouver tous les entiers $n \geq 1$ pour lesquels il existe un multiple de $222$ dont la somme des carrés des chiffres est égale à $n$.

Par exemple, $n = 12$ convient, car $222$ est un multiple de $222$ et $2^2 + 2^2 + 2^2 = 12$.

## Hints

1. Calculez la somme des carrés des chiffres de quelques multiples de $222$ : $444$, $666$, $1110$...
2. Montrez que si $n$ et $m$ conviennent, alors $n + m$ convient aussi. Comment « coller » deux multiples de $222$ l'un derrière l'autre ?
3. Trouvez des multiples de $222$ qui donnent $8$ et $10$. Essayez d'additionner deux multiples de $1110$ bien choisis, par exemple $111000 + 1110$.
4. Pour exclure les petites valeurs : un multiple de $222$ est un multiple de $3$, donc la somme de ses chiffres aussi. Il ne reste qu'un cas délicat, celui d'un nombre qui s'écrit avec un seul chiffre $1$, un seul chiffre $2$ et des zéros. Utilisez $222 = 6 \times 37$ et $999 = 27 \times 37$.

## Solution

Pour un entier $k \geq 1$, notons $S(k)$ la somme des carrés de ses chiffres. On dit qu'un entier $n \geq 1$ **convient** s'il existe un multiple $k \geq 1$ de $222$ tel que $S(k) = n$.

La réponse : **$n$ convient si et seulement si $n = 3$, $n = 6$ ou $n \geq 8$.** Autrement dit, seuls $1$, $2$, $4$, $5$ et $7$ ne conviennent pas.

### Étape 1 : la somme de deux valeurs qui conviennent convient aussi

Soit $k$ et $\ell$ deux multiples de $222$ tels que $S(k) = n$ et $S(\ell) = m$. Choisissons un entier $p$ assez grand pour que $10^p > k$, et posons

$$N = \ell \times 10^p + k.$$

C'est un multiple de $222$, car $\ell$ et $k$ en sont. Son écriture décimale s'obtient en écrivant les chiffres de $\ell$, puis des zéros, puis les chiffres de $k$. Par exemple, avec $\ell = 444$, $k = 222$ et $p = 4$, on obtient $N = 4440222$. Les zéros ne comptent pas dans la somme des carrés, donc

$$S(N) = S(\ell) + S(k) = m + n.$$

**Si $n$ et $m$ conviennent, alors $n + m$ convient.**

### Étape 2 : trois valeurs qui conviennent

- $1110 = 5 \times 222$ et $S(1110) = 1 + 1 + 1 = 3$ : **$3$ convient.**
- $112110 = 111000 + 1110 = 505 \times 222$ et $S(112110) = 1 + 1 + 4 + 1 + 1 = 8$ : **$8$ convient.**
- $12210 = 11100 + 1110 = 55 \times 222$ et $S(12210) = 1 + 4 + 4 + 1 = 10$ : **$10$ convient.**

En ajoutant $3$ autant de fois que l'on veut (étape 1), on obtient que conviennent :

- tous les multiples de $3$ : $3, 6, 9, 12, \ldots$ ;
- tous les nombres $8, 11, 14, 17, \ldots$ ;
- tous les nombres $10, 13, 16, 19, \ldots$

Tout entier $n \geq 8$ est dans l'une de ces trois listes, selon son reste dans la division par $3$. **Les entiers $3$, $6$ et tous les entiers $n \geq 8$ conviennent.**

### Étape 3 : les valeurs 1, 2, 4, 5 et 7 ne conviennent pas

Soit $k$ un multiple de $222$ tel que $S(k) \leq 7$. Montrons que $S(k)$ vaut $3$ ou $6$.

Comme $222 = 3 \times 74$, le nombre $k$ est un multiple de $3$, donc **la somme de ses chiffres est un multiple de $3$**.

- Si $k$ a un chiffre supérieur ou égal à $3$, alors $S(k) \geq 9$ : c'est exclu.
- Si $k$ a au moins deux chiffres égaux à $2$, alors $S(k) \geq 4 + 4 = 8$ : c'est exclu.
- Si tous les chiffres non nuls de $k$ valent $1$, alors $S(k)$ est égal à la somme des chiffres, qui est un multiple de $3$ : $S(k) = 3$ ou $6$.
- Il reste le cas où $k$ a exactement un chiffre $2$ et $j$ chiffres $1$, les autres étant des zéros. Alors $S(k) = 4 + j \leq 7$ donne $j \leq 3$, et la somme des chiffres $2 + j$ est un multiple de $3$, donc $j = 1$. Ainsi $k$ s'écrit avec un $1$, un $2$ et des zéros :
$$k = 10^u + 2 \times 10^v, \qquad u \neq v.$$

Montrons qu'un tel nombre n'est jamais un multiple de $37$. Comme $222 = 6 \times 37$, ce n'est donc pas un multiple de $222$, et ce cas est impossible.

**Les restes des puissances de $10$ dans la division par $37$.** On a $999 = 27 \times 37$. Pour tout entier $x$, la différence $1000x - x = 999x$ est un multiple de $37$ : **multiplier par $1000$ ne change pas le reste dans la division par $37$**. Comme $1 = 0 \times 37 + 1$, $10 = 0 \times 37 + 10$ et $100 = 2 \times 37 + 26$, les puissances

$$1, \ 10, \ 100, \ 1000, \ 10\,000, \ 100\,000, \ \ldots$$

ont pour restes $1, 10, 26, 1, 10, 26, \ldots$ Donc :

- le reste de $10^u$ est $1$, $10$ ou $26$ ;
- le reste de $2 \times 10^v$ est celui de $2$, $20$ ou $52$, c'est-à-dire $2$, $20$ ou $15$.

La somme de ces deux restes vaut l'un des nombres

$$1 + 2 = 3, \quad 1 + 20 = 21, \quad 1 + 15 = 16, \quad 12, \quad 30, \quad 25, \quad 28, \quad 46, \quad 41.$$

Aucun n'est un multiple de $37$, donc $k = 10^u + 2 \times 10^v$ n'est pas un multiple de $37$.

Dans tous les cas possibles, $S(k) = 3$ ou $S(k) = 6$. **Les entiers $1$, $2$, $4$, $5$ et $7$ ne conviennent pas.**

### Conclusion

Les entiers $n \geq 1$ cherchés sont $n = 3$, $n = 6$ et tous les entiers $n \geq 8$.

## Going further

1. Reprenez l'exercice avec les multiples de $111$ au lieu de $222$. La réponse change-t-elle ?
2. À l'étape 2, pourquoi n'a-t-on pas pu se contenter de coller des copies de $222$, $444$, $666$, $888$ et $1110$ ?
