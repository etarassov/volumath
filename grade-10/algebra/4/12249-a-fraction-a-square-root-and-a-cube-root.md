---
id: "12249"
title: "Une fraction, une racine carrée et une racine cubique"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [inegalite, racine carree, racine cubique, changement de variables, raisonnement par l'absurde]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, test de mars 2016"
  reference: "2017-10_ofm-2015-2016-test-mars.pdf, test du 23 mars 2016, exercice 3 (groupe B) ; pas de corrigé publié, solution rédigée et vérifiée pour cette base (la plus petite valeur de la somme est environ 2,75)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2015-2016-test-mars.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2015-2016-test-mars.pdf"
---

## Statement

Pour un réel $u > 0$, on note $\sqrt[3]{u}$ l'unique réel $v > 0$ tel que $v^3 = u$.

Soient $a$, $b$, $c$ trois nombres réels strictement positifs. Montrer que
$$\frac{a}{b} + \sqrt{\frac{b}{c}} + \sqrt[3]{\frac{c}{a}} > 2.$$

## Hints

1. Donne un nom à chacun des trois termes : $x = \frac{a}{b}$, $y = \sqrt{\frac{b}{c}}$ et $z = \sqrt[3]{\frac{c}{a}}$. Quel produit simple peux-tu former avec $x$, $y$ et $z$ ?
2. Tu dois trouver $x\,y^2 z^3 = 1$. Raisonne par l'absurde : suppose $x + y + z \leqslant 2$, et cherche à montrer que $x\,y^2 z^3 < 1$.
3. Pose $s = y + z$. Majore $x$ à l'aide de $s$, puis $yz$ à l'aide de $s$, en pensant au carré $(y - z)^2$.
4. Tu dois arriver à $x\,y^2 z^3 \leqslant (2 - s)\,s \times \frac{s^4}{16}$. Que vaut au plus $(2 - s)\,s$ ?

## Solution

**Étape 1. Trois nouvelles inconnues.**

On pose
$$x = \frac{a}{b}, \qquad y = \sqrt{\frac{b}{c}}, \qquad z = \sqrt[3]{\frac{c}{a}}.$$
Ce sont trois réels strictement positifs, et l'on veut montrer que $x + y + z > 2$. Ils sont liés par une relation simple : $y^2 = \frac{b}{c}$ et $z^3 = \frac{c}{a}$, donc
$$x\,y^2 z^3 = \frac{a}{b} \times \frac{b}{c} \times \frac{c}{a} = 1.$$

**Étape 2. On raisonne par l'absurde.**

Supposons que $x + y + z \leqslant 2$, et posons $s = y + z$. Comme $x > 0$, on a $s < 2$, et bien sûr $s > 0$. On va montrer que $x\,y^2 z^3 < 1$, ce qui contredira l'étape 1. On utilise trois majorations.

- **Une majoration de $x$.** On a $x \leqslant 2 - y - z = 2 - s$.
- **Une majoration de $yz$.** On a $s^2 - 4yz = (y + z)^2 - 4yz = (y - z)^2 \geqslant 0$, donc $yz \leqslant \frac{s^2}{4}$.
- **Une majoration de $z$.** On a $z < y + z = s$, puisque $y > 0$.

Tous les nombres en jeu sont positifs, donc on peut multiplier ces inégalités membre à membre. On écrit $x\,y^2 z^3 = x \times (yz)^2 \times z$, et l'on obtient
$$x\,y^2 z^3 < (2 - s) \times \frac{s^4}{16} \times s = (2 - s)\,s \times \frac{s^4}{16}.$$
L'inégalité est stricte car la majoration de $z$ l'est, et que $(2 - s) \times \frac{s^4}{16} > 0$.

**Étape 3. On conclut.**

D'une part $(2 - s)\,s = 2s - s^2 = 1 - (1 - s)^2 \leqslant 1$. D'autre part $0 < s < 2$, donc $s^4 < 2^4 = 16$. Ainsi
$$x\,y^2 z^3 < 1 \times \frac{s^4}{16} < 1.$$
C'est en contradiction avec $x\,y^2 z^3 = 1$. L'hypothèse $x + y + z \leqslant 2$ est donc fausse, et
$$\frac{a}{b} + \sqrt{\frac{b}{c}} + \sqrt[3]{\frac{c}{a}} > 2.$$

## Going further

1. Pourquoi a-t-on écrit $x\,y^2 z^3$ sous la forme $x \times (yz)^2 \times z$ ? Essaie d'autres regroupements et regarde lesquels permettent de conclure.
2. La somme peut-elle être proche de $2$ ? Calcule-la pour $a = 1$, $b = 3$, $c = \frac{27}{4}$. On peut montrer qu'elle ne descend jamais en dessous d'environ $\text{2,75}$.
