---
id: "1426"
title: "L'hyperbole et le cercle se rencontrent"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [systeme, somme-et-produit, second-degre, hyperbole]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, Bézout's Theorem, Part 1"
  reference: "Handout-3976-3653.pdf, problème 3, question 4 (le corrigé Handout-3977-3653.pdf ne donne pas la solution)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3976-3653.pdf"
---

## Statement

Trouver tous les couples $(x\,;\,y)$ de nombres réels vérifiant à la fois

$$xy = 1 \qquad \text{et} \qquad x^2 + y^2 = \frac{17}{4}.$$

## Hints

1. Ne pas remplacer $y$ par $\dfrac1x$ tout de suite : cela mène à une équation de degré $4$.
2. Poser $s = x + y$ et $p = xy$. On connaît déjà $p$. Comment obtenir $s$ à partir des données ?
3. Se souvenir de l'identité $(x+y)^2 = x^2 + 2xy + y^2$.
4. Une fois $s$ et $p$ connus, $x$ et $y$ sont les deux solutions de l'équation $t^2 - st + p = 0$.
5. Attention : l'équation en $s$ a **deux** solutions, et il faut traiter les deux.

## Solution

**Passer par la somme et le produit.**

Posons

$$s = x + y \qquad \text{et} \qquad p = xy .$$

La première équation donne directement $p = 1$.

Pour obtenir $s$, on utilise l'identité

$$(x+y)^2 = x^2 + 2xy + y^2 ,$$

c'est-à-dire $s^2 = (x^2 + y^2) + 2p$. Avec les données :

$$s^2 = \frac{17}{4} + 2 \times 1 = \frac{17}{4} + \frac{8}{4} = \frac{25}{4}.$$

Donc

$$s = \frac52 \qquad \text{ou} \qquad s = -\frac52 .$$

**Retrouver $x$ et $y$.**

Si deux nombres ont pour somme $s$ et pour produit $p$, ce sont les deux solutions de l'équation

$$t^2 - st + p = 0 .$$

*Premier cas : $s = \dfrac52$.* L'équation devient

$$t^2 - \frac52 t + 1 = 0 .$$

Son discriminant vaut $\Delta = \dfrac{25}{4} - 4 = \dfrac{9}{4} > 0$, et $\sqrt{\Delta} = \dfrac32$. Les solutions sont

$$t = \frac{\frac52 - \frac32}{2} = \frac12 \qquad \text{et} \qquad t = \frac{\frac52 + \frac32}{2} = 2 .$$

On obtient les couples $\left(2\,;\,\dfrac12\right)$ et $\left(\dfrac12\,;\,2\right)$.

*Second cas : $s = -\dfrac52$.* L'équation devient $t^2 + \dfrac52 t + 1 = 0$, de même discriminant $\dfrac94$, et de solutions $-\dfrac12$ et $-2$.

On obtient les couples $\left(-2\,;\,-\dfrac12\right)$ et $\left(-\dfrac12\,;\,-2\right)$.

**Vérification.**

Pour $(2\,;\,\frac12)$ : $xy = 2 \times \frac12 = 1$ et $x^2 + y^2 = 4 + \frac14 = \frac{17}{4}$. Correct.

Pour $(-2\,;\,-\frac12)$ : $xy = (-2) \times (-\frac12) = 1$ et $x^2 + y^2 = 4 + \frac14 = \frac{17}{4}$. Correct.

Les deux autres couples s'en déduisent en échangeant $x$ et $y$, ce qui ne change ni $xy$ ni $x^2 + y^2$.

**Conclusion.** Il y a exactement quatre couples solutions :

$$\left(2\,;\,\tfrac12\right), \qquad \left(\tfrac12\,;\,2\right), \qquad \left(-2\,;\,-\tfrac12\right), \qquad \left(-\tfrac12\,;\,-2\right).$$

**Une lecture géométrique.** L'équation $xy = 1$ est celle d'une hyperbole (le graphe de la fonction inverse), et $x^2 + y^2 = \frac{17}{4}$ est celle du cercle de centre $O$ et de rayon $\frac{\sqrt{17}}{2} \approx \text{2,06}$. Le calcul dit que ces deux courbes se coupent en **quatre** points : deux dans le quart de plan où $x$ et $y$ sont positifs, deux dans celui où ils sont négatifs. C'est le maximum possible pour deux courbes d'équations de degré $2$, et c'est ce que prédit le théorème de Bézout.

## Going further

1. Reprendre le même système en remplaçant $\dfrac{17}{4}$ par $2$. Combien de solutions trouve-t-on, et que se passe-t-il géométriquement ?
2. Même question avec $x^2 + y^2 = 1$. Pourquoi n'y a-t-il aucune solution réelle ?
3. Montrer que, pour tous réels $x$ et $y$ vérifiant $xy = 1$, on a toujours $x^2 + y^2 \geqslant 2$.
