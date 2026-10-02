---
id: "12282"
title: "Le maximum de (x² − yz)(y² − zx)(z² − xy)"
grade: 10
theme: algebra
difficulty: 5
duration_min: 45
tags: [inegalite, maximum, inegalite arithmetico-geometrique, identite remarquable, signe, symetrie]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test de mai 2017"
  reference: "2017-10_ofm-2016-2017-test-mai.pdf, test du 3 mai 2017, exercice 4 (exercice commun aux deux groupes) ; pas de corrigé publié, solution rédigée pour cette base et maximum vérifié numériquement. La couche texte du PDF perd les exposants : il faut lire (x² − yz)(y² − zx)(z² − xy) et x² + y² + z² = 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-test-mai.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2016-2017-test-mai.pdf"
---

## Statement

Trouver la plus grande valeur possible de
$$(x^2 - yz)(y^2 - zx)(z^2 - xy)$$
lorsque $x$, $y$, $z$ sont des nombres réels tels que $x^2 + y^2 + z^2 = 1$.

## Hints

1. Commence par le cas $z = 0$. Le produit devient $-x^3 y^3$, avec $x^2 + y^2 = 1$. Quelle est sa plus grande valeur ?
2. On note $a = x^2 - yz$, $b = y^2 - zx$ et $c = z^2 - xy$. Si le produit $abc$ est strictement positif, combien des trois nombres $a$, $b$, $c$ peuvent être négatifs ?
3. Pour trois nombres positifs $u$, $v$, $w$, on a $uvw \leqslant \left(\frac{u + v + w}{3}\right)^3$. Si $a$, $b$, $c$ sont tous positifs, calcule $a + b + c$ et majore-le à l'aide de $(x + y + z)^2 \geqslant 0$.
4. Si $a > 0$, $b < 0$ et $c < 0$, applique la même inégalité aux nombres positifs $a$, $-b$, $-c$. Pour majorer $a - b - c$, écris $\frac{3}{2} - (a - b - c)$ comme une somme de carrés.

## Solution

On note $a = x^2 - yz$, $b = y^2 - zx$ et $c = z^2 - xy$, de sorte que le produit étudié est $abc$. On va montrer que **la plus grande valeur est $\frac{1}{8}$.**

**Étape 1. La valeur $\frac{1}{8}$ est atteinte.**

Prenons $x = \frac{1}{\sqrt{2}}$, $y = -\frac{1}{\sqrt{2}}$ et $z = 0$. On a bien $x^2 + y^2 + z^2 = \frac{1}{2} + \frac{1}{2} + 0 = 1$, et
$$a = \frac{1}{2} - 0 = \frac{1}{2}, \qquad b = \frac{1}{2} - 0 = \frac{1}{2}, \qquad c = 0 - \left(-\frac{1}{2}\right) = \frac{1}{2}.$$
Le produit vaut donc $\frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{8}$.

**Étape 2. Un lemme : l'inégalité arithmético-géométrique pour trois nombres.**

*Soient $u$, $v$, $w$ trois réels positifs, et $m = \frac{u + v + w}{3}$ leur moyenne. Alors $uvw \leqslant m^3$.*

Quitte à changer leurs noms, on peut supposer $u \leqslant v \leqslant w$. La moyenne est comprise entre le plus petit et le plus grand des trois nombres : $u \leqslant m \leqslant w$.

- Les nombres $m - u$ et $w - m$ sont positifs, donc leur produit aussi : $(m - u)(w - m) \geqslant 0$. En développant, $mw - m^2 - uw + um \geqslant 0$, c'est-à-dire
$$uw \leqslant m\,(u + w - m).$$
- On pose $v' = u + w - m$. Alors $v + v' = u + v + w - m = 3m - m = 2m$. Comme $(v - v')^2 \geqslant 0$, on a $4vv' \leqslant (v + v')^2 = 4m^2$, donc $vv' \leqslant m^2$.

On multiplie la première inégalité par $v \geqslant 0$, puis on utilise la seconde, multipliée par $m \geqslant 0$ :
$$uvw = v \times uw \leqslant m\,v v' \leqslant m \times m^2 = m^3.$$

**Étape 3. Les signes de $a$, $b$, $c$.**

Si $abc \leqslant 0$, alors $abc < \frac{1}{8}$, et il n'y a rien à faire. Supposons désormais $abc > 0$. Aucun des trois nombres n'est nul, et le nombre de ceux qui sont négatifs est pair. Il y a donc deux cas :

- les trois nombres $a$, $b$, $c$ sont strictement positifs ;
- exactement un des trois est strictement positif, et les deux autres sont strictement négatifs.

**Étape 4. Premier cas : $a$, $b$, $c$ sont strictement positifs.**

On a
$$a + b + c = x^2 + y^2 + z^2 - (xy + yz + zx) = 1 - (xy + yz + zx).$$
Or
$$0 \leqslant (x + y + z)^2 = x^2 + y^2 + z^2 + 2(xy + yz + zx) = 1 + 2(xy + yz + zx),$$
donc $xy + yz + zx \geqslant -\frac{1}{2}$, et $a + b + c \leqslant \frac{3}{2}$.

La moyenne $m$ de $a$, $b$, $c$ vérifie donc $0 < m \leqslant \frac{1}{2}$. D'après le lemme, $abc \leqslant m^3 \leqslant \left(\frac{1}{2}\right)^3 = \frac{1}{8}$.

**Étape 5. Second cas : un seul des trois nombres est positif.**

Supposons par exemple $a > 0$, $b < 0$ et $c < 0$. Les deux autres situations se ramènent à celle-ci en échangeant les variables : échanger $x$ et $y$ échange $a$ et $b$ sans changer $c$, et échanger $x$ et $z$ échange $a$ et $c$ sans changer $b$. Dans les deux cas, la condition $x^2 + y^2 + z^2 = 1$ et le produit $abc$ ne changent pas.

Les trois nombres $a$, $-b$, $-c$ sont strictement positifs, et leur produit vaut $abc$. Leur somme vaut
$$a - b - c = x^2 - y^2 - z^2 + xy + zx - yz.$$
On remplace $x^2$ par $1 - y^2 - z^2$ :
$$a - b - c = 1 - 2y^2 - 2z^2 + xy + zx - yz.$$
D'autre part, en utilisant encore $x^2 + y^2 + z^2 = 1$,
$$\frac{1}{2}(x - y - z)^2 = \frac{1}{2}\left(x^2 + y^2 + z^2\right) - xy - zx + yz = \frac{1}{2} - xy - zx + yz.$$
En additionnant ces deux égalités, on obtient
$$a - b - c + \frac{1}{2}(x - y - z)^2 = \frac{3}{2} - 2y^2 - 2z^2,$$
c'est-à-dire
$$a - b - c = \frac{3}{2} - \frac{1}{2}(x - y - z)^2 - 2y^2 - 2z^2 \leqslant \frac{3}{2}.$$

La moyenne de $a$, $-b$, $-c$ est donc au plus $\frac{1}{2}$, et le lemme donne, comme au premier cas, $abc = a \times (-b) \times (-c) \leqslant \frac{1}{8}$.

**Conclusion.** Pour tous réels $x$, $y$, $z$ tels que $x^2 + y^2 + z^2 = 1$, on a $(x^2 - yz)(y^2 - zx)(z^2 - xy) \leqslant \frac{1}{8}$, et cette valeur est atteinte d'après l'étape 1.

**La plus grande valeur possible est $\frac{1}{8}$.**

## Going further

1. Montre que si $x + y + z = 0$ et $x^2 + y^2 + z^2 = 1$, alors $a = b = c = \frac{1}{2}$. Le maximum est donc atteint pour une infinité de triplets $(x, y, z)$.
2. Dans le second cas de la solution, montre que l'on a même $abc < \frac{1}{8}$.
