---
id: "8861"
title: "2ˣ + 9·7ʸ est-il un cube ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [equation diophantienne, congruences, cubes, factorisation, pgcd]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, entraînement de mi-parcours du Groupe B"
  reference: "Poly-2025-compresse.pdf, Groupe B, « Entraînement de mi-parcours », exercice 4, p. 215 et 217. La solution imprimée contient une coquille : pour a = 2 elle annonce 21 au lieu de 31 ; la conclusion ne change pas."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Trouver tous les triplets d'entiers naturels $(x, y, z)$ tels que
$$2^x + 9 \cdot 7^y = z^3 .$$

## Hints

1. Un cube et un facteur $9$ dans la même égalité : essaie de travailler modulo $9$.
2. Dresse la liste des cubes modulo $9$, puis celle des puissances de $2$ modulo $9$. Qu'est-ce que cela impose à $x$ ?
3. Une fois que tu sais écrire $x = 3a$, le membre de gauche devient une différence de deux cubes. Factorise $z^3 - (2^a)^3$.
4. Tu obtiens $9 \cdot 7^y = A \times B$ avec $A = z - 2^a$ et $B = z^2 + 2^a z + 2^{2a}$. Montre que le PGCD de $A$ et $B$ divise $3$ : travaille modulo $A$, où $z \equiv 2^a$.
5. Comme $7$ ne peut pas diviser les deux facteurs à la fois, toute la puissance de $7$ est dans un seul des deux. Or $B$ est très grand devant $A$. Il ne reste que deux valeurs possibles pour $A$.
6. Pour finir le dernier cas, regarde l'égalité modulo $8$.

## Solution

La réponse est
$$\boxed{(x, y, z) = (0, 1, 4)} ,$$
et c'est le seul triplet. Vérification immédiate : $2^0 + 9 \cdot 7 = 1 + 63 = 64 = 4^3$.

Montrons qu'il n'y en a pas d'autre.

### Étape 1 : $x$ est un multiple de $3$

Regardons l'égalité modulo $9$. Comme $9 \cdot 7^y \equiv 0 \pmod 9$, il reste
$$2^x \equiv z^3 \pmod 9 .$$

Un cube modulo $9$ ne prend que trois valeurs. En effet, en testant $z \equiv 0, 1, \dots, 8$ :
$$z^3 \equiv 0, \; 1 \; \text{ou} \; 8 \pmod 9 .$$

Les puissances de $2$ modulo $9$, elles, se répètent avec une période de $6$ :
$$1,\; 2,\; 4,\; 8,\; 7,\; 5,\; 1,\; 2,\; \dots$$

Aucune n'est divisible par $9$, donc $z^3 \not\equiv 0$, et il faut $2^x \equiv 1$ ou $2^x \equiv 8 \pmod 9$. En regardant la liste, cela arrive pour $x \equiv 0 \pmod 6$ et pour $x \equiv 3 \pmod 6$, c'est-à-dire exactement pour
$$x \equiv 0 \pmod 3 .$$

Posons donc $x = 3a$ avec $a$ entier naturel.

### Étape 2 : une différence de cubes

L'égalité devient $9 \cdot 7^y = z^3 - 2^{3a} = z^3 - (2^a)^3$, et l'identité $u^3 - v^3 = (u-v)(u^2+uv+v^2)$ donne
$$9 \cdot 7^y = \underbrace{(z - 2^a)}_{A} \times \underbrace{(z^2 + 2^a z + 2^{2a})}_{B} .$$

Le nombre $B$ est strictement positif, et le produit $AB = 9 \cdot 7^y$ aussi, donc $A > 0$. Les deux facteurs sont des entiers strictement positifs dont le produit est impair : $A$ et $B$ sont impairs.

### Étape 3 : le PGCD de $A$ et $B$ divise $3$

Travaillons modulo $A = z - 2^a$. On y a $z \equiv 2^a$, donc
$$B = z^2 + 2^a z + 2^{2a} \equiv 2^{2a} + 2^{2a} + 2^{2a} = 3 \cdot 2^{2a} \pmod A .$$

Donc tout diviseur commun de $A$ et $B$ divise $3 \cdot 2^{2a}$. Comme $A$ et $B$ sont impairs, ce diviseur commun est impair, donc il divise $3$ :
$$\mathrm{PGCD}(A, B) \mid 3 .$$

En particulier, **$7$ ne divise pas les deux facteurs à la fois**.

### Étape 4 : seulement deux possibilités pour $A$

Le produit $AB$ vaut $9 \cdot 7^y$. Toute la puissance de $7$ est donc concentrée dans un seul des deux facteurs.

Remarquons d'abord que $B$ est grand. Comme $z = A + 2^a \geqslant 1 + 1 = 2$, on a
$$B = z^2 + 2^a z + 2^{2a} > z^2 \geqslant A^2 .$$

**Si $7$ divise $A$.** Alors $7^y$ divise $A$ tout entier, et $B$ divise $9$, donc $B \leqslant 9$. Mais $A \geqslant 7$ donne $B > A^2 \geqslant 49$. Contradiction.

Donc $7$ ne divise pas $A$, et $A$ divise $9$ : les seules possibilités sont $A = 1$, $A = 3$ ou $A = 9$.

**Le cas $A = 9$ est impossible.** Il donnerait $B = 7^y$, donc $3 \nmid B$. Or si $3$ divise $A = z - 2^a$, alors $z \equiv 2^a \pmod 3$ et
$$B \equiv 3 \cdot 2^{2a} \equiv 0 \pmod 3 ,$$
donc $3$ divise $B$. Contradiction.

Il reste $A = 1$ et $A = 3$.

### Étape 5 : le cas $A = 1$

Alors $z = 2^a + 1$ et $B = 9 \cdot 7^y$. Développons :
$$B = (2^a+1)^2 + 2^a(2^a+1) + 2^{2a} = 3 \cdot 2^{2a} + 3 \cdot 2^a + 1 .$$

Ce nombre est congru à $1$ modulo $3$, donc il n'est pas divisible par $3$, alors que $9 \cdot 7^y$ l'est. Ce cas est impossible.

### Étape 6 : le cas $A = 3$

Alors $z = 2^a + 3$ et $B = 3 \cdot 7^y$. Développons :
$$B = (2^a+3)^2 + 2^a(2^a+3) + 2^{2a} = 3 \cdot 2^{2a} + 9 \cdot 2^a + 9 = 3\,(2^{2a} + 3 \cdot 2^a + 3) .$$

En simplifiant par $3$, il reste à résoudre
$$2^{2a} + 3 \cdot 2^a + 3 = 7^y .$$

**Si $a \geqslant 3$**, alors $8$ divise $2^{2a}$ et $8$ divise $3 \cdot 2^a$, donc le membre de gauche est congru à $3$ modulo $8$. Or les puissances de $7$ valent $1$ ou $7$ modulo $8$, puisque $7 \equiv -1$. Impossible.

Il ne reste que trois valeurs à tester :

| $a$ | $2^{2a} + 3 \cdot 2^a + 3$ | est-ce une puissance de $7$ ? |
|---|---|---|
| $0$ | $1 + 3 + 3 = 7$ | oui, $7 = 7^1$ |
| $1$ | $4 + 6 + 3 = 13$ | non |
| $2$ | $16 + 12 + 3 = 31$ | non |

Seul $a = 0$ convient, avec $y = 1$. On retrouve $x = 3a = 0$ et $z = 2^0 + 3 = 4$.

### Conclusion

Le seul triplet d'entiers naturels solution est $(x, y, z) = (0, 1, 4)$.

## Going further

1. Où la démonstration utilise-t-elle que $x$, $y$ et $z$ sont des entiers **naturels** et pas seulement relatifs ?
2. Même question avec $2^x + 9 \cdot 7^y = z^2$ au lieu de $z^3$ : que donne un regard modulo $4$ ?
