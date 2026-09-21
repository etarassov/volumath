---
id: "8046"
title: "La plus grande valeur d’une expression cyclique"
grade: 11
theme: algebra
difficulty: 4
duration_min: 40
tags: [maximum, factorisation, inegalite, symetrie cyclique]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2017, La muraille"
  reference: "stage_ete_2017.pdf, chapitre X « La muraille », exercice 116 (solution d'élèves par Théodore Fougereux et Daniel Cortild)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2017.pdf"
---

## Statement

Soient $x$, $y$ et $z$ trois nombres réels appartenant tous les trois à l'intervalle
$[0\,;1]$.

Quelle est la plus grande valeur que peut prendre

$$P = x^2y + y^2z + z^2x - x^2z - z^2y - y^2x \ ?$$

## Hints

1. Six termes de degré 3, c'est beaucoup. Commence par une expérience : essaie
   $(x, y, z) = (1\,;\,0{\cdot}5\,;\,0)$ et regarde ce que tu trouves. Cela donne au moins
   une valeur à battre, ou à retrouver.
2. Une expression de degré 3 en trois variables qui s'annule dès que deux des variables sont
   égales se factorise. Vérifie que $P$ s'annule quand $x = y$, puis quand $y = z$, puis
   quand $x = z$. Qu'en déduis-tu ?
3. Développe $(x - y)(y - z)(x - z)$ et compare à $P$.
4. $P$ ne change pas si on remplace $(x, y, z)$ par $(y, z, x)$. On peut donc supposer que
   $x$ est le plus grand des trois nombres. Il ne reste alors que deux ordres possibles.
5. Pose $a = x - y$ et $b = y - z$. Alors $x - z = a + b$, et il ne reste qu'à majorer
   $ab(a+b)$ sachant que $a \geq 0$, $b \geq 0$ et $a + b \leq 1$. Le produit $ab$ de deux
   nombres de somme fixée est maximal quand ils sont égaux.

## Solution

La réponse est $\dfrac{1}{4}$.

### Une factorisation

Développons le produit $(x - y)(y - z)(x - z)$ :

$$(x-y)(y-z) = xy - xz - y^2 + yz ,$$

puis

$$(xy - xz - y^2 + yz)(x - z) = x^2y - x^2z - xy^2 + xz^2 + y^2z - yz^2 .$$

C'est exactement $P$. Donc

$$P = (x - y)(y - z)(x - z) .$$

### On peut supposer que $x$ est le plus grand

Remplaçons $(x, y, z)$ par $(y, z, x)$ dans la forme factorisée. On obtient

$$(y - z)(z - x)(y - x) = (y - z) \times \big[(x - z)(x - y)\big] = P ,$$

car les deux changements de signe se compensent. L'expression $P$ est donc inchangée par la
permutation circulaire $x \to y \to z \to x$. Quitte à effectuer une ou deux fois cette
permutation, on peut donc supposer que

$$x = \max(x, y, z) .$$

Deux cas se présentent alors.

**Cas 1 : $x \geq z \geq y$.** Alors $x - y \geq 0$, $y - z \leq 0$ et $x - z \geq 0$, donc
$P \leq 0$. Comme la valeur $\tfrac14$ est positive, ce cas ne peut pas fournir le maximum.

**Cas 2 : $x \geq y \geq z$.** C'est le cas intéressant, et les trois facteurs sont positifs
ou nuls.

### La majoration

Posons

$$a = x - y \geq 0 , \qquad b = y - z \geq 0 .$$

Alors $x - z = a + b$, et

$$P = ab\,(a+b) .$$

Comme $x$ et $z$ sont tous les deux dans $[0\,;1]$ et que $x \geq z$, on a

$$a + b = x - z \leq 1 .$$

Pour deux nombres positifs de somme fixée, le produit est maximal quand ils sont égaux. En
effet,

$$\left(\frac{a+b}{2}\right)^2 - ab = \frac{(a-b)^2}{4} \geq 0 ,
\qquad \text{donc} \qquad ab \leq \left(\frac{a+b}{2}\right)^2 .$$

En multipliant par $a + b \geq 0$ :

$$P = ab\,(a+b) \ \leq \ \frac{(a+b)^3}{4} \ \leq \ \frac{1}{4} ,$$

la dernière inégalité parce que $0 \leq a+b \leq 1$.

### Cette valeur est atteinte

Il y a égalité partout si et seulement si $a = b$ et $a + b = 1$, c'est-à-dire
$a = b = \tfrac12$, puis $x - z = 1$ avec $x$ et $z$ dans $[0\,;1]$, donc $x = 1$ et $z = 0$,
et enfin $y = \tfrac12$. Vérifions :

$$P(1\,;\,\text{0,5}\,;\,0) = (1 - \text{0,5})(\text{0,5} - 0)(1 - 0)
= \text{0,5} \times \text{0,5} \times 1 = \frac{1}{4} .$$

La plus grande valeur possible est donc

$$\boxed{\dfrac{1}{4}} .$$

## Going further

La forme factorisée dit aussi quelle est la plus **petite** valeur possible. En échangeant
deux des trois nombres, $P$ change de signe : par exemple, en échangeant $x$ et $y$ on obtient
$(y-x)(x-z)(y-z) = -P$. Le minimum est donc $-\tfrac14$, atteint en
$(x\,;y\,;z) = (\text{0,5}\,;\,1\,;\,0)$.
