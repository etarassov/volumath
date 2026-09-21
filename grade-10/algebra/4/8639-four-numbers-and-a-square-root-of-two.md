---
id: "8639"
title: "Quatre nombres et une racine de 2"
grade: 10
theme: algebra
difficulty: 4
duration_min: 35
tags: [invariant, somme des carres, racine carree, identite remarquable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 13"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Maena a écrit au tableau les quatre nombres

$$-\sqrt{2}, \qquad \frac{1}{\sqrt{2}}, \qquad \sqrt{2}, \qquad 2 .$$

Elle s'autorise ensuite, autant de fois qu'elle le veut, l'opération suivante : effacer deux nombres du tableau, disons $a$ et $b$, et écrire à la place les deux nombres

$$\frac{a+b}{\sqrt 2} \qquad \text{et} \qquad \frac{a-b}{\sqrt 2} .$$

Peut-elle obtenir les quatre nombres

$$-\sqrt{2}, \qquad 1, \qquad \sqrt{2}, \qquad 2\sqrt{2} \; ?$$

## Hints

1. Il y a toujours quatre nombres au tableau. Cherche une quantité fabriquée à partir de ces quatre nombres qui ne change jamais.
2. La somme ne marche pas : calcule $\dfrac{a+b}{\sqrt2} + \dfrac{a-b}{\sqrt2}$ et compare à $a+b$.
3. Le produit ne marche pas non plus : $\dfrac{a+b}{\sqrt2} \times \dfrac{a-b}{\sqrt2} = \dfrac{a^2-b^2}{2}$, ce qui ne vaut pas $ab$ en général.
4. Les deux expressions contiennent $\sqrt 2$ au dénominateur. Que se passe-t-il si tu les **élèves au carré** avant d'additionner ?
5. Souviens-toi de $(a+b)^2 + (a-b)^2$.

## Solution

**Chercher l'invariant.** Les deux candidats habituels échouent :

- **la somme** : $\dfrac{a+b}{\sqrt2} + \dfrac{a-b}{\sqrt2} = \dfrac{2a}{\sqrt2} = a\sqrt2$, ce qui ne vaut pas $a+b$ en général ;
- **le produit** : $\dfrac{a+b}{\sqrt2} \times \dfrac{a-b}{\sqrt2} = \dfrac{a^2-b^2}{2}$, ce qui ne vaut pas $ab$ en général.

En revanche, les racines carrées au dénominateur invitent à élever au carré.

**La somme des carrés est un invariant.** Calculons la contribution des deux nouveaux nombres à la somme des carrés :

$$\left( \frac{a+b}{\sqrt2} \right)^2 + \left( \frac{a-b}{\sqrt2} \right)^2 = \frac{(a+b)^2}{2} + \frac{(a-b)^2}{2} = \frac{(a^2 + 2ab + b^2) + (a^2 - 2ab + b^2)}{2} = \frac{2a^2 + 2b^2}{2} = a^2 + b^2 .$$

C'est exactement la contribution des deux nombres effacés. Donc **la somme des carrés des quatre nombres du tableau ne change jamais**.

**Au départ.**

$$\left(-\sqrt2\right)^2 + \left(\frac{1}{\sqrt2}\right)^2 + \left(\sqrt2\right)^2 + 2^2 = 2 + \frac12 + 2 + 4 = \frac{17}{2} .$$

**À l'arrivée.**

$$\left(-\sqrt2\right)^2 + 1^2 + \left(\sqrt2\right)^2 + \left(2\sqrt2\right)^2 = 2 + 1 + 2 + 8 = 13 .$$

**Conclusion.** Comme $\dfrac{17}{2} = 8{,}5$ est différent de $13$, **Maena ne pourra jamais obtenir ces quatre nombres**.

## Going further

Le facteur $\sqrt2$ des dénominateurs n'est pas un caprice : c'est exactement ce qu'il faut pour que la somme des carrés se conserve. Géométriquement, l'opération est une rotation d'un quart de tour dans le plan des coordonnées $(a, b)$, et une rotation conserve les distances à l'origine, c'est-à-dire $a^2 + b^2$.

Si l'on remplaçait $\sqrt2$ par $2$, la somme des carrés serait divisée par $2$ à chaque coup : ce ne serait plus un invariant, mais elle diminuerait strictement, ce qui reste une information exploitable. On parle alors de *monovariant*.
