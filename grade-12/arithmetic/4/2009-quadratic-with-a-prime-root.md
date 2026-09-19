---
id: "2009"
title: "Une équation du second degré à racine première"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres premiers, second degre, divisibilite, viete]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Quadratic equations (Oleg Gleizer)"
  reference: "Handout-1272-1283.pdf, exercice 12"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-1272-1283.pdf"
---

## Statement

Trouver tous les couples de nombres premiers $(p\,;q)$ tels que l'équation

$$x^2 - px - q = 0$$

admette une solution qui soit elle-même un nombre premier.

Vous devez donner tous les couples et démontrer qu'il n'y en a pas d'autres.

## Hints

1. Appelez $r$ la racine première cherchée et écrivez ce que signifie « $r$ est solution ».
2. Isolez $q$ : vous obtenez $q$ comme un produit de deux facteurs.
3. $q$ est premier et $r$ est premier. Que peut valoir un diviseur premier de $q$ ?
4. Vous devez arriver à $r = q$, puis à $q - p = 1$. Quels sont les deux nombres premiers consécutifs ?

## Solution

Supposons que l'équation $x^2 - px - q = 0$ admette une racine $r$ qui soit un nombre premier. Alors

$$r^2 - pr - q = 0, \qquad \text{donc} \qquad q = r^2 - pr = r\,(r - p).$$

**$r$ divise $q$.** L'égalité $q = r(r-p)$ montre que $r$ divise $q$. Or $q$ est premier, donc ses seuls diviseurs positifs sont $1$ et $q$. Comme $r$ est premier, $r \neq 1$, et donc

$$r = q.$$

**On en tire $p = q - 1$.** En reportant $r = q$ dans $q = r(r-p)$ :

$$q = q\,(q - p).$$

Comme $q \neq 0$, on peut diviser par $q$ :

$$q - p = 1, \qquad \text{c'est-à-dire} \qquad p = q - 1.$$

**Deux nombres premiers qui se suivent.** Les nombres $p$ et $q = p+1$ sont deux entiers consécutifs, donc l'un des deux est pair. Un nombre premier pair vaut forcément $2$. Comme $q = p + 1 > p \geqslant 2$, c'est $p$ qui est pair, donc $p = 2$ et $q = 3$.

**Vérification.** Avec $p = 2$ et $q = 3$, l'équation s'écrit

$$x^2 - 2x - 3 = 0.$$

Son discriminant vaut $\Delta = 4 + 12 = 16$, et ses solutions sont

$$x = \frac{2 - 4}{2} = -1 \qquad \text{et} \qquad x = \frac{2 + 4}{2} = 3.$$

La solution $x = 3$ est bien un nombre premier.

**Conclusion.** Le seul couple qui convient est

$$(p\,;q) = (2\,;3).$$

## Going further

On peut retrouver le même résultat avec les relations entre coefficients et racines. Si $r$ et $s$ sont les deux racines de $x^2 - px - q$, alors

$$r + s = p \qquad \text{et} \qquad rs = -q.$$

Comme $q > 0$, le produit $rs$ est négatif : les deux racines sont de signes contraires. La racine première $r$ est donc la racine positive, et $s = -\dfrac{q}{r}$ est un entier négatif puisque $s = p - r$ est entier. Là encore $r$ divise $q$, et on retombe sur $r = q$, puis sur $p = q - 1$.
