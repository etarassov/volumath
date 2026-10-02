---
id: "12863"
title: "Comparer 2/(xyz) + 9xyz et 7(x + y + z)"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, changement-de-variable, developpement, identites-remarquables, cas-d-egalite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 15 mai 2024"
  reference: "2025-01_Enonce-Test-5.pdf, test junior, exercice 3 ; corrigé 2025-01_Corrige-Test-5.pdf (le corrigé conclut avec l'inégalité de Muirhead ; la solution ci-dessous la remplace par l'identité a³ + b³ − a²b − ab² = (a + b)(a − b)²)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/01/Enonce-Test-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2025-01_Enonce-Test-5.pdf"
---

## Statement

Soit $x$, $y$ et $z$ des réels strictement positifs tels que $xy + yz + zx = 1$. Démontrer que

$$\frac{2}{xyz} + 9xyz \geq 7(x + y + z).$$

## Hints

1. Multipliez les deux membres par $xyz$ pour faire disparaître la fraction.
2. Posez $a = xy$, $b = yz$ et $c = zx$. Exprimez $abc$ et $ab + bc + ca$ à l'aide de $x$, $y$ et $z$.
3. Vous devez montrer que $2 + 9abc \geq 7(ab + bc + ca)$ lorsque $a + b + c = 1$. Remplacez le $2$ par $2(a + b + c)^3$, pour que tous les termes aient le même degré, puis développez.
4. Pour conclure, utilisez $a^3 + b^3 - a^2 b - ab^2 = (a + b)(a - b)^2$.

## Solution

### Un changement de variables

Comme $xyz > 0$, l'inégalité à démontrer équivaut, en multipliant par $xyz$, à

$$2 + 9(xyz)^2 \geq 7\,xyz\,(x + y + z).$$

Posons $a = xy$, $b = yz$ et $c = zx$, qui sont strictement positifs. Alors :

- $a + b + c = xy + yz + zx = 1$ ;
- $abc = x^2 y^2 z^2 = (xyz)^2$ ;
- $ab + bc + ca = xy^2z + xyz^2 + x^2yz = xyz\,(x + y + z)$.

L'inégalité devient

$$2 + 9abc \geq 7(ab + bc + ca).$$

### Tous les termes au même degré

Le nombre $2$ est de degré $0$, alors que $abc$ est de degré $3$ et $ab + bc + ca$ de degré $2$. Comme $a + b + c = 1$, on peut écrire $2 = 2(a + b + c)^3$ et $ab + bc + ca = (ab + bc + ca)(a + b + c)$. Il suffit donc de montrer que

$$(\star) \qquad 2(a + b + c)^3 + 9abc \geq 7(ab + bc + ca)(a + b + c).$$

### On développe

Notons $T = a^2 b + a^2 c + b^2 a + b^2 c + c^2 a + c^2 b$.

En développant terme à terme, on trouve neuf produits :

$$(ab + bc + ca)(a + b + c) = T + 3abc.$$

Ensuite $(a + b + c)^2 = a^2 + b^2 + c^2 + 2(ab + bc + ca)$, donc

$$(a + b + c)^3 = (a^2 + b^2 + c^2)(a + b + c) + 2(ab + bc + ca)(a + b + c).$$

Le premier produit vaut $a^3 + b^3 + c^3 + T$, et le second $2(T + 3abc)$. Donc

$$(a + b + c)^3 = a^3 + b^3 + c^3 + 3T + 6abc.$$

L'inégalité $(\star)$ s'écrit donc

$$2(a^3 + b^3 + c^3) + 6T + 12abc + 9abc \geq 7T + 21abc,$$

et, en simplifiant,

$$2(a^3 + b^3 + c^3) \geq T.$$

### La dernière inégalité

Pour deux nombres $a$ et $b$,

$$a^3 + b^3 - a^2 b - ab^2 = a^2(a - b) - b^2(a - b) = (a - b)(a^2 - b^2) = (a + b)(a - b)^2,$$

qui est positif ou nul puisque $a + b > 0$. On écrit la même chose pour les couples $(b, c)$ et $(c, a)$, puis on additionne les trois. Chaque cube apparaît deux fois, et chacun des six termes de $T$ une fois :

$$2(a^3 + b^3 + c^3) - T = (a + b)(a - b)^2 + (b + c)(b - c)^2 + (c + a)(c - a)^2 \geq 0.$$

### Conclusion

On a montré $2(a^3 + b^3 + c^3) \geq T$, donc $(\star)$, donc l'inégalité de l'énoncé : **pour tous réels $x, y, z > 0$ tels que $xy + yz + zx = 1$, on a bien $2/(xyz) + 9xyz \geq 7(x + y + z)$.**

**Cas d'égalité.** Il y a égalité lorsque $a = b = c$, c'est-à-dire $xy = yz = zx$, soit $x = y = z$. Avec $xy + yz + zx = 1$, cela donne $x = y = z = 1/\sqrt{3}$. On vérifie que les deux membres valent alors $7\sqrt{3}$.

## Going further

1. Montrez de la même façon que, si $a$, $b$, $c$ sont des réels strictement positifs tels que $a + b + c = 1$, alors $ab + bc + ca \leq 1/3$.
2. Avec les notations de la solution, montrez que $T \geq 6abc$. (Pensez à $a(b - c)^2 \geq 0$.)
