---
id: "8461"
title: "La plus grande et la plus petite valeur d'une fraction"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [extremum, inegalite, carre-positif, symetrie, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2021, la Muraille"
  reference: "Poly-2021-Valbonne.pdf, Muraille, exercice 23 (résolu par Arthur Tézé ; l'énoncé imprimé demande la valeur « minimale » alors que la solution imprimée calcule la valeur maximale, qui vaut 1/2 ; le minimum vaut -1/2)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/Poly-2021-Valbonne.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2021-Valbonne.pdf"
---

## Statement

Pour trois nombres réels $a$, $b$, $c$ quelconques, on pose

$$S = \frac{a + b + c}{a^2 + b^2 + c^2 + 3}.$$

1. Montrer que cette fraction est toujours bien définie.
2. Déterminer la plus grande valeur que peut prendre $S$, et dire pour quels $a$, $b$, $c$ elle est atteinte.
3. Déterminer de même la plus petite valeur possible de $S$.

## Hints

1. Pour la question 1, regarde simplement le signe du dénominateur.
2. Pour la question 2, commence par essayer des valeurs simples : $a = b = c = 0$, puis $a = b = c = 1$, puis $a = b = c = 2$. Que semble-t-il se passer ?
3. On veut montrer $S \leqslant \dfrac12$, c'est-à-dire $2(a+b+c) \leqslant a^2 + b^2 + c^2 + 3$. Attention : pour passer de la fraction à ce produit en croix, il faut savoir que le dénominateur est positif.
4. L'inégalité à démontrer se regroupe en trois morceaux, un par variable. Quel est le signe de $(a-1)^2$ ?
5. Pour la question 3, ne recommence pas tout : que devient $S$ quand on remplace $(a, b, c)$ par $(-a, -b, -c)$ ?

## Solution

### Question 1. La fraction est bien définie

Le dénominateur vaut $a^2 + b^2 + c^2 + 3$. Les trois carrés sont positifs ou nuls, donc

$$a^2 + b^2 + c^2 + 3 \geqslant 3 > 0.$$

Il n'est jamais nul, et la fraction a donc toujours un sens. De plus, il est **strictement positif**, ce qui autorisera les produits en croix sans changer le sens des inégalités.

### Question 2. La plus grande valeur

**Devinons d'abord.** Pour $a = b = c = 0$, on a $S = 0$. Pour $a = b = c = 1$, on a

$$S = \frac{3}{1 + 1 + 1 + 3} = \frac{3}{6} = \frac12.$$

Pour $a = b = c = 2$, on a $S = \dfrac{6}{4+4+4+3} = \dfrac{6}{15} = \dfrac25 < \dfrac12$. La valeur $\dfrac12$ a l'air d'être le maximum.

**Démontrons que $S \leqslant \dfrac12$ toujours.** Comme le dénominateur est strictement positif, cette inégalité équivaut à

$$2(a + b + c) \leqslant a^2 + b^2 + c^2 + 3,$$

c'est-à-dire, en faisant tout passer du même côté,

$$a^2 - 2a + 1 \; + \; b^2 - 2b + 1 \; + \; c^2 - 2c + 1 \; \geqslant \; 0,$$

c'est-à-dire

$$(a-1)^2 + (b-1)^2 + (c-1)^2 \geqslant 0.$$

Cette dernière inégalité est vraie, car une somme de carrés est toujours positive ou nulle. Donc $S \leqslant \dfrac12$ pour tous réels $a$, $b$, $c$.

**Cas d'égalité.** Il y a égalité exactement quand $(a-1)^2 + (b-1)^2 + (c-1)^2 = 0$. Une somme de carrés n'est nulle que si chaque carré est nul, donc

$$a = b = c = 1.$$

La plus grande valeur de $S$ est donc $\boxed{\dfrac12}$, atteinte uniquement en $a = b = c = 1$.

### Question 3. La plus petite valeur

Remplaçons $(a, b, c)$ par $(-a, -b, -c)$. Le numérateur change de signe, et le dénominateur ne change pas, car les carrés ne voient pas le signe. Donc

$$S(-a, -b, -c) = -S(a, b, c).$$

Autrement dit, l'ensemble des valeurs prises par $S$ est symétrique par rapport à $0$. Comme la plus grande valeur est $\dfrac12$, la plus petite est

$$\boxed{-\dfrac12,}$$

atteinte uniquement en $a = b = c = -1$. On peut le vérifier directement :

$$\frac{-3}{1+1+1+3} = -\frac12.$$

## Going further

Tout l'exercice repose sur l'inégalité $x^2 + 1 \geqslant 2x$, qui n'est rien d'autre que $(x-1)^2 \geqslant 0$ réécrite. C'est peut-être l'inégalité la plus utile de toutes : elle relie un carré et son double, et elle dit que $x = 1$ est le point où la comparaison est la plus serrée.

Le $3$ au dénominateur n'est pas là par hasard : c'est $1 + 1 + 1$, un $1$ par variable, ce qui permet de regrouper en trois carrés parfaits. Avec un autre nombre à la place de $3$, le maximum change. Essaie avec

$$\frac{a+b+c}{a^2+b^2+c^2+12} :$$

en écrivant $12 = 4 + 4 + 4$ et en utilisant $x^2 + 4 \geqslant 4x$, tu trouveras le maximum $\dfrac14$, atteint en $a = b = c = 2$.
