---
id: "12411"
title: "Si 1 + np est un carré, n + 1 est une somme de p carrés"
grade: 9
theme: arithmetic
difficulty: 4
duration_min: 30
tags: [nombres-premiers, carres, factorisation, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, test de sélection junior du 23 février 2018"
  reference: "2018-02_pofm-2017-2018-test-fevrier-junior.pdf, exercice 3 ; corrigé 2018-02_pofm-2017-2018-test-fevrier-junior-corrige.pdf (le corrigé ne vérifie pas que les carrés obtenus sont non nuls et n'utilise jamais l'hypothèse n ⩾ p, ce point est complété ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/02/pofm-2017-2018-test-fevrier-junior.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2018-02_pofm-2017-2018-test-fevrier-junior.pdf"
---

## Statement

Soient $p$ et $n$ deux entiers strictement positifs, avec $p$ premier et $n \geqslant p$. On suppose
que $1 + np$ est un carré parfait.

Montrer que $n + 1$ est une somme de $p$ carrés parfaits **non nuls**, pas forcément distincts.

*Par exemple, avec $p = 3$ et $n = 5$, on a $1 + 15 = 16 = 4^2$, et $n + 1 = 6 = 1^2 + 1^2 + 2^2$.*

## Hints

1. Écris $1 + np = k^2$ avec $k$ entier. Que vaut alors $np$ ?
2. Factorise $k^2 - 1$. Le nombre premier $p$ divise ce produit : que peux-tu en déduire ?
3. Si $p$ divise $k - 1$, écris $k = p\ell + 1$ et calcule $n + 1$ en fonction de $\ell$. Essaie de
   faire apparaître $p - 1$ fois le même carré.
4. Les carrés doivent être non nuls. Vérifie-le dans chaque cas. À quoi sert l'hypothèse
   $n \geqslant p$ ?

## Solution

Soit $k \geqslant 0$ un entier tel que $1 + np = k^2$.

### Étape 0 : $k$ est plus grand que $p$

Comme $n \geqslant p$, on a $k^2 = 1 + np \geqslant 1 + p^2 > p^2$, donc $k > p$.

### Étape 1 : une factorisation

On a
$$np = k^2 - 1 = (k - 1)(k + 1).$$
Le nombre premier $p$ divise ce produit. Il divise donc l'un des deux facteurs : en effet, les
facteurs premiers d'un produit sont ceux de ses facteurs, d'après la décomposition en produit de
facteurs premiers.

### Premier cas : $p$ divise $k - 1$

On écrit $k - 1 = p\ell$ avec $\ell$ entier. Comme $k - 1 \geqslant p > 0$, on a $\ell \geqslant 1$.
Alors $k + 1 = p\ell + 2$ et
$$np = p\ell\,(p\ell + 2), \qquad \text{donc} \qquad n = p\ell^2 + 2\ell.$$
Par conséquent
$$n + 1 = p\ell^2 + 2\ell + 1 = (p - 1)\,\ell^2 + (\ell^2 + 2\ell + 1) = (p - 1)\,\ell^2 + (\ell + 1)^2.$$
C'est la somme de $p - 1$ fois le carré $\ell^2$ et du carré $(\ell + 1)^2$ : en tout $p$ carrés.
Ils sont non nuls car $\ell \geqslant 1$.

### Second cas : $p$ divise $k + 1$

On écrit $k + 1 = p\ell$ avec $\ell$ entier. D'après l'étape 0, $p\ell = k + 1 > p$, donc
$\ell \geqslant 2$. Alors $k - 1 = p\ell - 2$ et
$$np = (p\ell - 2)\,p\ell, \qquad \text{donc} \qquad n = p\ell^2 - 2\ell.$$
Par conséquent
$$n + 1 = p\ell^2 - 2\ell + 1 = (p - 1)\,\ell^2 + (\ell - 1)^2.$$
Ce sont encore $p$ carrés, et ils sont non nuls car $\ell \geqslant 2$, donc $\ell - 1 \geqslant 1$.

### Conclusion

Dans les deux cas, **$n + 1$ est une somme de $p$ carrés parfaits non nuls.**

### Pourquoi l'hypothèse $n \geqslant p$ ?

Elle sert uniquement à obtenir $\ell \geqslant 2$ dans le second cas. Sans elle, le résultat est
faux : pour $p = 5$ et $n = 3$, on a $1 + 15 = 16 = 4^2$, mais $n + 1 = 4$ ne peut pas être une
somme de $5$ carrés non nuls, puisque chacun vaut au moins $1$. Ici $k = 4 = p - 1$, donc
$\ell = 1$, et le carré $(\ell - 1)^2$ est nul.
