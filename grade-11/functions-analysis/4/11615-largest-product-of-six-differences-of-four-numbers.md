---
id: "11615"
title: "Le plus grand produit des six écarts entre quatre nombres"
grade: 11
theme: functions-analysis
difficulty: 4
duration_min: 50
tags: [optimisation, derivee, inegalite, encadrement, polynome]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2013-2014 n° 6 (pot-pourri)"
  reference: "2017-10_ofm-2013-2014-envoi-6.pdf, Exercices communs, exercice 6 ; corrigé 2017-10_ofm-2013-2014-envoi-6-solutions.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2013-2014-envoi-6.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2013-2014-envoi-6.pdf"
---

## Statement

Pour quatre nombres réels $x_1$, $x_2$, $x_3$, $x_4$ de l'intervalle $[0, 1]$, on considère le produit des six écarts

$$|x_1 - x_2| \cdot |x_1 - x_3| \cdot |x_1 - x_4| \cdot |x_2 - x_3| \cdot |x_2 - x_4| \cdot |x_3 - x_4|.$$

On note $K$ la plus grande valeur que peut prendre ce produit.

a) Prouver que

$$\frac{4}{243} < K < \frac{1}{27}.$$


b) Déterminer $K$.

## Hints

1. L'ordre des quatre nombres ne change pas le produit : on peut supposer $x_1 \geqslant x_2 \geqslant x_3 \geqslant x_4$. Pour minorer $K$, essaie des valeurs simples, par exemple $1$, $3/4$, $1/4$ et $0$.
2. Pour majorer $K$ dans a), pose $p = x_1 - x_2$, $q = x_2 - x_3$ et $r = x_3 - x_4$, et utilise $pr \leqslant (p + r)^2/4$.
3. Pour b), montre qu'on ne perd rien à prendre $x_1 = 1$ et $x_4 = 0$. Il reste deux nombres $y \geqslant z$, et le produit $y(1-y) \cdot z(1-z) \cdot (y - z)$.
4. Fixe l'écart $t = y - z$ et majore $y(1-y) \cdot z(1-z)$ grâce à $ab \leqslant \left(\frac{a+b}{2}\right)^2$. Il reste une fonction de la seule variable $t$ à étudier.

## Solution

Notons $f(x_1, x_2, x_3, x_4)$ le produit des six écarts. Échanger deux des nombres ne fait que permuter les six facteurs, donc ne change pas le produit. On peut donc toujours supposer

$$x_1 \geqslant x_2 \geqslant x_3 \geqslant x_4.$$

Les valeurs absolues disparaissent alors : $|x_i - x_j| = x_i - x_j$ quand $i < j$.

Un outil servira deux fois : pour deux réels $a$ et $b$, on a $ab \leqslant \left(\frac{a+b}{2}\right)^2$, car la différence vaut

$$\left(\frac{a+b}{2}\right)^2 - ab = \frac{a^2 + 2ab + b^2 - 4ab}{4} = \left(\frac{a-b}{2}\right)^2 \geqslant 0.$$

Il y a égalité seulement quand $a = b$.

**a) La minoration.** Pour $(x_1, x_2, x_3, x_4) = \left(1, \frac34, \frac14, 0\right)$, les six écarts valent $\frac14$, $\frac34$, $1$, $\frac12$, $\frac34$ et $\frac14$, donc

$$K \geqslant \frac14 \times \frac34 \times 1 \times \frac12 \times \frac34 \times \frac14 = \frac{9}{512}.$$

Or $9 \times 243 = 2187$ et $4 \times 512 = 2048$, donc $\dfrac{9}{512} > \dfrac{4}{243}$, et $K > \dfrac{4}{243}$.

**a) La majoration.** Posons $p = x_1 - x_2$, $q = x_2 - x_3$ et $r = x_3 - x_4$. Ces trois nombres sont positifs ou nuls, et $p + q + r = x_1 - x_4 \leqslant 1$. Le produit s'écrit

$$f = p \cdot (p + q) \cdot (p + q + r) \cdot q \cdot (q + r) \cdot r = pqr \cdot (p + q)(q + r)(p + q + r).$$

- Si l'un des nombres $p$, $q$, $r$ est nul, alors $f = 0$.
- Sinon, $p + q < p + q + r \leqslant 1$, $q + r < 1$ et $p + q + r \leqslant 1$, donc $f < pqr$.

Majorons $pqr$. D'après l'outil, $pr \leqslant \frac{(p + r)^2}{4}$, et $p + r = (p + q + r) - q \leqslant 1 - q$. Donc

$$pqr \leqslant \frac{q(1 - q)^2}{4}.$$

La fonction $g(q) = q(1-q)^2$ a pour dérivée $g'(q) = (1-q)^2 - 2q(1-q) = (1-q)(1-3q)$ : elle croît sur $\left[0, \frac13\right]$ et décroît sur $\left[\frac13, 1\right]$. Son maximum sur $[0, 1]$ est donc $g\left(\frac13\right) = \frac13 \times \frac49 = \frac{4}{27}$. Ainsi $pqr \leqslant \frac{1}{27}$.

Dans tous les cas, $f < \dfrac{1}{27}$, donc $K < \dfrac{1}{27}$.

**b) Étape 1 : on peut prendre $x_1 = 1$ et $x_4 = 0$.** Remplacer $x_1$ par $1$ augmente (ou laisse égaux) les trois écarts $x_1 - x_2$, $x_1 - x_3$, $x_1 - x_4$, sans toucher aux autres. De même, remplacer $x_4$ par $0$ augmente les trois écarts qui contiennent $x_4$. Comme les six facteurs sont positifs ou nuls, le produit ne diminue pas. Il suffit donc de chercher le maximum quand $x_1 = 1$ et $x_4 = 0$.

Notons alors $y = x_2$ et $z = x_3$, avec $1 \geqslant y \geqslant z \geqslant 0$. Le produit devient

$$(1 - y)(1 - z) \cdot 1 \cdot (y - z) \cdot y \cdot z = y(1-y) \cdot z(1-z) \cdot (y - z).$$

**b) Étape 2 : à écart fixé.** Notons $t = y - z$, compris entre $0$ et $1$, et $s = y + z$. Posons $a = y(1-y)$ et $b = z(1-z)$, qui sont positifs ou nuls. En développant, on vérifie que

$$y^2 + z^2 = \frac{(y+z)^2 + (y-z)^2}{2} = \frac{s^2 + t^2}{2},$$

donc

$$a + b = (y + z) - (y^2 + z^2) = s - \frac{s^2 + t^2}{2} = \frac{1 - t^2 - (1 - s)^2}{2} \leqslant \frac{1 - t^2}{2}.$$

D'après l'outil, et comme $0 \leqslant \frac{a+b}{2} \leqslant \frac{1 - t^2}{4}$,

$$ab \leqslant \left(\frac{a+b}{2}\right)^2 \leqslant \frac{(1 - t^2)^2}{16}.$$

Le produit vérifie donc

$$y(1-y) \cdot z(1-z) \cdot (y - z) \leqslant P(t), \qquad \text{où} \qquad P(t) = \frac{t(1 - t^2)^2}{16}.$$

Il y a égalité quand $s = 1$, c'est-à-dire $z = 1 - y$ : alors $b = (1-y)y = a$, et les deux inégalités sont des égalités.

**b) Étape 3 : l'étude de $P$.** On développe : $P(t) = \frac{t - 2t^3 + t^5}{16}$, donc

$$P'(t) = \frac{1 - 6t^2 + 5t^4}{16} = \frac{(1 - t^2)(1 - 5t^2)}{16}.$$

Sur $[0, 1]$, le facteur $1 - t^2$ est positif, et $1 - 5t^2$ est positif avant $t = \frac{1}{\sqrt5}$ et négatif après. La fonction $P$ croît donc sur $\left[0, \frac{1}{\sqrt5}\right]$ et décroît sur $\left[\frac{1}{\sqrt5}, 1\right]$. Son maximum est

$$P\left(\frac{1}{\sqrt5}\right) = \frac{1}{16} \times \frac{1}{\sqrt5} \times \left(1 - \frac15\right)^2 = \frac{1}{16} \times \frac{1}{\sqrt5} \times \frac{16}{25} = \frac{1}{25\sqrt5} = \frac{\sqrt5}{125}.$$

**b) Étape 4 : cette valeur est atteinte.** Prenons $t = \frac{1}{\sqrt5}$ et $s = 1$, c'est-à-dire

$$y = \frac12\left(1 + \frac{1}{\sqrt5}\right), \qquad z = \frac12\left(1 - \frac{1}{\sqrt5}\right).$$

Ces deux nombres sont bien dans $[0, 1]$ avec $y \geqslant z$, et toutes les inégalités sont des égalités. Pour $(x_1, x_2, x_3, x_4) = (1, y, z, 0)$, le produit vaut exactement $\dfrac{\sqrt5}{125}$.

**Conclusion : $K = \dfrac{\sqrt5}{125}$, soit environ 0,0179.** On retrouve bien $\dfrac{4}{243} < K < \dfrac{1}{27}$, puisque $\dfrac{4}{243}$ vaut environ 0,0165 et $\dfrac{1}{27}$ environ 0,037.

## Going further

Le maximum est atteint pour des points placés symétriquement par rapport à $\frac12$ : $0$, $z$, $1 - z$ et $1$. Ce n'est pas une coïncidence. Pour $n$ points dans $[0, 1]$, les points qui rendent maximal le produit des écarts sont toujours symétriques : ce sont les deux extrémités $0$ et $1$, et les racines de la dérivée d'un polynôme particulier, appelé polynôme de Legendre. Pour $n = 4$, ces racines sont $z$ et $1 - z$.
