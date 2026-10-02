---
id: "12055"
title: "Quand a² + bct, b² + cat, c² + abt forment encore un triangle"
grade: 10
theme: algebra
difficulty: 5
duration_min: 50
tags: [inegalite triangulaire, triangle, fonction affine, parametre, contre-exemple, inegalites]
adapted_from: null
see_also: []
created: 2026-10-02
source:
  name: "POFM, test du 12 avril 2014"
  reference: "2017-10_ofm-2013-2014-test-avril.pdf, problème 1 (c'est le problème 1 de l'EGMO 2014) ; corrigé 2017-10_ofm-2013-2014-test-avril-corrige.pdf ; réponse vérifiée par ordinateur sur des centaines de milliers de triangles tirés au hasard"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-test-avril.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-tests/2017-10_ofm-2013-2014-test-avril.pdf"
---

## Statement

Déterminer tous les nombres réels $t$ qui ont la propriété suivante : chaque fois que $a$, $b$, $c$ sont les longueurs des côtés d'un triangle non aplati, les trois nombres

$$a^2 + bct, \qquad b^2 + cat, \qquad c^2 + abt$$

sont, eux aussi, les longueurs des côtés d'un triangle non aplati.

## Hints

1. Essayez des triangles très écrasés. D'abord $b = c = 1$ avec $a$ très petit, puis $b = c = 1$ avec $a$ presque égal à $2$. Quelles conditions sur $t$ obtenez-vous ?
2. Échanger $a$ et $b$ échange les deux premiers nombres. Il suffit donc de démontrer une seule inégalité, par exemple $a^2 + bct < (b^2 + cat) + (c^2 + abt)$.
3. Quand $a$, $b$, $c$ sont fixés, la différence entre les deux membres de cette inégalité est une fonction affine de $t$. Sur un intervalle, où une fonction affine prend-elle sa plus petite valeur ?
4. Pour $t = 2/3$, posez $s = b + c$ et utilisez $bc \leqslant s^2/4$, qui vient de $(b - c)^2 \geqslant 0$.

## Solution

**Rappel.** Trois réels $x$, $y$, $z$ sont les longueurs des côtés d'un triangle non aplati exactement lorsque

$$x < y + z , \qquad y < z + x , \qquad z < x + y .$$

Ces trois inégalités suffisent : elles obligent $x$, $y$, $z$ à être strictement positifs. En effet, en ajoutant les deux premières, on obtient $x + y < x + y + 2z$, donc $z > 0$, et de même pour $x$ et $y$.

Pour un triangle de côtés $a$, $b$, $c$, notons $x = a^2 + bct$, $y = b^2 + cat$ et $z = c^2 + abt$. Nous allons montrer que les réels $t$ qui conviennent sont ceux qui vérifient $2/3 \leqslant t \leqslant 2$.

**Étape 1 : si $t > 2$, la propriété est fausse.** Posons $\varepsilon = (t - 2)/(2t)$. Comme $t > 2$, on a $0 < \varepsilon < 1/2$. Les nombres $\varepsilon$, $1$, $1$ sont les côtés d'un triangle non aplati, car $\varepsilon < 1 + 1$ et $1 < 1 + \varepsilon$. Pour $a = \varepsilon$ et $b = c = 1$, on trouve

$$x = \varepsilon^2 + t , \qquad y = z = 1 + \varepsilon t .$$

Par le choix de $\varepsilon$, on a $2\varepsilon t = t - 2$, donc $y + z = 2 + 2\varepsilon t = t$. Ainsi $y + z = t \leqslant \varepsilon^2 + t = x$ : l'inégalité $x < y + z$ est fausse, et $x$, $y$, $z$ ne sont pas les côtés d'un triangle non aplati.

**Étape 2 : si $t < 2/3$, la propriété est fausse.** Posons cette fois $\varepsilon = (2 - 3t)/(4 - 2t)$. Comme $t < 2/3$, le numérateur et le dénominateur sont strictement positifs, donc $\varepsilon > 0$. De plus $\varepsilon < 2$, car $2 - 3t < 2(4 - 2t)$ revient à $t < 6$. Les nombres $2 - \varepsilon$, $1$, $1$ sont donc les côtés d'un triangle non aplati, car $2 - \varepsilon < 1 + 1$ et $1 < 1 + (2 - \varepsilon)$. Pour $a = 2 - \varepsilon$ et $b = c = 1$, on trouve

$$x = (2 - \varepsilon)^2 + t , \qquad y = z = 1 + (2 - \varepsilon)t ,$$

donc, en développant,

$$x - (y + z) = 4 - 4\varepsilon + \varepsilon^2 + t - 2 - 4t + 2\varepsilon t = (2 - 3t) - \varepsilon(4 - 2t) + \varepsilon^2 .$$

Par le choix de $\varepsilon$, on a $\varepsilon(4 - 2t) = 2 - 3t$. Il reste $x - (y + z) = \varepsilon^2 \geqslant 0$ : là encore, l'inégalité $x < y + z$ est fausse.

**Étape 3 : une seule inégalité suffit.** Supposons maintenant $2/3 \leqslant t \leqslant 2$, et soit un triangle non aplati de côtés $a$, $b$, $c$. Échanger $a$ et $b$ transforme $x = a^2 + bct$ en $b^2 + act = y$, transforme $y$ en $x$, et ne change pas $z = c^2 + abt$. De même, échanger $a$ et $c$ échange $x$ et $z$.

Supposons donc démontré que **$x < y + z$ pour tout triangle non aplati**. En appliquant ce résultat au triangle de côtés $b$, $a$, $c$ (le même triangle, nommé autrement), on obtient $y < x + z$. En l'appliquant au triangle de côtés $c$, $b$, $a$, on obtient $z < y + x$. Les trois inégalités du rappel sont alors vérifiées.

Il reste donc à démontrer que, pour tout triangle non aplati,

$$y + z - x = b^2 + c^2 - a^2 + t\,(ab + ac - bc) > 0 .$$

**Étape 4 : une fonction affine.** Fixons le triangle, et notons $f(t) = b^2 + c^2 - a^2 + t\,(ab + ac - bc)$. C'est une fonction affine de $t$. Une fonction affine est croissante, décroissante ou constante. Sur l'intervalle $[2/3\,;\,2]$, sa plus petite valeur est donc $f(2/3)$ ou $f(2)$. Il suffit de montrer que ces deux nombres sont strictement positifs.

**Étape 5 : le cas $t = 2$.** On regroupe les termes :

$$f(2) = b^2 + c^2 - 2bc + 2ab + 2ac - a^2 = (b - c)^2 + a\,(2b + 2c - a) .$$

Comme $a < b + c$, on a $2b + 2c - a > 2a - a = a > 0$. Le premier terme est un carré, donc positif ou nul. Ainsi $f(2) > 0$.

**Étape 6 : le cas $t = 2/3$.** Multiplions par $3$ pour éviter les fractions :

$$3 f(2/3) = 3b^2 + 3c^2 - 3a^2 + 2ab + 2ac - 2bc .$$

Posons $s = b + c$. On a $b^2 + c^2 = s^2 - 2bc$ et $2ab + 2ac = 2as$, donc

$$3 f(2/3) = 3s^2 - 8bc - 3a^2 + 2as .$$

Or $(b - c)^2 \geqslant 0$ donne $(b + c)^2 \geqslant 4bc$, c'est-à-dire $bc \leqslant s^2/4$, donc $-8bc \geqslant -2s^2$. On en déduit

$$3 f(2/3) \geqslant s^2 + 2as - 3a^2 = (s - a)(s + 3a) .$$

Comme $s = b + c > a$, les deux facteurs sont strictement positifs. Donc $f(2/3) > 0$.

**Conclusion.** D'après les étapes 4, 5 et 6, $f(t) > 0$ pour tout $t$ entre $2/3$ et $2$, et l'étape 3 montre qu'alors $x$, $y$, $z$ sont toujours les côtés d'un triangle non aplati. Avec les étapes 1 et 2, les réels $t$ qui conviennent sont exactement ceux qui vérifient

$$\frac{2}{3} \leqslant t \leqslant 2 .$$

## Going further

1. Déterminer les réels $t$ pour lesquels les trois nombres $a^2 + bct$, $b^2 + cat$, $c^2 + abt$ sont strictement positifs pour tout triangle non aplati. Comparer avec la réponse de l'exercice.
2. Montrer que pour $t = 2$, la somme des trois nombres vaut $(a + b + c)^2$.
