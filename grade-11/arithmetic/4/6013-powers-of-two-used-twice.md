---
id: "6013"
title: "Des puissances de 2, chacune au plus deux fois"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 50
tags: [puissances de deux, denombrement, recurrence, parite, bijection]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular, « Touching Infinity : Hyperbinary Numbers and Fraction Trees » (Samuel Coskey, Paul Ellis, Japheth Wood)"
  reference: "MTCircular2018W.pdf, p. 4-7 : les deux relations sur la suite b(n) sont démontrées dans l'article ; les calculs de b(27) et b(100) sont ajoutés ici"
  url: "https://mathcircles.org/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircular2018W.pdf"
---

## Statement

En base $2$, chaque puissance de $2$ sert au plus **une** fois, et chaque entier a une seule écriture. Changeons la règle : autorisons chaque puissance de $2$ à servir au plus **deux** fois.

Pour un entier $n \geqslant 0$, notons $b(n)$ le nombre de façons d'écrire $n$ comme une somme de puissances de $2$ (c'est-à-dire de nombres pris parmi $1, 2, 4, 8, 16, \ldots$), chacune utilisée au plus deux fois. L'ordre des termes ne compte pas, et pour $n = 0$ la somme vide compte pour une écriture, donc $b(0) = 1$.

Par exemple, $4$ s'écrit de trois façons :
$$4 = 4 = 2 + 2 = 2 + 1 + 1 ,$$
donc $b(4) = 3$.

1. Calculer $b(n)$ pour $n$ allant de $0$ à $10$.
2. Montrer que pour tout $n \geqslant 0$ :
$$b(2n+1) = b(n) .$$
3. Montrer que pour tout $n \geqslant 0$ :
$$b(2n+2) = b(n) + b(n+1) .$$
4. En déduire $b(27)$, puis écrire les $b(27)$ décompositions de $27$. Calculer enfin $b(100)$.

## Hints

1. Pour la question 1, procéder par ordre croissant et rester organisé : combien de fois le $1$ peut-il servir ?
2. Pour les questions 2 et 3, la clé est la **parité**. Dans une écriture de $m$, tous les termes sont pairs sauf les $1$. Combien de $1$ peut-il y avoir si $m$ est impair ? si $m$ est pair ?
3. Une fois les $1$ retirés, tous les termes restants sont pairs. Que se passe-t-il si on divise toute l'écriture par $2$ ?
4. Il faut vérifier que le procédé « enlever les $1$, puis diviser par $2$ » est réversible : on établit ainsi une correspondance exacte entre deux familles d'écritures.
5. Pour la question 4, appliquer les relations à répétition, en descendant : $27 = 2 \times 13 + 1$, puis $13 = 2 \times 6 + 1$, etc.

## Solution

### Question 1 : les premières valeurs

| $n$ | écritures | $b(n)$ |
|---|---|---|
| $0$ | (vide) | $1$ |
| $1$ | $1$ | $1$ |
| $2$ | $2$ ; $1+1$ | $2$ |
| $3$ | $2+1$ | $1$ |
| $4$ | $4$ ; $2+2$ ; $2+1+1$ | $3$ |
| $5$ | $4+1$ ; $2+2+1$ | $2$ |
| $6$ | $4+2$ ; $4+1+1$ ; $2+2+1+1$ | $3$ |
| $7$ | $4+2+1$ | $1$ |
| $8$ | $8$ ; $4+4$ ; $4+2+2$ ; $4+2+1+1$ | $4$ |
| $9$ | $8+1$ ; $4+4+1$ ; $4+2+2+1$ | $3$ |
| $10$ | $8+2$ ; $8+1+1$ ; $4+4+2$ ; $4+4+1+1$ ; $4+2+2+1+1$ | $5$ |

La suite commence donc par
$$1,\ 1,\ 2,\ 1,\ 3,\ 2,\ 3,\ 1,\ 4,\ 3,\ 5, \ldots$$

### Question 2 : le cas impair

Soit $m = 2n+1$, un nombre impair. Dans une écriture de $m$, tous les termes sont pairs sauf les $1$. La somme des termes pairs est paire, donc le nombre de $1$ doit être **impair**. Comme il vaut $0$, $1$ ou $2$, il vaut exactement $1$.

Toute écriture de $2n+1$ contient donc exactement un $1$. Retirons-le : il reste une somme valant $2n$, dont tous les termes sont pris parmi $2, 4, 8, \ldots$, chacun au plus deux fois. Divisons alors chaque terme par $2$ : on obtient une somme valant $n$, dont les termes sont pris parmi $1, 2, 4, \ldots$, chacun au plus deux fois — c'est-à-dire une écriture de $n$.

Ce procédé est réversible : à partir d'une écriture de $n$, on multiplie chaque terme par $2$ puis on ajoute un $1$, et l'on retombe sur une écriture de $2n+1$. Les deux opérations se défont l'une l'autre, donc il y a autant d'écritures d'un côté que de l'autre :
$$b(2n+1) = b(n) .$$

### Question 3 : le cas pair

Soit $m = 2n+2$, un nombre pair. Par le même argument de parité, le nombre de $1$ est **pair** : il vaut $0$ ou $2$. Séparons les écritures en deux familles.

**Famille sans $1$.** Tous les termes sont pairs. En divisant par $2$, on obtient une écriture de $\frac{2n+2}{2} = n+1$, et le procédé est réversible. Cette famille compte donc $b(n+1)$ écritures.

**Famille avec deux $1$.** Retirons les deux $1$ : il reste une somme valant $2n$ dont tous les termes sont pairs. En divisant par $2$, on obtient une écriture de $n$, et là encore le procédé est réversible. Cette famille compte donc $b(n)$ écritures.

Les deux familles n'ont aucune écriture en commun et les recouvrent toutes, d'où
$$b(2n+2) = b(n) + b(n+1) .$$

*(On peut vérifier sur le tableau : $b(10) = b(4) + b(5) = 3 + 2 = 5$, et $b(9) = b(4) = 3$.)*

### Question 4 : calcul de $b(27)$ et de $b(100)$

Les deux relations, avec $b(0) = b(1) = 1$, permettent de calculer $b(m)$ pour n'importe quel $m$ sans jamais écrire une seule décomposition.

**Pour $27$**, on descend :
$$27 = 2 \times 13 + 1 \ \Longrightarrow\ b(27) = b(13),$$
$$13 = 2 \times 6 + 1 \ \Longrightarrow\ b(13) = b(6),$$
$$6 = 2 \times 2 + 2 \ \Longrightarrow\ b(6) = b(2) + b(3) = 2 + 1 = 3 .$$

Donc $b(27) = 3$. Les trois écritures sont :
$$27 = 16 + 8 + 2 + 1 = 16 + 4 + 4 + 2 + 1 = 8 + 8 + 4 + 4 + 2 + 1 .$$

**Pour $100$**, même méthode :
$$100 = 2\times 49 + 2 \ \Longrightarrow\ b(100) = b(49) + b(50),$$
$$49 = 2\times 24 + 1 \ \Longrightarrow\ b(49) = b(24), \qquad 50 = 2\times 24 + 2 \ \Longrightarrow\ b(50) = b(24) + b(25),$$
$$24 = 2\times 11 + 2 \ \Longrightarrow\ b(24) = b(11) + b(12), \qquad 25 = 2\times 12 + 1 \ \Longrightarrow\ b(25) = b(12),$$
$$11 = 2\times 5 + 1 \ \Longrightarrow\ b(11) = b(5) = 2, \qquad 12 = 2\times 5 + 2 \ \Longrightarrow\ b(12) = b(5) + b(6) = 2 + 3 = 5 .$$

En remontant :
$$b(24) = 2 + 5 = 7, \qquad b(25) = 5, \qquad b(49) = 7, \qquad b(50) = 7 + 5 = 12,$$
$$b(100) = 7 + 12 = \boxed{19} .$$

## Going further

1. Pour quels entiers $n$ a-t-on $b(n) = 1$ ? Regarder la liste : $1$, $3$, $7$, $\ldots$
2. Fabriquer les fractions $\dfrac{b(0)}{b(1)}, \dfrac{b(1)}{b(2)}, \dfrac{b(2)}{b(3)}, \dfrac{b(3)}{b(4)}, \ldots$ soit $\dfrac11, \dfrac12, \dfrac21, \dfrac13, \dfrac32, \ldots$ Que remarque-t-on ? Chaque fraction irréductible semble apparaître une fois et une seule. C'est le théorème de Calkin et Wilf, et c'est une façon très concrète de numéroter tous les rationnels positifs.
3. Montrer que deux termes consécutifs $b(n)$ et $b(n+1)$ sont toujours premiers entre eux.
4. Comparer la suite $b(n)$ aux lignes du triangle où l'on intercale entre deux voisins leur somme, en partant de $1, 1$. Que reconnaît-on ?
