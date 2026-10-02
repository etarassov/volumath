---
id: "7063"
title: "Un polynôme et son reflet"
grade: 12
theme: algebra
difficulty: 5
duration_min: 40
tags: [polynome, inegalite, developpement, coefficients-positifs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, jeudi 28 octobre (algèbre), cours et exercices de l'après-midi (Pierre Bornsztein), exercice 7, d'après le test d'entrée OFM 2008. L'énoncé imprimé dit « pour tout réel x non nul », ce qui est faux : avec P(X) = 1 + X et x = −2 on obtient P(−2)P(−1/2) = −1/2, alors que P(1)² = 4. La bonne hypothèse est x > 0, et c'est d'ailleurs celle que le corrigé imprimé utilise."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soit
$$P(X) = a_n X^n + a_{n-1}X^{n-1} + \cdots + a_1 X + a_0$$
un polynôme dont **tous les coefficients sont positifs ou nuls**.

Montrer que pour tout réel $x > 0$ :
$$P(x)\, P\left(\frac1x\right) \geq [P(1)]^2 .$$

## Hints

1. Commence par un cas minuscule, $P(X) = a_0 + a_1 X$, et développe tout à la main. Que
   reconnais-tu ?
2. Que vaut $P(1)$ ? C'est simplement la somme des coefficients.
3. Développe le produit $P(x)P(1/x)$ : tu obtiens une double somme de termes
   $a_i a_j x^{i-j}$.
4. Regroupe les termes deux par deux : $a_i a_j x^{i-j}$ avec $a_j a_i x^{j-i}$. Que vaut leur
   somme ?
5. Le seul outil nécessaire est : pour $t > 0$, $t + \dfrac1t \geq 2$.

## Solution

**L'outil.**

Pour tout réel $t > 0$,
$$t + \frac 1t \geq 2 ,$$
car cette inégalité se réécrit $t^2 - 2t + 1 \geq 0$, c'est-à-dire $(t-1)^2 \geq 0$, après
multiplication par $t > 0$. Il y a égalité si et seulement si $t = 1$.

**Ce qu'on veut démontrer.**

Notons d'abord que
$$P(1) = a_0 + a_1 + \cdots + a_n = \sum_{i=0}^{n} a_i ,$$
donc
$$[P(1)]^2 = \left(\sum_{i=0}^n a_i\right)^2
= \sum_{i=0}^n a_i^2 + 2\sum_{0 \leq i < j \leq n} a_i a_j .$$

**Développer le produit.**

$$P(x)\,P\left(\frac1x\right)
= \left(\sum_{i=0}^n a_i x^i\right)\left(\sum_{j=0}^n a_j \frac{1}{x^{j}}\right)
= \sum_{i=0}^n \sum_{j=0}^n a_i a_j\, x^{\,i-j} .$$

Séparons les termes où $i = j$ des autres, et regroupons chaque couple $(i,j)$ avec le couple
$(j,i)$ :
$$P(x)\,P\left(\frac1x\right)
= \sum_{i=0}^n a_i^2 + \sum_{0 \leq i < j \leq n} a_i a_j
\left(x^{\,i-j} + x^{\,j-i}\right) .$$

(Pour $i = j$ le terme vaut $a_i^2 x^0 = a_i^2$.)

**Appliquer l'outil.**

Fixons $i < j$ et posons $t = x^{\,j-i}$. Comme $x > 0$, on a $t > 0$, et
$$x^{\,i-j} + x^{\,j-i} = \frac1t + t \geq 2 .$$

De plus $a_i a_j \geq 0$, puisque tous les coefficients sont positifs ou nuls. On peut donc
multiplier sans changer le sens :
$$a_i a_j \left(x^{\,i-j} + x^{\,j-i}\right) \geq 2\, a_i a_j .$$

**Conclure.**

En sommant sur tous les couples $i < j$ :
$$P(x)\,P\left(\frac1x\right) \geq \sum_{i=0}^n a_i^2
+ 2\sum_{0 \leq i < j \leq n} a_i a_j = [P(1)]^2 . \qquad \blacksquare$$

**Cas d'égalité.**

Il faut $a_i a_j \left(x^{i-j} + x^{j-i} - 2\right) = 0$ pour tout couple $i < j$. Ou bien
$x = 1$, ou bien tous les produits $a_i a_j$ avec $i \neq j$ sont nuls, c'est-à-dire qu'au
plus un coefficient est non nul : $P$ est alors un monôme $a_k X^k$.

## Going further

**Attention à l'hypothèse $x > 0$.** Elle est indispensable, et l'énoncé du polycopié, qui dit
« pour tout réel $x$ non nul », est fautif. Prends $P(X) = 1 + X$, dont les coefficients sont
bien positifs, et $x = -2$ :
$$P(-2)\,P\left(-\tfrac12\right) = (-1) \times \tfrac12 = -\tfrac12 ,
\qquad \text{alors que} \qquad [P(1)]^2 = 4 .$$

L'inégalité est violée. Ce qui casse, c'est l'outil : pour $t < 0$ on a $t + \dfrac1t \leq -2$,
et non $\geq 2$.

Il y a une autre lecture du résultat. Le nombre $P(1)$ est la somme des coefficients. Le
produit $P(x)P(1/x)$ atteint donc son minimum en $x = 1$ : parmi tous les $x > 0$, c'est
« l'équilibre » qui minimise. C'est un phénomène très général dans les inégalités de ce type.
