---
id: "7245"
title: "La plus petite valeur de x + y + z"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalites, optimisation, systeme, cas d'egalite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2021"
  reference: "Polycopie-mini.pdf, groupe A, « Algèbre : calcul », exercice 5. En 2024 (Poly_StCheron_2024.pdf, groupe A, « Calculus », exercice 8) le même énoncé demande par erreur la valeur maximale, alors que la solution imprimée calcule bien le minimum."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Polycopie-mini.pdf"
---

## Statement

Les nombres réels $x$, $y$ et $z$ vérifient les trois inégalités
$$x + y + 3z \geqslant 13, \qquad x + 2y \geqslant 4, \qquad x \geqslant 1 .$$

Quelle est la plus petite valeur possible de $x + y + z$ ?

## Hints

1. Pour montrer qu'une quantité est toujours supérieure à un certain nombre, on peut essayer
   d'additionner les inégalités de l'énoncé.
2. Additionne les trois inégalités telles quelles. Que trouves-tu à gauche ?
3. Trouver une borne ne suffit pas : il faut aussi montrer qu'elle est atteinte. Cherche des
   valeurs de $x$, $y$, $z$ pour lesquelles les trois inégalités sont des égalités.

## Solution

**Une minoration.**

Additionnons membre à membre les trois inégalités :
$$(x + y + 3z) + (x + 2y) + x \geqslant 13 + 4 + 1 .$$

À gauche :
$$x + y + 3z + x + 2y + x = 3x + 3y + 3z = 3(x+y+z) .$$

À droite : $13 + 4 + 1 = 18$. Donc
$$3(x+y+z) \geqslant 18, \qquad \text{c'est-à-dire} \qquad x + y + z \geqslant 6 .$$

**Cette valeur est atteinte.**

Il reste à trouver un triplet pour lequel $x+y+z$ vaut exactement $6$. L'addition ci-dessus donne
une égalité exactement lorsque les trois inégalités de départ sont elles-mêmes des égalités.
Résolvons donc le système
$$x + y + 3z = 13, \qquad x + 2y = 4, \qquad x = 1 .$$

De la troisième équation, $x = 1$. En reportant dans la deuxième : $1 + 2y = 4$, donc
$y = \dfrac{3}{2}$. En reportant dans la première :
$$1 + \frac{3}{2} + 3z = 13, \qquad 3z = 13 - \frac{5}{2} = \frac{21}{2}, \qquad
z = \frac{7}{2} .$$

Vérifions : $x = 1$, $y = \text{1,5}$, $z = \text{3,5}$ vérifient bien les trois inégalités (à
égalité), et
$$x + y + z = 1 + \text{1,5} + \text{3,5} = 6 .$$

**Conclusion.**

**La plus petite valeur possible de $x + y + z$ est $\boxed{6}$.**

## Going further

Une réponse d'optimisation comporte toujours deux moitiés :

- une **minoration** : ici, $x+y+z \geqslant 6$ pour tous les triplets autorisés ;
- un **exemple** qui atteint cette borne.

Sans le second, on ne saurait pas si $6$ est vraiment le minimum ou seulement une borne trop
généreuse.

Notons qu'il n'y a en revanche **pas** de valeur maximale : en prenant $x = 1$, $y = 2$ et $z$
aussi grand qu'on veut, les trois inégalités restent vraies et $x+y+z$ devient arbitrairement
grand.
