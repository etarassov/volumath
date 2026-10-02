---
id: "8165"
title: "Des trinômes de même discriminant"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [trinome, discriminant, forme-canonique, ecart-moyen]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, La Muraille"
  reference: "stage_ete_2018.pdf, chapitre VIII « La Muraille », exercices de niveau 2, exercice 92 (deux étoiles). La Muraille ne donne que les énoncés, sans solution : la solution ci-dessous a été rédigée pour ce recueil."
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

On se donne $n \geqslant 2$ trinômes du second degré unitaires

$$P_1(x) = x^2 + b_1 x + c_1, \qquad \ldots, \qquad P_n(x) = x^2 + b_n x + c_n ,$$

qui ont tous **le même discriminant**.

On suppose que, pour tout couple d'indices $i \neq j$, le trinôme $P_i + P_j$ a deux racines réelles distinctes.

Montrer que $P_1 + P_2 + \cdots + P_n$ a lui aussi deux racines réelles distinctes.

## Hints

1. Mets chaque trinôme sous forme canonique. Comme les discriminants sont égaux, les $n$ paraboles sont toutes **la même**, simplement translatée horizontalement.
2. Note $D$ le discriminant commun et écris $P_i(x) = (x - r_i)^2 - \dfrac{D}{4}$. Que vaut $r_i$ ?
3. Calcule le discriminant de $P_i + P_j$ en fonction de $D$ et de $r_i - r_j$. L'hypothèse devient alors très simple.
4. Calcule de même le discriminant de $P_1 + \cdots + P_n$. Tu dois majorer $n\sum r_i^2 - \left(\sum r_i\right)^2$.
5. Cette quantité vaut $n\sum (r_i - m)^2$, où $m$ est la moyenne des $r_i$. Et la moyenne est le nombre $t$ qui rend $\sum (r_i - t)^2$ le plus petit : essaie avec $t$ le milieu du plus petit et du plus grand des $r_i$.

## Solution

Notons $D$ le discriminant commun.

**Forme canonique.**

Posons $r_i = -\dfrac{b_i}{2}$. Alors

$$(x - r_i)^2 - \frac{D}{4} = x^2 + b_i x + \frac{b_i^2}{4} - \frac{b_i^2 - 4c_i}{4} = x^2 + b_i x + c_i = P_i(x) .$$

Les $n$ trinômes ne diffèrent donc que par le nombre $r_i$, l'abscisse du sommet de leur parabole.

**Ce que dit l'hypothèse.**

Pour $i \neq j$,

$$P_i(x) + P_j(x) = (x-r_i)^2 + (x-r_j)^2 - \frac{D}{2} = 2x^2 - 2(r_i + r_j)x + r_i^2 + r_j^2 - \frac{D}{2} .$$

Son discriminant vaut

$$\Delta_{ij} = 4(r_i+r_j)^2 - 8\left(r_i^2 + r_j^2 - \frac{D}{2}\right) = 4[(r_i+r_j)^2 - 2(r_i^2+r_j^2)] + 4D .$$

Or $(r_i+r_j)^2 - 2(r_i^2+r_j^2) = -(r_i - r_j)^2$, donc

$$\Delta_{ij} = 4(D - (r_i-r_j)^2) .$$

L'hypothèse « $P_i + P_j$ a deux racines réelles distinctes » signifie $\Delta_{ij} > 0$, c'est-à-dire

$$(r_i - r_j)^2 < D \qquad \text{pour tous } i \neq j .$$

En particulier $D > 0$, et tous les $r_i$ sont dans un intervalle de longueur strictement inférieure à $\sqrt{D}$.

**Ce qu'il faut démontrer.**

$$T(x) = \sum_{i=1}^n P_i(x) = n x^2 - 2\left(\sum_i r_i\right) x + \sum_i r_i^2 - \frac{nD}{4} .$$

Son discriminant vaut

$$\Delta = 4\left(\sum_i r_i\right)^2 - 4n\left(\sum_i r_i^2 - \frac{nD}{4}\right)
= 4\left[\frac{n^2 D}{4} - \left(n\sum_i r_i^2 - (\sum_i r_i)^2\right)\right] .$$

Il s'agit donc de montrer

$$(\star) \qquad n\sum_i r_i^2 - \left(\sum_i r_i\right)^2 \ <\ \frac{n^2 D}{4} .$$

**Une écriture avec la moyenne.**

Soit $m = \dfrac{1}{n}\sum_i r_i$ la moyenne des $r_i$. Un calcul direct donne, pour tout réel $t$,

$$\sum_i (r_i - t)^2 = \sum_i r_i^2 - 2t\sum_i r_i + n t^2 = \sum_i (r_i - m)^2 + n(m - t)^2 .$$

Deux conséquences :

- en prenant $t = 0$ : $\ \displaystyle\sum_i (r_i - m)^2 = \sum_i r_i^2 - n m^2 = \sum_i r_i^2 - \frac{1}{n}\left(\sum_i r_i\right)^2$, donc
  $$n\sum_i r_i^2 - \left(\sum_i r_i\right)^2 = n \sum_i (r_i - m)^2 ;$$
- pour tout réel $t$ : $\ \displaystyle\sum_i (r_i - m)^2 \leqslant \sum_i (r_i - t)^2$, c'est-à-dire que la moyenne minimise cette somme de carrés.

**La majoration.**

Notons $A$ le plus petit et $B$ le plus grand des $r_i$, et $t = \dfrac{A+B}{2}$ leur milieu. Chaque $r_i$ est dans $[A\,;\,B]$, donc

$$|r_i - t| \leqslant \frac{B-A}{2} .$$

Mais $A$ et $B$ sont deux des $r_i$, donc l'hypothèse donne $(B-A)^2 < D$, d'où

$$(r_i - t)^2 \leqslant \frac{(B-A)^2}{4} < \frac{D}{4} \qquad \text{pour tout } i .$$

En sommant les $n$ inégalités puis en utilisant la minimalité de la moyenne :

$$\sum_i (r_i - m)^2 \ \leqslant\ \sum_i (r_i - t)^2 \ <\ n \times \frac{D}{4} .$$

En multipliant par $n$, on obtient exactement $(\star)$ :

$$n\sum_i r_i^2 - \left(\sum_i r_i\right)^2 = n\sum_i (r_i-m)^2 < \frac{n^2 D}{4} .$$

Donc $\Delta > 0$.

$$\boxed{\ P_1 + P_2 + \cdots + P_n \text{ a bien deux racines réelles distinctes.}\ }$$

## Going further

Tout repose sur une remarque de départ : des trinômes unitaires de même discriminant sont des translatés horizontaux les uns des autres, donc un seul nombre, $r_i$, décrit chacun d'eux. L'hypothèse dit que ces nombres sont tous proches les uns des autres, à moins de $\sqrt{D}$, et la conclusion dit qu'ils ne sont alors pas trop dispersés autour de leur moyenne.

La majoration de la dispersion par le carré de l'amplitude est un résultat général : pour $n$ nombres tous contenus dans un intervalle de longueur $L$, on a toujours $\dfrac{1}{n}\sum (r_i - m)^2 \leqslant \dfrac{L^2}{4}$.
