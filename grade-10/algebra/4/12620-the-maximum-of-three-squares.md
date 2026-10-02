---
id: "12620"
title: "Le maximum de trois carrés"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, maximum, identites-remarquables, developpement, cas-d-egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de sélection du 31 mars 2021"
  reference: "2021-12_Enonce-Test-4.pdf, exercice 2 (junior) ; corrigé 2021-04_Corrige-Test-4-Web.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2021/12/Énoncé-Test-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2021-12_Enonce-Test-4.pdf"
---

## Statement

Soit $x$, $y$ et $z$ trois nombres réels tels que $0 \leqslant x \leqslant y \leqslant z$ et $x + y + z = 1$.

Trouver la plus grande valeur que peut prendre l'expression
$$S = (x - yz)^2 + (y - zx)^2 + (z - xy)^2.$$

## Hints

1. Essaie des cas simples : $x = y = z = \frac{1}{3}$, puis $x = 0$ et $y = z = \frac{1}{2}$, puis $x = y = 0$ et $z = 1$. Quelle valeur semble être la plus grande ?
2. Pour montrer que $S$ ne dépasse jamais cette valeur, développe les trois carrés. Les doubles produits donnent tous le même terme.
3. Les trois nombres $x$, $y$, $z$ sont entre 0 et 1. Que peux-tu dire de $t^2$ comparé à $t$ quand $0 \leqslant t \leqslant 1$ ? Applique-le à $t = xy$, $t = yz$, $t = zx$.
4. Développe aussi $(x + y + z)^2$, qui vaut 1.

## Solution

**Un candidat.** Pour $x = y = 0$ et $z = 1$, on trouve $S = 0^2 + 0^2 + 1^2 = 1$. Pour comparer, $x = y = z = \frac{1}{3}$ donne $S = 3 \times \left(\frac{1}{3} - \frac{1}{9}\right)^2 = \frac{4}{27}$, bien plus petit. On va montrer que $S$ ne dépasse jamais 1.

**On développe.** Les trois doubles produits valent $-2xyz$ chacun :
$$S = x^2 + y^2 + z^2 + (yz)^2 + (zx)^2 + (xy)^2 - 6xyz.$$

**On majore les carrés des produits.** Les nombres $x$, $y$, $z$ sont positifs et de somme 1, donc chacun est entre 0 et 1, et leurs produits deux à deux aussi. Or, si $0 \leqslant t \leqslant 1$, alors $t^2 = t \times t \leqslant t \times 1 = t$. Donc
$$(xy)^2 + (yz)^2 + (zx)^2 \leqslant xy + yz + zx.$$

**On utilise $x + y + z = 1$.** En développant,
$$1 = (x + y + z)^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx),$$
donc $x^2 + y^2 + z^2 = 1 - 2(xy + yz + zx)$.

**On rassemble.**
$$S \leqslant 1 - 2(xy + yz + zx) + (xy + yz + zx) - 6xyz = 1 - (xy + yz + zx) - 6xyz.$$
Les nombres $xy + yz + zx$ et $xyz$ sont positifs, donc $S \leqslant 1$.

**Conclusion.** $S$ ne dépasse jamais 1, et il vaut 1 pour $x = y = 0$ et $z = 1$. La plus grande valeur de $S$ est donc **1**.

## Going further

- L'ordre $x \leqslant y \leqslant z$ ne sert à rien : la preuve utilise seulement que les trois nombres sont positifs.
- Le maximum n'est atteint que pour $x = y = 0$ et $z = 1$. En effet, $S = 1$ oblige $xy + yz + zx = 0$, donc deux des trois nombres sont nuls. Il est rare qu'un problème de ce genre ait son maximum « au bord », avec des nombres très différents, et non quand les nombres sont égaux.
- On peut aussi écrire exactement, en posant $q = xy + yz + zx$ :
$$S = (1 - q)^2 - 8xyz.$$
Essaie de le démontrer. Il faut développer $q^2$ et utiliser $x + y + z = 1$.
