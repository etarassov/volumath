---
id: "2816"
title: "Des carrés qui dominent les produits"
grade: 11
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, identite-remarquable, carres, cas-degalite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II, Inequalities and convex functions"
  reference: "Handout-874-964.pdf, problèmes 4 et 5"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-874-964.pdf"
---

## Statement

1. Démontrer que pour tous nombres réels $x$, $y$, $z$ :

$$x^2 + y^2 + z^2 \geqslant xy + yz + zx .$$

Dans quel cas a-t-on l'égalité ?

2. En déduire que pour tous nombres réels $x$, $y$, $z$ :

$$x^4 + y^4 + z^4 \geqslant xyz\,(x + y + z) .$$

## Hints

1. Pour la question 1, une inégalité entre deux expressions se démontre presque toujours en étudiant le signe de leur **différence**.
2. La différence $x^2+y^2+z^2 - (xy+yz+zx)$ ne se factorise pas joliment. Mais son **double** s'écrit comme une somme de trois carrés. Cherche lesquels.
3. Pour la question 2, l'inégalité du 1 est valable pour **tous** les réels. Rien n'empêche de l'appliquer à d'autres nombres que $x$, $y$, $z$.
4. Applique-la d'abord aux trois nombres $x^2$, $y^2$, $z^2$. Qu'obtiens-tu ?
5. Applique-la ensuite aux trois nombres $xy$, $yz$, $zx$. Développe soigneusement le membre de droite : $xy \times yz + yz \times zx + zx \times xy$. Que peut-on mettre en facteur ?

## Solution

**1. La première inégalité.**

Étudions le signe de la différence, après l'avoir multipliée par $2$ (ce qui ne change pas son signe) :

$$2\left(x^2+y^2+z^2\right) - 2\left(xy+yz+zx\right) = \left(x^2 - 2xy + y^2\right) + \left(y^2 - 2yz + z^2\right) + \left(z^2 - 2zx + x^2\right).$$

*Vérification du regroupement :* à droite, $x^2$ apparaît deux fois, $y^2$ deux fois, $z^2$ deux fois, ce qui redonne bien $2(x^2+y^2+z^2)$ ; et les doubles produits sont bien $-2xy$, $-2yz$, $-2zx$.

Chacune des trois parenthèses est une identité remarquable :

$$2\left(x^2+y^2+z^2 - xy-yz-zx\right) = (x-y)^2 + (y-z)^2 + (z-x)^2 .$$

Une somme de carrés est toujours positive ou nulle. Donc

$$x^2+y^2+z^2 - xy-yz-zx \geqslant 0, \qquad \text{c'est-à-dire} \qquad x^2+y^2+z^2 \geqslant xy+yz+zx .$$

**Le cas d'égalité.** Il y a égalité si et seulement si $(x-y)^2 + (y-z)^2 + (z-x)^2 = 0$. Une somme de trois carrés est nulle seulement si chacun l'est, donc si et seulement si

$$x = y, \quad y = z, \quad z = x,$$

autrement dit si et seulement si **les trois nombres sont égaux**.

**2. La deuxième inégalité.**

L'inégalité du 1 est vraie pour n'importe quels réels. Utilisons-la deux fois, avec des nombres bien choisis.

*Premier emploi : aux nombres $x^2$, $y^2$, $z^2$.*

$$\left(x^2\right)^2 + \left(y^2\right)^2 + \left(z^2\right)^2 \geqslant x^2 y^2 + y^2 z^2 + z^2 x^2,$$

c'est-à-dire

$$x^4 + y^4 + z^4 \geqslant x^2y^2 + y^2z^2 + z^2x^2 . \qquad (\ast)$$

*Deuxième emploi : aux nombres $xy$, $yz$, $zx$.*

$$(xy)^2 + (yz)^2 + (zx)^2 \geqslant xy \cdot yz + yz \cdot zx + zx \cdot xy .$$

Le membre de gauche est $x^2y^2 + y^2z^2 + z^2x^2$. Développons le membre de droite :

$$xy \cdot yz = x y^2 z, \qquad yz \cdot zx = x y z^2, \qquad zx \cdot xy = x^2 y z .$$

On peut mettre $xyz$ en facteur :

$$x y^2 z + x y z^2 + x^2 y z = xyz\,(y + z + x).$$

Donc

$$x^2y^2 + y^2z^2 + z^2x^2 \geqslant xyz\,(x+y+z) . \qquad (\ast\ast)$$

*Conclusion par transitivité.* En enchaînant $(\ast)$ et $(\ast\ast)$ :

$$x^4 + y^4 + z^4 \;\geqslant\; x^2y^2 + y^2z^2 + z^2x^2 \;\geqslant\; xyz\,(x+y+z).$$

**Conclusion.** Pour tous réels $x$, $y$, $z$ :

$$x^2+y^2+z^2 \geqslant xy+yz+zx \qquad \text{et} \qquad x^4+y^4+z^4 \geqslant xyz\,(x+y+z),$$

avec égalité dans la première exactement quand $x = y = z$.

**Un contrôle.** Avec $x = 1$, $y = 2$, $z = -3$ : à gauche $1 + 16 + 81 = 98$, à droite $1 \times 2 \times (-3) \times 0 = 0$. Avec $x = y = z = 2$ : à gauche $3 \times 16 = 48$, à droite $8 \times 6 = 48$, il y a égalité.

## Going further

1. Dans la deuxième inégalité, quand a-t-on l'égalité ? Attention, il y a plus de cas qu'on ne croit : essayer $x = y = z$, mais aussi $x = y = -z$.
2. Démontrer que $(x+y+z)^2 \geqslant 3(xy+yz+zx)$ pour tous réels $x, y, z$.
3. Démontrer que pour tous réels $x_1, \ldots, x_n$, on a $x_1^2 + \cdots + x_n^2 \geqslant \dfrac{(x_1 + \cdots + x_n)^2}{n}$.
