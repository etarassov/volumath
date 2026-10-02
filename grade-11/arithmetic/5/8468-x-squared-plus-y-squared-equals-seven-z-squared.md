---
id: "8468"
title: "x² + y² = 7z²"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 40
tags: [descente-infinie, modulo-7, carres, equation-diophantienne]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, cours de Groupe B"
  reference: "Poly-2021-Valbonne.pdf, Groupe B, « Équations diophantiennes » (Jean Rax), exercice 14, signalé « Bac 2003 » (énoncé sans solution imprimée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers naturels tels que

$$x^2 + y^2 = 7z^2.$$

## Hints

1. Il y a une solution évidente. Laquelle ? L'exercice consiste à montrer qu'il n'y en a pas d'autre.
2. Dresse la liste des restes possibles d'un carré dans la division par $7$. Il n'y en a que quatre.
3. Avec cette liste, quelles sont les façons d'obtenir $x^2 + y^2 \equiv 0 \pmod 7$ ?
4. Tu vas trouver que $7$ divise $x$ et $y$. Pose $x = 7x_1$ et $y = 7y_1$, simplifie, et regarde ce qu'il advient de $z$.
5. Tu fabriques ainsi, à partir d'une solution, une solution strictement plus petite. Pourquoi est-ce impossible, sauf dans un cas ?

## Solution

Le triplet $(0, 0, 0)$ est solution. Montrons que c'est le seul.

### Étape 1. Les carrés modulo 7

| $k \bmod 7$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $k^2 \bmod 7$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

Un carré est donc congru à $0$, $1$, $2$ ou $4$ modulo $7$, et jamais à $3$, $5$ ou $6$.

### Étape 2. Une somme de deux carrés divisible par 7

Supposons $x^2 + y^2 \equiv 0 \pmod 7$. Il faut choisir deux nombres dans $\{0, 1, 2, 4\}$ dont la somme soit un multiple de $7$. Regardons toutes les sommes possibles :

$$0+0 = 0, \quad 0+1 = 1, \quad 0+2 = 2, \quad 0+4 = 4,$$

$$1+1 = 2, \quad 1+2 = 3, \quad 1+4 = 5, \quad 2+2 = 4, \quad 2+4 = 6, \quad 4+4 = 8 \equiv 1.$$

Seul $0 + 0$ donne $0$. Donc

$$x^2 \equiv 0 \quad \text{et} \quad y^2 \equiv 0 \pmod 7.$$

Comme $7$ est premier, $7 \mid x^2$ entraîne $7 \mid x$, et de même $7 \mid y$.

### Étape 3. La descente

Soit $(x, y, z)$ une solution. D'après l'étape 2, écrivons

$$x = 7x_1, \qquad y = 7y_1.$$

L'équation devient

$$49x_1^2 + 49y_1^2 = 7z^2, \qquad \text{donc} \qquad 7\left(x_1^2 + y_1^2\right) = z^2.$$

Ainsi $7$ divise $z^2$, donc $7$ divise $z$. Écrivons $z = 7z_1$ :

$$7\left(x_1^2 + y_1^2\right) = 49 z_1^2, \qquad \text{donc} \qquad x_1^2 + y_1^2 = 7 z_1^2.$$

Le triplet $(x_1, y_1, z_1) = \left(\dfrac{x}{7}, \dfrac{y}{7}, \dfrac{z}{7}\right)$ est donc **une nouvelle solution**.

### Étape 4. Conclure

Supposons qu'il existe une solution $(x, y, z)$ autre que $(0,0,0)$, c'est-à-dire avec $z \geqslant 1$. Parmi toutes ces solutions, choisissons-en une dont le $z$ est le plus petit possible. C'est légitime : toute partie non vide d'entiers naturels a un plus petit élément.

L'étape 3 fournit alors la solution $\left(\dfrac{x}{7}, \dfrac{y}{7}, \dfrac{z}{7}\right)$, dont la troisième composante $\dfrac{z}{7}$ est un entier naturel strictement plus petit que $z$.

Mais cette nouvelle troisième composante est-elle encore non nulle ? Oui : si $\dfrac{z}{7} = 0$, alors $z = 0$, ce que nous avons exclu.

Nous avons donc trouvé une solution avec un $z$ strictement plus petit que le plus petit possible : contradiction.

### Conclusion

$$\boxed{(x, y, z) = (0, 0, 0) \text{ est la seule solution.}}$$

## Going further

La méthode employée s'appelle la **descente infinie**, et elle remonte à Fermat. Son principe : montrer qu'à partir de toute solution non triviale on peut en fabriquer une strictement plus petite. Comme on ne peut pas descendre indéfiniment dans les entiers naturels, il n'y a pas de solution non triviale.

On peut l'écrire de deux façons équivalentes, et il est bon de connaître les deux :

- par le **minimum**, comme ci-dessus : on prend la plus petite solution et on en construit une plus petite encore ;
- par la **suite infinie** : de la solution de départ on construit $(x_1, y_1, z_1)$, puis $(x_2, y_2, z_2)$, et ainsi de suite, ce qui donne une suite strictement décroissante d'entiers naturels $z > z_1 > z_2 > \cdots$, qui ne peut pas exister.

Le rôle joué par $7$ mérite un mot. Ce qui compte n'est pas que $7$ soit premier, mais que $-1$ ne soit pas un carré modulo $7$ : sans cela, $x^2 \equiv -y^2$ aurait des solutions non nulles. C'est vrai pour $7$, pour $3$, pour $11$, et plus généralement pour tout premier congru à $3$ modulo $4$. En revanche, pour $p = 5$ l'équation $x^2 + y^2 = 5z^2$ a des solutions, par exemple $(1, 2, 1)$.
