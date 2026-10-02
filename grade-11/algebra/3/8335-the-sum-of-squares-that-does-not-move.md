---
id: "8335"
title: "La somme des carrés qui ne bouge pas"
grade: 11
theme: algebra
difficulty: 3
duration_min: 25
tags: [invariant, somme-de-carres, identites-remarquables, racine-carree]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2020, cours du Groupe A"
  reference: "Polycopie-Valbonne-2020-v2.pdf, Groupe A, « Invariants » (Yohann), exercice 9. Le corrigé publié se trompe dans le calcul de la seconde somme de carrés : il annonce 10 + 1/2 + 2√2 au lieu de 12,5 − 2√2. La conclusion reste la même."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-Valbonne-2020-v2.pdf"
---

## Statement

On part d'une liste de $n$ nombres réels $(x_1, x_2, \ldots, x_n)$ et on lui applique, autant
de fois qu'on veut, l'opération suivante :

- on choisit deux nombres de la liste, appelons-les $x$ et $y$ ;
- on remplace $x$ par $\dfrac{x+y}{\sqrt 2}$ et $y$ par $\dfrac{x-y}{\sqrt 2}$, les autres nombres restant inchangés.

Est-il possible de transformer la liste

$$\left(2, \; \sqrt2, \; \frac{1}{\sqrt 2}, \; -\sqrt 2\right) \qquad \text{en} \qquad \left(1, \; 2\sqrt2, \; 1 - \sqrt2, \; \frac{\sqrt2}{2}\right) \;\;?$$

## Hints

1. Pour montrer qu'un passage est impossible, cherche une quantité qui ne change pas quand on applique l'opération : un invariant.
2. L'opération fait intervenir des racines carrées de $2$ au dénominateur. Une quantité où les $\sqrt 2$ se simplifient bien, c'est un carré.
3. Calcule $\left(\dfrac{x+y}{\sqrt2}\right)^2 + \left(\dfrac{x-y}{\sqrt2}\right)^2$ et compare à $x^2 + y^2$.
4. Une fois l'invariant trouvé, il ne reste qu'à calculer sa valeur pour chacune des deux listes. Attention à $(1-\sqrt2)^2$ : c'est une identité remarquable, le double produit compte.

## Solution

**L'invariant : la somme des carrés.**

Calculons ce que l'opération fait à la somme des carrés des deux nombres choisis :

$$\left(\frac{x+y}{\sqrt2}\right)^2 + \left(\frac{x-y}{\sqrt2}\right)^2 = \frac{(x+y)^2 + (x-y)^2}{2} = \frac{x^2 + 2xy + y^2 + x^2 - 2xy + y^2}{2} = \frac{2x^2 + 2y^2}{2} = x^2 + y^2 .$$

Les deux nombres choisis ont donc la même somme de carrés avant et après ; les autres nombres
ne bougent pas. Donc

$$x_1^2 + x_2^2 + \cdots + x_n^2 \;\text{ne change jamais.}$$

**La somme des carrés de la liste de départ.**

$$2^2 + \left(\sqrt2\right)^2 + \left(\frac{1}{\sqrt2}\right)^2 + \left(-\sqrt2\right)^2 = 4 + 2 + \frac{1}{2} + 2 = \frac{17}{2} = \text{8,5} .$$

**La somme des carrés de la liste d'arrivée.**

Le seul terme délicat est $(1-\sqrt2)^2$. Avec l'identité remarquable :

$$\left(1 - \sqrt2\right)^2 = 1 - 2\sqrt2 + 2 = 3 - 2\sqrt2 .$$

Les autres :

$$1^2 = 1 , \qquad \left(2\sqrt2\right)^2 = 4 \times 2 = 8 , \qquad \left(\frac{\sqrt2}{2}\right)^2 = \frac{2}{4} = \frac{1}{2} .$$

Au total :

$$1 + 8 + \left(3 - 2\sqrt2\right) + \frac12 = \frac{25}{2} - 2\sqrt2 = \text{12,5} - 2\sqrt2 .$$

**On compare.**

Comme $\sqrt 2 \approx \text{1,414}$, on a $2\sqrt 2 \approx \text{2,83}$, donc la seconde somme vaut
environ $\text{9,67}$. En tout cas les deux valeurs sont différentes : si elles étaient égales, on
aurait $2\sqrt2 = 4$, donc $\sqrt2 = 2$, ce qui est faux.

**Conclusion.** La somme des carrés est un invariant de l'opération et elle ne prend pas la même
valeur sur les deux listes : il est donc **impossible** de passer de la première à la seconde.

## Going further

D'où sort cet invariant ? L'opération

$$(x, y) \longmapsto \left(\frac{x+y}{\sqrt2}, \; \frac{x-y}{\sqrt2}\right)$$

est une **rotation** du plan d'angle $-45°$ suivie d'une symétrie, autrement dit une
transformation qui conserve les distances. Il est donc normal qu'elle conserve
$x^2 + y^2$, qui est le carré de la distance à l'origine.

C'est une remarque utile : quand une opération ressemble à une transformation géométrique
connue, l'invariant se devine.
