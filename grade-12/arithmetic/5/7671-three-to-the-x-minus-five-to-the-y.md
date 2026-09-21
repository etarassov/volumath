---
id: "7671"
title: "3ˣ − 5ʸ est-il un carré ?"
grade: 12
theme: arithmetic
difficulty: 5
duration_min: 50
tags: [equation exponentielle, congruences, factorisation, carre parfait]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, La Muraille"
  reference: "stage_ete_2013.pdf, chapitre X « La Muraille », exercice 53 (une étoile, sans solution imprimée)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers naturels (donc positifs ou nuls) tels que

$$3^x - 5^y = z^2 .$$

## Hints

1. Traitez d'abord à part le cas $y = 0$, c'est-à-dire l'équation $3^x - 1 = z^2$.
2. Pour $y \geqslant 1$, regardez l'équation **modulo 5**. Quels sont les restes possibles d'un carré ? Et ceux des puissances de $3$ ? Qu'en déduit-on sur la parité de $x$ ?
3. Une fois $x$ pair, écrivez $x = 2t$ et faites apparaître une différence de deux carrés. Vous obtiendrez un produit égal à une puissance de $5$.
4. Les deux facteurs sont donc eux-mêmes des puissances de $5$. Leur somme vaut $2 \times 3^t$, qui n'est pas un multiple de $5$. Que vaut le plus petit des deux facteurs ?
5. Il reste à résoudre $5^y = 2 \times 3^t - 1$. Regardez modulo $9$, puis servez-vous du fait que $5^3 + 1$ est un multiple de $7$.

## Solution

### Le cas $y = 0$

L'équation devient $3^x - 1 = z^2$.

Regardons modulo $4$. Un carré vaut $0$ ou $1$ modulo $4$, donc $z^2 + 1$ vaut $1$ ou $2$ modulo $4$. Or $3^x \equiv (-1)^x$ modulo $4$, donc $3^x$ vaut $1$ ou $3$ modulo $4$. La seule valeur commune est $1$, d'où

$$3^x \equiv 1 \pmod 4, \qquad \text{donc } x \text{ est pair.}$$

Écrivons $x = 2t$. L'équation $3^{2t} - z^2 = 1$ se factorise :

$$(3^t - z)(3^t + z) = 1 .$$

Les deux facteurs sont des entiers dont le produit vaut $1$ et dont la somme $2 \times 3^t$ est positive, donc tous deux valent $1$. Cela donne $z = 0$ et $3^t = 1$, c'est-à-dire $t = 0$ et $x = 0$.

On obtient la solution $(x,y,z) = (0,0,0)$, qui convient bien puisque $1 - 1 = 0 = 0^2$.

### Le cas $y \geqslant 1$ : $x$ est pair

Regardons l'équation modulo $5$ :

$$3^x \equiv z^2 \pmod 5 .$$

Les carrés modulo $5$ sont $0$, $1$ et $4$. Les puissances de $3$ modulo $5$ sont

$$3^0 \equiv 1, \quad 3^1 \equiv 3, \quad 3^2 \equiv 4, \quad 3^3 \equiv 2, \quad 3^4 \equiv 1, \ldots$$

et ce cycle de longueur $4$ ne prend jamais la valeur $0$. Il faut donc $3^x \equiv 1$ ou $3^x \equiv 4$ modulo $5$, c'est-à-dire $x \equiv 0$ ou $x \equiv 2$ modulo $4$.

Dans les deux cas, **$x$ est pair**.

### Une différence de deux carrés

Posons $x = 2t$. L'équation s'écrit

$$3^{2t} - z^2 = 5^y, \qquad \text{c'est-à-dire} \qquad (3^t - z)(3^t + z) = 5^y .$$

Les deux facteurs sont des entiers positifs (leur produit est positif et leur somme $2 \times 3^t$ aussi), et leur produit est une puissance de $5$ : chacun est donc lui-même une puissance de $5$. Écrivons

$$3^t - z = 5^\alpha, \qquad 3^t + z = 5^\beta, \qquad \text{avec } \alpha + \beta = y \text{ et } \alpha \leqslant \beta .$$

En additionnant :

$$2 \times 3^t = 5^\alpha + 5^\beta = 5^\alpha\left(1 + 5^{\beta - \alpha}\right) .$$

Le membre de gauche n'est pas divisible par $5$. Donc $5^\alpha = 1$, c'est-à-dire $\alpha = 0$, et alors $\beta = y$. Il reste

$$5^y = 2 \times 3^t - 1 .$$

### Résoudre $5^y = 2 \times 3^t - 1$

Supposons $t \geqslant 2$. Alors $9$ divise $2 \times 3^t$, donc

$$5^y \equiv -1 \equiv 8 \pmod 9 .$$

Les puissances de $5$ modulo $9$ forment le cycle

$$5^1 \equiv 5, \quad 5^2 \equiv 7, \quad 5^3 \equiv 8, \quad 5^4 \equiv 4, \quad 5^5 \equiv 2, \quad 5^6 \equiv 1, \ldots$$

de longueur $6$. La valeur $8$ n'est atteinte que pour $y \equiv 3 \pmod 6$.

En particulier $y$ est **impair** et **divisible par $3$**. Écrivons $y = 3s$ avec $s$ impair. Alors

$$5^y + 1 = \left(5^3\right)^s + 1 = 125^s + 1 .$$

Comme $s$ est impair, $125^s + 1$ est divisible par $125 + 1 = 126$ (on utilise l'identité $A^s + 1 = (A+1)(A^{s-1} - A^{s-2} + \cdots + 1)$, valable pour $s$ impair). Or $126 = 2 \times 3^2 \times 7$, donc

$$7 \text{ divise } 5^y + 1 = 2 \times 3^t .$$

C'est impossible, car $2 \times 3^t$ n'a que $2$ et $3$ comme facteurs premiers.

Donc $t \leqslant 1$.

- Si $t = 0$ : $5^y = 2 - 1 = 1$, donc $y = 0$, ce qui est exclu dans ce cas.
- Si $t = 1$ : $5^y = 6 - 1 = 5$, donc $y = 1$. Alors $x = 2t = 2$ et $z = 3^t - 5^0 = 3 - 1 = 2$.

**Vérification :** $3^2 - 5^1 = 9 - 5 = 4 = 2^2$. $\checkmark$

### Conclusion

$$\boxed{(x,y,z) = (0,0,0) \quad \text{et} \quad (x,y,z) = (2,1,2) .}$$

## Going further

**Trois outils, trois rôles.** La solution enchaîne trois idées bien distinctes, et chacune fait un travail précis.

1. *Modulo $5$* sert uniquement à montrer que $x$ est pair. C'est ce qui débloque tout.
2. *La factorisation $A^2 - B^2$* transforme une équation exponentielle en une équation sur les diviseurs, bien plus maniable. Le fait que le produit soit une puissance d'un **nombre premier** est essentiel : il force chaque facteur à être une puissance de ce nombre.
3. *Modulo $9$, puis le facteur $7$* achèvent la petite équation restante. Ici le modulo $9$ ne conclut pas seul : il sert à obtenir une information sur $y$ (divisible par $3$), qui débloque une factorisation algébrique, qui fournit enfin le diviseur interdit $7$.

**Une variante à essayer.** Résolvez de la même façon $3^x - 2^y = z^2$ en entiers naturels. Modulo $3$ ou modulo $8$ donne rapidement des contraintes, mais attention : cette équation-là a plusieurs solutions, dont $(1, 1, 1)$ et $(2, 3, 1)$.

**Un avertissement.** Remplacer $5^y$ par $7$ donne l'équation $2^n - 7 = z^2$, qui ressemble beaucoup à la nôtre mais qui est **infiniment plus difficile** : c'est l'équation de Ramanujan–Nagell. Elle a exactement cinq solutions, $n = 3, 4, 5, 7, 15$, et la démonstration de ce fait, obtenue en 1948, n'a rien d'élémentaire. Une équation exponentielle qui résiste à toutes les congruences est rarement à la portée d'un raisonnement de club.
