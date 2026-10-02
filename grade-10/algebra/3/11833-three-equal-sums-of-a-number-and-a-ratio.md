---
id: "11833"
title: "x + y/z = y + z/x = z + x/y = 2"
grade: 10
theme: algebra
difficulty: 3
duration_min: 25
tags: [systeme, inegalite, moyenne arithmetique et geometrique, racine carree, cas d egalite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 5 (pot-pourri)"
  reference: "2022-03_sujet-envoi-5.pdf, Exercices Juniors, exercice 5 ; corrigé 2022-05_corrige-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/03/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-03_sujet-envoi-5.pdf"
---

## Statement

Soient $x$, $y$ et $z$ des réels strictement positifs tels que

$$x + \frac{y}{z} = y + \frac{z}{x} = z + \frac{x}{y} = 2.$$

Déterminer toutes les valeurs possibles du nombre $x + y + z$.

## Hints

1. Essayer $x = y = z$. Puis chercher à montrer que c'est le seul cas.
2. Pour deux réels $u, v \geqslant 0$, on a $u + v \geqslant 2\sqrt{uv}$, car $\left(\sqrt{u} - \sqrt{v}\right)^2 \geqslant 0$. L'appliquer à chaque équation.
3. En multipliant deux des inégalités obtenues, montrer que $x$, $y$ et $z$ sont au plus égaux à $1$.
4. Multiplier chaque équation par son dénominateur et additionner les trois.

## Solution

**Un outil.** Pour deux réels $u \geqslant 0$ et $v \geqslant 0$, on a $u + v \geqslant 2\sqrt{uv}$. En effet, $u + v - 2\sqrt{uv} = \left(\sqrt{u} - \sqrt{v}\right)^2 \geqslant 0$.

**Étape 1 : chacun des trois nombres vaut au plus $1$.** Appliquons l'outil à la première équation, avec $u = x$ et $v = \frac{y}{z}$ :

$$2 = x + \frac{y}{z} \geqslant 2\sqrt{\frac{xy}{z}}, \qquad \text{donc} \qquad \sqrt{\frac{xy}{z}} \leqslant 1.$$

De même, la deuxième équation donne $\sqrt{\frac{yz}{x}} \leqslant 1$, et la troisième $\sqrt{\frac{zx}{y}} \leqslant 1$. En multipliant les deux premières inégalités (entre nombres positifs) :

$$\sqrt{\frac{xy}{z}} \times \sqrt{\frac{yz}{x}} = \sqrt{y^2} = y \leqslant 1.$$

De la même façon, en multipliant la deuxième et la troisième on obtient $z \leqslant 1$, et en multipliant la troisième et la première on obtient $x \leqslant 1$.

**Étape 2 : une égalité.** On multiplie chaque équation par son dénominateur :

$$xz + y = 2z, \qquad xy + z = 2x, \qquad yz + x = 2y.$$

En additionnant, $xy + yz + zx + x + y + z = 2(x + y + z)$, c'est-à-dire

$$xy + yz + zx = x + y + z.$$

**Étape 3 : comparer.** Comme $y \leqslant 1$ et $x > 0$, on a $xy \leqslant x$. De même $yz \leqslant y$ (car $z \leqslant 1$) et $zx \leqslant z$ (car $x \leqslant 1$). En additionnant,

$$x + y + z = xy + yz + zx \leqslant x + y + z.$$

Les deux membres sont égaux, donc chacune des trois inégalités $xy \leqslant x$, $yz \leqslant y$, $zx \leqslant z$ est une égalité. De $xy = x$ et $x \neq 0$, on tire $y = 1$. De même $z = 1$ et $x = 1$.

**Vérification.** Pour $x = y = z = 1$, chacune des trois expressions vaut $1 + \frac{1}{1} = 2$. Le triplet $(1, 1, 1)$ convient.

**Conclusion.** Le nombre $x + y + z$ ne peut prendre qu'une seule valeur : $x + y + z = 3$.

## Going further

Le système n'est pas symétrique : il ne change pas quand on remplace $x$ par $y$, $y$ par $z$ et $z$ par $x$, mais il change si l'on échange seulement $x$ et $y$. Vérifier sur un exemple qu'échanger $x$ et $y$ dans la première équation donne une équation différente. Pourquoi faut-il donc faire attention avant d'écrire « on peut supposer $x \leqslant y \leqslant z$ » ?
