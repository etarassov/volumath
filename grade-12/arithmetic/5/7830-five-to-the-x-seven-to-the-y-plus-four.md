---
id: "7830"
title: "5ˣ 7ʸ + 4 = 3ᶻ"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [equation-exponentielle, congruences, factorisation, nombres-premiers-entre-eux]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, test de mi-parcours du vendredi 21 août, groupe D, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Trouver tous les triplets d'entiers naturels $(x, y, z)$ tels que
$$5^x\,7^y + 4 = 3^z .$$

## Hints

1. Commence par chercher des solutions à la main avec de petits exposants. Tu devrais en
   trouver une, et une seule.
2. L'idée directrice : montrer d'abord que $z$ est **pair**. Alors $3^z$ est un carré, et
   $3^z - 4$ se factorise.
3. Pour montrer que $z$ est pair, regarde l'équation modulo $5$ (quand $x \geq 1$) puis modulo
   $7$ (quand $y \geq 1$), et dresse la liste des puissances de $3$ dans chacun de ces deux
   mondes.
4. Une fois $z = 2n$, écris $5^x 7^y = (3^n - 2)(3^n + 2)$. Quel est le PGCD des deux facteurs ?
5. Les deux facteurs étant premiers entre eux, l'un est une puissance de $5$ et l'autre une
   puissance de $7$. Deux cas, dont l'un se règle en une ligne modulo $3$.

## Solution

Une solution saute aux yeux : $5^1 \times 7^0 + 4 = 9 = 3^2$, donc $(x,y,z) = (1,0,2)$ convient.
Montrons que c'est la seule.

**Étape 0 : le cas $x = y = 0$.**

L'équation donnerait $1 + 4 = 5 = 3^z$, ce qui est impossible. Donc $x \geq 1$ ou $y \geq 1$, et
en particulier $3^z = 5^x7^y + 4 \geq 9$, donc $z \geq 2$.

**Étape 1 : $z$ est pair.**

*Cas $y = 0$ et $x \geq 1$.* L'équation est $5^x + 4 = 3^z$. Comme $x \geq 1$, on a
$5^x \equiv 0 \pmod 5$, donc
$$3^z \equiv 4 \pmod 5 .$$
Les puissances de $3$ modulo $5$ se répètent avec une période de $4$ :
$$3^1 \equiv 3, \quad 3^2 \equiv 4, \quad 3^3 \equiv 2, \quad 3^4 \equiv 1 \pmod 5 .$$
Seul l'exposant $2$ donne $4$, donc $z \equiv 2 \pmod 4$. En particulier $z$ est pair.

*Cas $y \geq 1$.* Alors $5^x 7^y \equiv 0 \pmod 7$, donc
$$3^z \equiv 4 \pmod 7 .$$
Les puissances de $3$ modulo $7$ ont pour période $6$ :
$$3^1 \equiv 3, \ 3^2 \equiv 2, \ 3^3 \equiv 6, \ 3^4 \equiv 4, \ 3^5 \equiv 5, \ 3^6 \equiv 1 \pmod 7 .$$
Seul l'exposant $4$ donne $4$, donc $z \equiv 4 \pmod 6$. Là encore $z$ est pair.

Dans tous les cas, **$z$ est pair**. Écrivons $z = 2n$ avec $n \geq 1$.

**Étape 2 : on factorise.**

$$5^x 7^y = 3^{2n} - 4 = \left(3^n\right)^2 - 2^2 = (3^n - 2)(3^n + 2) .$$

**Étape 3 : les deux facteurs sont premiers entre eux.**

Soit $d$ un diviseur commun de $3^n - 2$ et $3^n + 2$. Alors $d$ divise leur différence, qui
vaut $4$. Mais $3^n$ est impair, donc $3^n - 2$ est impair, donc $d$ est impair. Un diviseur
impair de $4$ vaut $1$ : les deux facteurs sont premiers entre eux.

**Étape 4 : deux cas.**

Chacun des deux facteurs divise $5^x 7^y$, donc chacun s'écrit $5^i 7^j$. Comme ils sont
premiers entre eux, ils ne peuvent pas partager le facteur $5$ ni le facteur $7$. Donc l'un est
une puissance de $5$ (éventuellement $5^0 = 1$) et l'autre une puissance de $7$ (éventuellement
$7^0 = 1$), et ensemble ils épuisent $5^x$ et $7^y$.

**Cas A : $3^n - 2 = 5^x$ et $3^n + 2 = 7^y$.**

Regardons la seconde égalité modulo $3$. À gauche, $3^n + 2 \equiv 2 \pmod 3$. À droite,
$7 \equiv 1 \pmod 3$ donc $7^y \equiv 1 \pmod 3$.

On aurait $2 \equiv 1 \pmod 3$ : impossible. **Ce cas ne donne aucune solution.**

**Cas B : $3^n - 2 = 7^y$ et $3^n + 2 = 5^x$.**

En soustrayant les deux égalités :
$$5^x - 7^y = 4 .$$

*Sous-cas $x = 0$ :* on aurait $1 - 7^y = 4$, impossible.

*Sous-cas $y = 0$ :* alors $5^x = 5$, donc $x = 1$. Et $3^n - 2 = 1$ donne $3^n = 3$, donc
$n = 1$ et $z = 2$. On retrouve la solution $(1, 0, 2)$.

*Sous-cas $x \geq 1$ et $y \geq 1$ :* montrons que $x$ et $y$ sont tous les deux pairs.

Modulo $7$ : $5^x \equiv 4 \pmod 7$. Les puissances de $5$ modulo $7$ ont pour période $6$ :
$$5^1 \equiv 5, \ 5^2 \equiv 4, \ 5^3 \equiv 6, \ 5^4 \equiv 2, \ 5^5 \equiv 3, \ 5^6 \equiv 1 .$$
Donc $x \equiv 2 \pmod 6$, et $x$ est pair.

Modulo $5$ : $-7^y \equiv 4 \pmod 5$, donc $7^y \equiv 1 \pmod 5$. Comme $7 \equiv 2 \pmod 5$ et
que les puissances de $2$ modulo $5$ ont pour période $4$ ($2, 4, 3, 1$), on obtient
$y \equiv 0 \pmod 4$, et $y$ est pair.

Écrivons $x = 2X$ et $y = 2Y$ avec $X \geq 1$ et $Y \geq 1$. Alors
$$4 = 5^{2X} - 7^{2Y} = \left(5^X - 7^Y\right)\left(5^X + 7^Y\right) .$$

Le second facteur vaut au moins $5 + 7 = 12$. Comme le produit vaut $4 > 0$, le premier facteur
est un entier strictement positif, donc au moins $1$, et le produit serait au moins $12$. C'est
absurde.

**Conclusion.**

Le seul triplet d'entiers naturels solution est
$$\boxed{(x, y, z) = (1, 0, 2)} ,$$
c'est-à-dire $5 + 4 = 9$.
