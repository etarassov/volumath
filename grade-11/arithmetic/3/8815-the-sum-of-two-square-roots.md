---
id: "8815"
title: "La somme de deux racines carrées"
grade: 11
theme: arithmetic
difficulty: 3
duration_min: 30
tags: [irrationnel, racine carree, raisonnement par labsurde, nombres premiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Algèbre : Découverte » (Melvil), exercice 7, p. 49"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Un nombre est dit **rationnel** s'il s'écrit comme une fraction $\dfrac{p}{q}$ de deux entiers, et **irrationnel** sinon.

Montrer que $\sqrt{2} + \sqrt{3}$ est irrationnel.

## Hints

1. Un nombre irrationnel est difficile à attraper directement. Raisonne par l'absurde : suppose $\sqrt2 + \sqrt3$ rationnel, et déduis-en d'autres nombres rationnels.
2. Les sommes, différences, produits et quotients (par un nombre non nul) de rationnels sont rationnels. Que devient donc $(\sqrt2+\sqrt3)^2$ ?
3. Tu obtiens $5 + 2\sqrt6$. Que peux-tu en déduire sur $\sqrt6$ ?
4. Il reste donc à montrer que $\sqrt6$ est irrationnel. Suppose $\sqrt 6 = \dfrac{p}{q}$ avec la fraction réduite au maximum, et regarde la divisibilité par $2$.

## Solution

### Le plan

On suppose $\sqrt2 + \sqrt3$ rationnel et on en déduit que $\sqrt6$ l'est aussi, ce que l'on montre ensuite impossible.

### Étape 1 : si $\sqrt2 + \sqrt3$ est rationnel, alors $\sqrt6$ l'est

Rappelons que la somme, la différence, le produit de deux rationnels sont rationnels, et que le quotient d'un rationnel par un rationnel non nul l'est aussi. Cela se vérifie directement sur les fractions.

Supposons donc que $r = \sqrt2 + \sqrt3$ soit rationnel. Alors $r^2$ est rationnel, et
$$r^2 = \left(\sqrt2 + \sqrt3\right)^2 = 2 + 2\sqrt2\sqrt3 + 3 = 5 + 2\sqrt6 .$$

Donc
$$\sqrt6 = \frac{r^2 - 5}{2}$$
serait un rationnel, comme quotient de rationnels.

### Étape 2 : $\sqrt6$ est irrationnel

Supposons par l'absurde que $\sqrt6 = \dfrac{p}{q}$ avec $p$ et $q$ entiers strictement positifs, et choisissons la fraction **irréductible**, c'est-à-dire avec $p$ et $q$ premiers entre eux.

En élevant au carré et en multipliant par $q^2$ :
$$p^2 = 6 q^2 .$$

Le membre de droite est pair, donc $p^2$ est pair. Or le carré d'un nombre impair est impair (si $p = 2k+1$ alors $p^2 = 4k^2+4k+1$). Donc $p$ est pair : écrivons $p = 2p'$. Alors
$$4p'^2 = 6q^2, \qquad \text{donc} \qquad 2p'^2 = 3q^2 .$$

Le membre de gauche est pair, donc $3q^2$ est pair. Comme $3$ est impair, $q^2$ est pair, et donc $q$ est pair, par le même argument que pour $p$.

Ainsi $p$ et $q$ sont tous les deux pairs, ce qui contredit le fait que la fraction était irréductible.

Donc $\sqrt6$ est irrationnel.

### Conclusion

L'étape 1 montre que si $\sqrt2+\sqrt3$ était rationnel, $\sqrt6$ le serait ; l'étape 2 dit que $\sqrt6$ ne l'est pas. Donc
$$\sqrt2 + \sqrt3 \quad \text{est irrationnel.}$$

### Pourquoi passer par $\sqrt 6$ et pas par $\sqrt2$ ou $\sqrt3$

On pourrait être tenté d'écrire : « $\sqrt2$ est irrationnel, $\sqrt3$ aussi, donc leur somme l'est ». C'est un raisonnement faux. La somme de deux irrationnels peut très bien être rationnelle : par exemple $\sqrt2 + \left(1 - \sqrt2\right) = 1$. Il faut donc vraiment travailler sur le nombre $\sqrt2+\sqrt3$ lui-même, et c'est l'élévation au carré qui fait apparaître un objet que l'on sait traiter.

## Going further

1. Montrer que $\sqrt2 + \sqrt3 + \sqrt6$ est irrationnel.
2. Soit $n$ un entier strictement positif. Montrer que $\sqrt n$ est soit un entier, soit irrationnel.
