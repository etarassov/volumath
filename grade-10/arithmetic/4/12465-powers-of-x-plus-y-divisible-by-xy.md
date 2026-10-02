---
id: "12465"
title: "x divise y², y divise x² : quelle puissance de x + y est un multiple de xy ?"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [divisibilite, puissances, developpement, contre-exemple, disjonction-de-cas]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection des 19 et 20 février 2020"
  reference: "2020-11_Enonce-Test-Fevrier-2020.pdf, exercice 2 (groupe Junior) ; corrigé 2020-03_Correction-Web.pdf (contre-exemples de la solution alternative n° 1, et étude des termes du développement suivant la solution alternative n° 3)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/11/Enonce-Test-Fevrier-2020.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2020-11_Enonce-Test-Fevrier-2020.pdf"
---

## Statement

1. Trouver le plus petit entier $k \geqslant 1$ ayant la propriété suivante : pour tous les entiers
   naturels non nuls $x$ et $y$ tels que $x$ divise $y^2$ et $y$ divise $x^2$, le produit $xy$ divise
   $(x + y)^k$.
2. Trouver le plus petit entier $\ell \geqslant 1$ ayant la propriété suivante : pour tous les
   entiers naturels non nuls $x$, $y$ et $z$ tels que $x$ divise $y^2$, $y$ divise $z^2$ et $z$
   divise $x^2$, le produit $xyz$ divise $(x + y + z)^\ell$.

## Hints

1. Attention : $x$ ne divise pas forcément $y$. Teste de petits exemples, comme $x = 2$ et $y = 4$.
2. Pour montrer que $k = 3$ convient, pose $a = \dfrac{y^2}{x}$ et $b = \dfrac{x^2}{y}$, qui sont des
   entiers, et écris $x^3$ et $y^3$ à l'aide de $a$, $b$ et $xy$.
3. Pour la question 2, cherche un contre-exemple où $x$, $y$ et $z$ sont des puissances de $2$.
4. En développant $(x + y + z)^7$, on obtient une somme de produits $x^\alpha y^\beta z^\gamma$ avec
   $\alpha + \beta + \gamma = 7$. Montre que $xyz$ divise chacun d'eux. Le seul cas délicat est celui
   où l'un des exposants est nul.

## Solution

**Une remarque pour commencer.** Si un entier $k$ a la propriété de la question 1, alors tout entier
$k' \geqslant k$ l'a aussi, car $(x + y)^{k'} = (x + y)^k \times (x + y)^{k' - k}$. Pour montrer que
$k$ est le plus petit, il suffit donc de montrer que $k$ a la propriété et que $k - 1$ ne l'a pas :
si un entier plus petit que $k - 1$ l'avait, $k - 1$ l'aurait aussi. Il en va de même pour la
question 2.

### Question 1 : la réponse est $k = 3$

**$k = 2$ ne convient pas.** Prenons $x = 2$ et $y = 4$. Alors $x$ divise $y^2 = 16$ et $y$ divise
$x^2 = 4$. Mais $xy = 8$ ne divise pas $(x + y)^2 = 36$.

**$k = 3$ convient.** Soit $x$ et $y$ tels que $x$ divise $y^2$ et $y$ divise $x^2$. Les nombres
$a = \dfrac{y^2}{x}$ et $b = \dfrac{x^2}{y}$ sont des entiers, et $y^2 = ax$, $x^2 = by$. Alors
$$x^3 = x \times x^2 = x \times by = b \times xy \qquad \text{et} \qquad y^3 = y \times y^2 = y \times ax = a \times xy.$$
En développant,
$$(x + y)^3 = x^3 + 3x^2y + 3xy^2 + y^3 = xy\,(b + 3x + 3y + a),$$
qui est bien un multiple de $xy$.

**Le plus petit entier cherché est $k = 3$.**

### Question 2 : la réponse est $\ell = 7$

**$\ell = 6$ ne convient pas.** Prenons $x = 2$, $y = 16$ et $z = 4$. Alors $x$ divise $y^2 = 256$,
$y$ divise $z^2 = 16$ et $z$ divise $x^2 = 4$. Le produit vaut $xyz = 128 = 2^7$, et
$(x + y + z)^6 = 22^6 = 2^6 \times 11^6$. Comme $11^6$ est impair, la plus grande puissance de $2$
qui divise $22^6$ est $2^6$ : le nombre $2^7$ ne divise pas $22^6$.

**$\ell = 7$ convient.** Soit $x$, $y$, $z$ tels que $x$ divise $y^2$, $y$ divise $z^2$ et $z$ divise
$x^2$. Posons
$$a = \frac{y^2}{x}, \qquad b = \frac{z^2}{y}, \qquad c = \frac{x^2}{z},$$
qui sont des entiers, de sorte que $y^2 = ax$, $z^2 = by$ et $x^2 = cz$.

*On développe.* Le nombre $(x + y + z)^7$ est le produit de $7$ facteurs égaux à $x + y + z$. En le
développant, on choisit dans chaque facteur l'un des trois nombres $x$, $y$ ou $z$, et on additionne
tous les produits obtenus. Chacun de ces produits s'écrit $x^\alpha y^\beta z^\gamma$, avec $\alpha$,
$\beta$, $\gamma$ entiers naturels tels que $\alpha + \beta + \gamma = 7$. Il suffit donc de montrer
que **$xyz$ divise chaque produit $x^\alpha y^\beta z^\gamma$ tel que $\alpha + \beta + \gamma = 7$**.

*Si les trois exposants valent au moins $1$*, alors
$x^\alpha y^\beta z^\gamma = xyz \times x^{\alpha - 1} y^{\beta - 1} z^{\gamma - 1}$, et c'est fini.

*Si $\alpha = 0$*, le produit s'écrit $y^\beta z^\gamma$ avec $\beta + \gamma = 7$. Remarquons d'abord
que $z^4 = (z^2)^2 = b^2 y^2 = ab^2\,x$. On distingue quatre cas.

- Si $\beta = 0$ : $z^7 = z \times z^2 \times z^4 = z \times by \times ab^2 x = xyz \times ab^3$.
- Si $\beta = 1$ ou $\beta = 2$, alors $\gamma \geqslant 5$ et
  $y^\beta z^\gamma = yz \times z^4 \times y^{\beta - 1} z^{\gamma - 5} = xyz \times ab^2 \times y^{\beta - 1} z^{\gamma - 5}$.
- Si $3 \leqslant \beta \leqslant 6$, alors $\gamma \geqslant 1$ et
  $y^\beta z^\gamma = y^2 \times yz \times y^{\beta - 3} z^{\gamma - 1} = xyz \times a \times y^{\beta - 3} z^{\gamma - 1}$.
- Si $\beta = 7$ : on a $y^4 = (y^2)^2 = a^2 x^2 = a^2 c\,z$, donc
  $y^7 = y^2 \times y \times y^4 = ax \times y \times a^2 c z = xyz \times a^3 c$.

Dans tous les cas, $xyz$ divise le produit.

*Si $\beta = 0$ ou $\gamma = 0$.* Les hypothèses ne changent pas si l'on fait « tourner » les
lettres. Par exemple, le triplet $(X, Y, Z) = (y, z, x)$ vérifie encore « $X$ divise $Y^2$, $Y$ divise
$Z^2$ et $Z$ divise $X^2$ » : ce sont exactement les trois hypothèses, écrites dans un autre ordre.
Si $\beta = 0$, le produit $x^\alpha z^\gamma$ s'écrit $Y^\gamma Z^\alpha$, sans la lettre $X$, et
le cas précédent, appliqué à $(X, Y, Z)$, montre que $XYZ = xyz$ le divise. Si $\gamma = 0$, on fait
de même avec le triplet $(z, x, y)$.

Ainsi $xyz$ divise chaque produit, donc leur somme $(x + y + z)^7$.

**Le plus petit entier cherché est $\ell = 7$.**

## Going further

On prend maintenant $n$ entiers naturels non nuls $x_1, x_2, \ldots, x_n$ tels que $x_1$ divise
$x_2^2$, $x_2$ divise $x_3^2$, ..., $x_{n-1}$ divise $x_n^2$, et $x_n$ divise $x_1^2$. Quel est le
plus petit entier $m$ tel que $x_1 x_2 \cdots x_n$ divise toujours $(x_1 + x_2 + \cdots + x_n)^m$ ?
(Les réponses $3$ et $7$ trouvées pour $n = 2$ et $n = 3$ peuvent aider à deviner. Pour le
contre-exemple, on pourra prendre des puissances de $2$.)
