---
id: "8930"
title: "Chacun divise le produit des deux autres moins 1"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [divisibilite, nombres-premiers-entre-eux, majoration, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », entraînement de mi-parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Trouver tous les triplets $(a, b, c)$ d'entiers supérieurs ou égaux à $2$ tels que les trois divisibilités suivantes soient vraies en même temps :

$$a \mid bc - 1, \qquad b \mid ca - 1, \qquad c \mid ab - 1.$$

## Hints

1. Cherchez d'abord un exemple à la main, avec de petits entiers. Il n'y en a qu'un, à l'ordre près.
2. Montrez que $a$, $b$ et $c$ sont deux à deux premiers entre eux. (Si un entier divise $a$ et $b$, que divise-t-il d'autre ?)
3. Montrez que chacun des trois divise le nombre $ab + bc + ca - 1$. Que peut-on alors dire de leur produit $abc$ ?
4. Le nombre $ab+bc+ca-1$ est strictement positif. Comparez-le à $abc$ : c'est une inégalité, et elle est très restrictive.
5. Supposez $a$ le plus petit des trois. Majorez $ab+bc+ca$ par un multiple de $bc$.
6. Une fois $a$ connu, recommencez le même jeu avec $b$ et $c$, puis factorisez.

## Solution

La réponse : les seuls triplets sont $(2, 3, 5)$ et ses permutations.

Remarquons d'emblée que les trois conditions sont symétriques : échanger deux des lettres échange simplement deux des trois divisibilités. On pourra donc supposer librement que $a$ est le plus petit, quitte à renommer.

### Étape 1 : les trois nombres sont deux à deux premiers entre eux

Soit $d$ un diviseur commun de $a$ et $b$. Alors $d$ divise $bc$. Mais $d$ divise aussi $a$, qui divise $bc-1$, donc $d$ divise $bc - 1$. Ainsi $d$ divise la différence

$$bc - (bc - 1) = 1,$$

donc $d = 1$. Les entiers $a$ et $b$ sont premiers entre eux, et le même argument vaut pour les deux autres paires.

### Étape 2 : $abc$ divise $ab+bc+ca-1$

Posons $S = ab + bc + ca - 1$.

Le nombre $a$ divise $ab$, divise $ca$, et divise $bc-1$ par hypothèse. Il divise donc leur somme, qui est exactement $S$. De la même façon, $b$ divise $S$ et $c$ divise $S$.

Comme $a$, $b$ et $c$ sont deux à deux premiers entre eux et divisent tous les trois $S$, leur produit divise $S$ :

$$abc \mid ab + bc + ca - 1.$$

### Étape 3 : $a = 2$

Comme $a, b, c \geq 2$, on a $ab+bc+ca \geq 12$, donc $S \geq 11 > 0$. Un diviseur d'un entier strictement positif est inférieur ou égal à lui :

$$abc \leq ab + bc + ca - 1 < ab + bc + ca.$$

Supposons $a$ le plus petit des trois, donc $a \leq b$ et $a \leq c$. Alors $ab \leq cb$ (car $a \leq c$) et $ca \leq cb$ (car $a \leq b$), donc

$$ab + bc + ca \leq 3bc.$$

En combinant, $abc < 3bc$, et comme $bc > 0$, on obtient $a < 3$. Comme $a \geq 2$, il reste

$$a = 2.$$

### Étape 4 : on recommence avec $b$ et $c$

Avec $a = 2$, la divisibilité de l'étape 2 devient

$$2bc \mid 2b + bc + 2c - 1.$$

Supposons $b \leq c$ (là encore quitte à échanger). Comme $b \geq 2$, on a $b + c \leq 2c \leq bc$, donc $2(b+c) \leq 2bc$ et

$$0 < 2b + bc + 2c - 1 \leq 2bc + bc - 1 < 4bc = 2 \times (2bc).$$

Le nombre $2b+bc+2c-1$ est donc un multiple **strictement positif et strictement plus petit que le double** de $2bc$ : le quotient ne peut valoir que $1$. Autrement dit

$$2bc = 2b + bc + 2c - 1,$$

c'est-à-dire

$$bc - 2b - 2c + 1 = 0.$$

Ajoutons $3$ des deux côtés pour faire apparaître une factorisation :

$$bc - 2b - 2c + 4 = 3, \qquad \text{soit} \qquad (b-2)(c-2) = 3.$$

Comme $b$ et $c$ sont des entiers au moins égaux à $2$, les facteurs $b-2$ et $c-2$ sont des entiers positifs ou nuls, et leur produit vaut $3$. Avec $b \leq c$, la seule possibilité est

$$b - 2 = 1 \quad \text{et} \quad c - 2 = 3,$$

donc $b = 3$ et $c = 5$.

### Vérification

Pour $(a,b,c) = (2,3,5)$ :

$$3 \times 5 - 1 = 14 \text{ et } 2 \mid 14 \quad \checkmark$$
$$5 \times 2 - 1 = 9 \text{ et } 3 \mid 9 \quad \checkmark$$
$$2 \times 3 - 1 = 5 \text{ et } 5 \mid 5 \quad \checkmark$$

Les conditions étant symétriques, les six permutations de $(2,3,5)$ conviennent également.

### Conclusion

$$\boxed{(a,b,c) \text{ est } (2,3,5) \text{ à l'ordre près.}}$$

## Going further

1. Cherchez les triplets d'entiers $\geq 2$ tels que $a \mid bc+1$, $b \mid ca+1$, $c \mid ab+1$. La méthode s'adapte-t-elle ?
2. Et avec quatre entiers $a, b, c, d \geq 2$ tels que chacun divise le produit des trois autres moins $1$ ? Commencez par majorer le plus petit.
