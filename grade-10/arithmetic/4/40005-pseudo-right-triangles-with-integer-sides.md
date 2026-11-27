---
id: "40005"
title: "Triangles pseudo-rectangles à côtés entiers et l'équation x²(y² + z²) = (y² − z²)²"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 60
tags: [pgcd, parite, nombres-premiers, decomposition-en-facteurs-premiers, equation-diophantienne, rationnels, triangle, disjonction-de-cas, restes]
adapted_from: null
see_also: ["40001", "40002", "40003", "40004", "40006", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), deuxième partie, questions 4 (a et b), 5 et 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Dans un triangle $ABC$, on note $a = BC$, $b = CA$, $c = AB$ et $\widehat{A}$, $\widehat{B}$,
$\widehat{C}$ les angles. On dit que le triangle est **pseudo-rectangle en $A$ et obtus en $B$** si
$\widehat{B} - \widehat{C} = 90^\circ$. On admet les deux résultats suivants.

- (R1) Pour trois réels $a$, $b$, $c$ strictement positifs, il existe un triangle pseudo-rectangle
  en $A$ et obtus en $B$ tel que $BC = a$, $CA = b$, $AB = c$ si et seulement si
  $b^2 - c^2 = a\sqrt{b^2 + c^2}$.
- (R2) Les triangles pseudo-rectangles en $A$ et obtus en $B$ dont les côtés sont rationnels sont
  exactement ceux dont les côtés s'écrivent
  $$a = r\,(p^4 - 6p^2q^2 + q^4), \qquad b = r\,(q^4 - p^4), \qquad c = 2pqr\,(p^2 + q^2),$$
  où $p$ et $q$ sont des entiers strictement positifs premiers entre eux tels que
  $p < q\,(\sqrt{2} - 1)$, et $r$ est un rationnel strictement positif.

1. a) Soient $p$ et $q$ deux entiers strictement positifs premiers entre eux. Déterminer le plus
   grand diviseur commun aux trois entiers
   $$p^4 - 6p^2q^2 + q^4, \qquad q^4 - p^4, \qquad 2pq\,(p^2 + q^2).$$
   On discutera suivant la parité de $p$ et de $q$.
   b) Décrire les triplets d'entiers $(a, b, c)$ pour lesquels il existe un triangle $ABC$
   pseudo-rectangle en $A$ et obtus en $B$ tel que $BC = a$, $CA = b$ et $AB = c$.
2. Résoudre l'équation $x^2(y^2 + z^2) = (y^2 - z^2)^2$, d'inconnues $x$, $y$, $z$ entiers
   strictement positifs.
3. Résoudre la même équation $x^2(y^2 + z^2) = (y^2 - z^2)^2$ quand $x$, $y$, $z$ sont des
   rationnels non nuls.

## Hints

1. **Question 1.a.** Notons $A_0$, $B_0$, $C_0$ les trois entiers. Un nombre premier impair qui divise
   $C_0$ divise $p$, ou $q$, ou $p^2 + q^2$. Montrer qu'aucun de ces cas n'est possible s'il divise
   aussi $A_0$ et $B_0$. On pourra écrire $A_0 = (p^2 + q^2)^2 - 8p^2q^2$.
2. **Question 1.a.** Reste la puissance de $2$. Si $p$ et $q$ sont de parités différentes, $A_0$ est
   impair. S'ils sont tous deux impairs, utiliser que le carré d'un nombre impair est de la forme
   $8k + 1$.
3. **Question 1.b.** Écrire $r = \frac{u}{v}$ sous forme irréductible. Si $\frac{u A_0}{v}$ est un
   entier, que peut-on dire de $v$ et $A_0$ ?
4. **Question 2.** Comparer l'équation avec la relation de (R1), élevée au carré.
5. **Question 3.** L'équation ne fait intervenir que des carrés : que se passe-t-il quand on change
   le signe d'une inconnue ?

## Solution

Notons $A_0 = p^4 - 6p^2q^2 + q^4$, $B_0 = q^4 - p^4$ et $C_0 = 2pq\,(p^2 + q^2)$.

**1.a)** *Aucun nombre premier impair ne divise les trois.* Soit $\ell$ un nombre premier impair qui
divise $A_0$, $B_0$ et $C_0$. Comme $\ell$ divise le produit $2pq\,(p^2 + q^2)$ et ne divise pas
$2$, il divise $p$, ou $q$, ou $p^2 + q^2$.

- Si $\ell$ divise $p$, alors il divise $p^4$, donc $q^4 = B_0 + p^4$, donc $q$ : c'est impossible
  car $p$ et $q$ sont premiers entre eux. De même si $\ell$ divise $q$.
- Si $\ell$ divise $p^2 + q^2$, comme $A_0 = (p^2 + q^2)^2 - 8p^2q^2$, il divise $8p^2q^2$, donc $p$
  ou $q$, et on retombe sur le cas précédent.

Le plus grand diviseur commun est donc une puissance de $2$.

*Si $p$ et $q$ sont de parités différentes*, l'un de $p^4$, $q^4$ est pair et l'autre impair, et
$6p^2q^2$ est pair, donc $A_0$ est impair. Le plus grand diviseur commun vaut $1$.

*Si $p$ et $q$ sont tous deux impairs* (ils ne peuvent pas être tous deux pairs). Le carré d'un
impair $2k + 1$ vaut $4k(k + 1) + 1$, de la forme $8j + 1$ car $k(k+1)$ est pair. Donc $p^2$ et $q^2$
sont de la forme $8j + 1$, et $p^2 + q^2 = 2\,m$ avec $m$ impair (de la forme $4i + 1$).

- $C_0 = 2pq \times 2m = 4\,pqm$ avec $pqm$ impair : $C_0$ est divisible par $4$, pas par $8$.
- $B_0 = (q^2 - p^2)(q^2 + p^2)$ : le premier facteur est divisible par $8$, le second par $2$, donc
  $B_0$ est divisible par $16$.
- $A_0 = (p^2 + q^2)^2 - 8p^2q^2 = 4m^2 - 8p^2q^2 = 4\,(m^2 - 2p^2q^2)$, avec $m^2$ impair : $A_0$
  est divisible par $4$, pas par $8$.

Le plus grand diviseur commun vaut donc $4$.

**Conclusion :** le PGCD vaut $1$ si $p$ et $q$ sont de parités différentes, et $4$ s'ils sont tous
deux impairs. Par exemple, pour $p = 1$, $q = 3$ : $A_0 = 28$, $B_0 = 80$, $C_0 = 60$, de PGCD $4$.

**1.b)** Notons $g$ le PGCD de $A_0$, $B_0$, $C_0$ trouvé en a). Un triangle à côtés entiers a des
côtés rationnels, donc (R2) donne $p$, $q$ et $r$. Écrivons $r = \frac{u}{v}$ avec $u$ et $v$
entiers positifs premiers entre eux. Comme $a = \frac{u A_0}{v}$ est entier, $v$ divise $u A_0$.
Aucun facteur premier de $v$ ne figure dans $u$ ; en comparant les décompositions en facteurs
premiers, tous les facteurs premiers de $v$, avec leur exposant, figurent donc dans $A_0$ : $v$
divise $A_0$. De même $v$ divise $B_0$ et $C_0$, donc $v$ divise $g$. Alors
$r = \frac{u \times (g / v)}{g} = \frac{k}{g}$ avec $k = u \times \frac{g}{v}$ entier strictement
positif. Réciproquement, si $r = \frac{k}{g}$ avec $k$ entier, les trois côtés sont entiers puisque
$g$ divise $A_0$, $B_0$ et $C_0$.

**Conclusion :** les triplets cherchés sont
$$(a, b, c) = \frac{k}{g}\,\left(p^4 - 6p^2q^2 + q^4,\ q^4 - p^4,\ 2pq\,(p^2 + q^2)\right),$$
où $p$, $q$ sont des entiers strictement positifs premiers entre eux avec $p < q\,(\sqrt{2} - 1)$,
$k$ un entier strictement positif, et $g = 1$ si $p$ et $q$ sont de parités différentes, $g = 4$
s'ils sont tous deux impairs. Par exemple $(7, 20, 15)$ pour $(p, q) = (1, 3)$,
$(119, 156, 65)$ pour $(1, 5)$ et $(161, 255, 136)$ pour $(1, 4)$.

**2.** Si $y = z$, le membre de droite est nul et celui de gauche ne l'est pas : pas de solution.

Si $y > z$, les deux membres sont des carrés de nombres positifs, et l'équation équivaut à
$x\sqrt{y^2 + z^2} = y^2 - z^2$. C'est la relation de (R1) avec $a = x$, $b = y$, $c = z$ : il existe
un triangle pseudo-rectangle en $A$, obtus en $B$, de côtés entiers $x$, $y$, $z$. Réciproquement,
les côtés d'un tel triangle vérifient la relation de (R1), donc l'équation.

Si $y < z$, l'équation est symétrique en $y$ et $z$, et $(x, z, y)$ est une solution du cas
précédent.

**Conclusion :** les solutions sont les triplets $(x, y, z) = (a, b, c)$ et $(x, y, z) = (a, c, b)$,
où $(a, b, c)$ est l'un des triplets décrits en 1.b). Par exemple $(7, 20, 15)$ et $(7, 15, 20)$.

**3.** L'équation ne fait intervenir que $x^2$, $y^2$, $z^2$ : $(x, y, z)$ est solution si et
seulement si $(\lvert x \rvert, \lvert y \rvert, \lvert z \rvert)$ l'est. Pour des rationnels
strictement positifs, le raisonnement de la question 2 s'applique mot pour mot : avec $y > z$,
$(x, y, z)$ est solution si et seulement si ce sont les côtés d'un triangle pseudo-rectangle en $A$,
obtus en $B$, à côtés rationnels, c'est-à-dire, par (R2), si et seulement si
$(x, y, z) = r\,(A_0, B_0, C_0)$.

**Conclusion :** les solutions rationnelles non nulles sont les triplets
$$(\pm a, \pm b, \pm c) \quad \text{et} \quad (\pm a, \pm c, \pm b), \qquad \text{avec } (a, b, c) = r\,(p^4 - 6p^2q^2 + q^4,\ q^4 - p^4,\ 2pq\,(p^2 + q^2)),$$
où les trois signes sont choisis librement, $r$ est un rationnel strictement positif, et $p$, $q$
sont des entiers strictement positifs premiers entre eux avec $p < q\,(\sqrt{2} - 1)$.

**Bilan.** Les triangles pseudo-rectangles à côtés entiers sont, à un facteur entier près, ceux que
donnent les formules en $p$ et $q$, divisées par $4$ quand $p$ et $q$ sont impairs. Ils donnent
toutes les solutions de l'équation $x^2(y^2 + z^2) = (y^2 - z^2)^2$, en entiers comme en rationnels.

## Going further

- Le plus petit triangle pseudo-rectangle à côtés entiers est celui de côtés $7$, $20$, $15$.
  Calculer $\cos\widehat{C}$ et vérifier que $\widehat{B} - \widehat{C} = 90^\circ$ à la calculatrice.
- Le sujet se terminait par l'équation voisine $x^2(y^2 - z^2)^2 = (y^2 + z^2)^3$ en entiers
  strictement positifs : voir l'exercice 40006.
