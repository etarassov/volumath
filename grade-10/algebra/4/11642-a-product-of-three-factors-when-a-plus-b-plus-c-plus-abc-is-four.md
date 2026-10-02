---
id: "11642"
title: "Un produit de trois facteurs sous la condition a + b + c + abc = 4"
grade: 10
theme: algebra
difficulty: 4
duration_min: 40
tags: [inegalite, carres, identites-remarquables, developpement, raisonnement-par-l-absurde]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2016-2017 n° 5 (pot-pourri)"
  reference: "2017-10_ofm-2016-2017-envoi-5.pdf, exercices communs, exercice 4 ; corrigé 2017-10_ofm-2016-2017-envoi-5-solutions.pdf (le corrigé utilise l'inégalité arithmético-géométrique pour trois et quatre nombres ; la preuve ci-dessous la remplace par des carrés)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2016-2017-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2016-2017-envoi-5.pdf"
---

## Statement

Soient $a$, $b$ et $c$ trois nombres réels strictement positifs tels que

$$a + b + c + abc = 4.$$

Montrer que

$$\left(1 + \frac{a}{b} + ca\right)\left(1 + \frac{b}{c} + ab\right)\left(1 + \frac{c}{a} + bc\right) \geqslant 27.$$

## Hints

1. Multiplie le premier facteur par $b$. Que reconnais-tu, avec la condition de l'énoncé ?
2. Montre que le produit vaut $(4 - a)(4 - b)(4 - c)/(abc)$, puis, en développant, qu'il vaut $15 + 4\,(ab + bc + ca)/(abc)$.
3. Il reste à montrer que $ab + bc + ca \geqslant 3abc$. Pour tous réels $x$, $y$, $z$, on a $x^2 + y^2 + z^2 \geqslant xy + yz + zx$. Pourquoi ?
4. Applique cette inégalité aux nombres $a$, $b$, $c$, puis aux nombres $ab$, $bc$, $ca$. Commence par montrer que $abc \leqslant 1$.

## Solution

On note $s = a + b + c$, $q = ab + bc + ca$ et $p = abc$. Ce sont trois nombres strictement positifs, et la condition s'écrit $s + p = 4$.

**Étape 1 : simplifier les trois facteurs.** On a
$$b\left(1 + \frac{a}{b} + ca\right) = b + a + abc = 4 - c,$$
donc le premier facteur vaut $(4 - c)/b$. De même, le deuxième vaut $(4 - a)/c$ et le troisième vaut $(4 - b)/a$. Le produit à étudier, que l'on note $\Pi$, vaut donc
$$\Pi = \frac{(4 - a)(4 - b)(4 - c)}{abc}.$$

**Étape 2 : développer.** On a
$$(4 - a)(4 - b)(4 - c) = 64 - 16\,s + 4\,q - p.$$
Comme $s = 4 - p$, cela donne $64 - 64 + 16\,p + 4\,q - p = 15\,p + 4\,q$. Donc
$$\Pi = \frac{15\,p + 4\,q}{p} = 15 + 4 \times \frac{q}{p}.$$
Il suffit donc de montrer que $q \geqslant 3p$, car on aura alors $\Pi \geqslant 15 + 12 = 27$.

**Étape 3 : un outil.** Pour tous réels $x$, $y$, $z$,
$$x^2 + y^2 + z^2 - (xy + yz + zx) = \frac{1}{2}\left((x - y)^2 + (y - z)^2 + (z - x)^2\right) \geqslant 0.$$
En ajoutant $2(xy + yz + zx)$ des deux côtés de $x^2 + y^2 + z^2 \geqslant xy + yz + zx$, on obtient
$$(x + y + z)^2 \geqslant 3\,(xy + yz + zx). \qquad (\star)$$

**Étape 4 : deux inégalités entre $s$, $q$ et $p$.**

- Avec $x = a$, $y = b$, $z = c$, l'inégalité $(\star)$ donne $s^2 \geqslant 3q$.
- Avec $x = ab$, $y = bc$, $z = ca$, on a $x + y + z = q$ et
$$xy + yz + zx = ab \cdot bc + bc \cdot ca + ca \cdot ab = abc\,(b + c + a) = ps,$$
donc $(\star)$ donne $q^2 \geqslant 3ps$.

**Étape 5 : $p \leqslant 1$.** En élevant $s^2 \geqslant 3q$ au carré (les deux côtés sont positifs), puis en utilisant $q^2 \geqslant 3ps$ :
$$s^4 \geqslant 9q^2 \geqslant 27\,ps, \qquad \text{donc} \qquad s^3 \geqslant 27\,p$$
en divisant par $s > 0$. Supposons $p > 1$. Alors $s = 4 - p < 3$, donc $27\,p \leqslant s^3 < 27$, et $p < 1$ : c'est une contradiction. Donc $p \leqslant 1$.

**Étape 6 : $q \geqslant 3p$.** En élevant $q^2 \geqslant 3ps$ au carré, puis en utilisant $s^2 \geqslant 3q$ :
$$q^4 \geqslant 9\,p^2 s^2 \geqslant 27\,p^2 q, \qquad \text{donc} \qquad q^3 \geqslant 27\,p^2$$
en divisant par $q > 0$. Comme $0 < p \leqslant 1$, on a $p^2 \geqslant p^3$, d'où $q^3 \geqslant 27\,p^3 = (3p)^3$. La fonction cube est croissante, donc $q \geqslant 3p$.

**Conclusion.** D'après l'étape 2, $\Pi = 15 + 4\,q/p \geqslant 15 + 4 \times 3 = 27$. **Le produit est toujours au moins égal à $27$.** L'égalité a lieu pour $a = b = c = 1$, qui vérifie bien $1 + 1 + 1 + 1 = 4$, et le produit vaut alors $3 \times 3 \times 3 = 27$.

## Going further

Le corrigé original va plus vite avec l'**inégalité arithmético-géométrique** : pour des nombres positifs, la moyenne arithmétique est au moins égale à la moyenne géométrique. Pour quatre nombres, elle donne $4 = a + b + c + abc \geqslant 4\,(abc)^{1/2}$, donc $abc \leqslant 1$. Pour trois nombres, elle donne
$$\frac{1}{a} + \frac{1}{b} + \frac{1}{c} \geqslant \frac{3}{(abc)^{1/3}} \geqslant 3.$$ Les étapes 3 à 6 ci-dessus démontrent exactement ce dont on a besoin, avec seulement des carrés.
