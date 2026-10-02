---
id: "12049"
title: "x² + y² + z² = 16(x + y + z)"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [equation, carres, restes, division-par-4, parite, descente]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-02
source:
  name: "POFM, test du 26 février 2014"
  reference: "2017-10_ofm-2013-2014-test-fevrier.pdf, exercice 1 (groupe B) ; corrigé 2017-10_ofm-2013-2014-test-fevrier-corrige.pdf ; réponse vérifiée par ordinateur"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-fevrier.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-fevrier.pdf"
---

## Statement

Déterminer tous les triplets $(x, y, z)$ d'entiers relatifs tels que

$$x^2 + y^2 + z^2 = 16(x + y + z) .$$

## Hints

1. Faites tout passer du même côté et comparez $x^2 - 16x$ avec $(x - 8)^2$.
2. En posant $X = x - 8$, $Y = y - 8$ et $Z = z - 8$, vous devez obtenir $X^2 + Y^2 + Z^2 = 192$. Quel reste peut donner le carré d'un entier dans la division par $4$ ?
3. Montrez que si $u^2 + v^2 + w^2$ est un multiple de $4$, alors $u$, $v$ et $w$ sont pairs. Appliquez cette remarque plusieurs fois de suite.

## Solution

**Réponse.** Ce sont les huit triplets dont chaque nombre vaut $0$ ou $16$ :

$$(0, 0, 0), \ (16, 0, 0), \ (0, 16, 0), \ (0, 0, 16), \ (16, 16, 0), \ (16, 0, 16), \ (0, 16, 16), \ (16, 16, 16) .$$

**Étape 1 : faire apparaître des carrés.** On a $(x - 8)^2 = x^2 - 16x + 64$, donc $x^2 - 16x = (x - 8)^2 - 64$, et de même pour $y$ et $z$. L'équation s'écrit $x^2 - 16x + y^2 - 16y + z^2 - 16z = 0$, c'est-à-dire

$$(x - 8)^2 + (y - 8)^2 + (z - 8)^2 = 3 \times 64 = 192 .$$

Posons $X = x - 8$, $Y = y - 8$ et $Z = z - 8$. Ce sont des entiers relatifs, et il faut résoudre $X^2 + Y^2 + Z^2 = 192$.

**Étape 2 : une remarque sur les carrés.** Le carré d'un entier pair $2k$ vaut $4k^2$ : c'est un multiple de $4$. Le carré d'un entier impair $2k + 1$ vaut $4k^2 + 4k + 1 = 4(k^2 + k) + 1$ : c'est un multiple de $4$ plus $1$.

Soient $u$, $v$, $w$ trois entiers, et notons $j$ le nombre de ceux qui sont impairs ; ainsi $j$ vaut $0$, $1$, $2$ ou $3$. D'après ce qui précède, $u^2 + v^2 + w^2$ est égal à un multiple de $4$ plus $j$. Si $u^2 + v^2 + w^2$ est un multiple de $4$, alors $j$ en est un aussi, donc $j = 0$ : **les trois nombres $u$, $v$, $w$ sont pairs.**

**Étape 3 : diviser par $2$, trois fois.** Comme $192 = 4 \times 48$ est un multiple de $4$, les nombres $X$, $Y$, $Z$ sont pairs. Écrivons $X = 2X_1$, $Y = 2Y_1$, $Z = 2Z_1$. En divisant l'équation par $4$, on obtient $X_1^2 + Y_1^2 + Z_1^2 = 48$.

Comme $48 = 4 \times 12$, on recommence : $X_1 = 2X_2$, $Y_1 = 2Y_2$, $Z_1 = 2Z_2$, avec $X_2^2 + Y_2^2 + Z_2^2 = 12$.

Comme $12 = 4 \times 3$, on recommence encore : $X_2 = 2X_3$, $Y_2 = 2Y_3$, $Z_2 = 2Z_3$, avec

$$X_3^2 + Y_3^2 + Z_3^2 = 3 .$$

Au total, $X = 8X_3$, $Y = 8Y_3$ et $Z = 8Z_3$.

**Étape 4 : la dernière équation.** Si l'un des entiers $X_3$, $Y_3$, $Z_3$ était, en valeur absolue, supérieur ou égal à $2$, son carré vaudrait au moins $4$, ce qui est plus que $3$. Donc chacun vaut $-1$, $0$ ou $1$, et son carré vaut $0$ ou $1$. Pour que trois nombres égaux à $0$ ou $1$ aient pour somme $3$, il faut qu'ils valent tous $1$. Ainsi $X_3$, $Y_3$ et $Z_3$ valent chacun $1$ ou $-1$.

Par conséquent $X$, $Y$, $Z$ valent chacun $8$ ou $-8$, et $x = X + 8$, $y = Y + 8$, $z = Z + 8$ valent chacun $16$ ou $0$.

**Étape 5 : vérification.** Réciproquement, si $x$, $y$, $z$ valent chacun $0$ ou $16$, alors $x - 8$, $y - 8$, $z - 8$ valent $-8$ ou $8$, leurs carrés valent $64$, et la somme des trois carrés vaut $192$. D'après l'étape 1, l'équation de départ est vérifiée. Par exemple, pour $(16, 0, 16)$ : $256 + 0 + 256 = 512$ et $16 \times 32 = 512$.

**Conclusion.** Les solutions sont exactement les huit triplets dont chacun des trois nombres vaut $0$ ou $16$.

## Going further

1. Quels restes peut donner le carré d'un entier dans la division par $8$ ?
2. En déduire qu'un entier de la forme $8k + 7$, comme $7$, $15$ ou $23$, n'est jamais la somme de trois carrés d'entiers.
