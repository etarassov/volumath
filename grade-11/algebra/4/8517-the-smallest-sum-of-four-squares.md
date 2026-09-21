---
id: "8517"
title: "Le plus petit a² + b² + c² + d² possible"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, minimum, somme-de-carres, contrainte-lineaire]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Inégalités 1 » (Auguste), exercice 5"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres réels vérifiant

$$a + 2b + 3c + 4d = 12 .$$

Quelle est la plus petite valeur possible de $a^2 + b^2 + c^2 + d^2$ ?

## Hints

1. Commence par chercher, à la main, un quadruplet qui donne une petite valeur. Essaie par exemple $(a,b,c,d) = (12, 0, 0, 0)$, puis $(0,0,0,3)$, puis quelque chose de plus équilibré.
2. Les coefficients de la contrainte sont $1, 2, 3, 4$. Il est raisonnable de deviner que l'optimum est atteint pour $(a, b, c, d)$ proportionnel à $(1, 2, 3, 4)$, c'est-à-dire $(t, 2t, 3t, 4t)$. Trouve la valeur de $t$ qui vérifie la contrainte, et la valeur de la somme des carrés correspondante.
3. Pour démontrer que c'est bien le minimum, il suffit de vérifier que la quantité $(a - t)^2 + (b - 2t)^2 + (c - 3t)^2 + (d - 4t)^2$, qui est positive, redonne exactement l'inégalité voulue quand on la développe.

## Solution

**On devine le candidat.** Cherchons $(a, b, c, d)$ proportionnel à $(1, 2, 3, 4)$, disons
$(t, 2t, 3t, 4t)$. La contrainte s'écrit

$$t + 4t + 9t + 16t = 30t = 12, \qquad \text{donc} \qquad t = \frac{2}{5} .$$

Pour ce quadruplet, la somme des carrés vaut

$$t^2 (1 + 4 + 9 + 16) = 30 t^2 = 30 \times \frac{4}{25} = \frac{24}{5} .$$

La valeur $\dfrac{24}{5}$ est donc atteinte. Montrons qu'on ne peut pas faire mieux.

**La démonstration.** Posons $t = \dfrac{2}{5}$ et $S = a^2 + b^2 + c^2 + d^2$. La quantité

$$(a - t)^2 + (b - 2t)^2 + (c - 3t)^2 + (d - 4t)^2$$

est une somme de carrés, donc positive ou nulle. Développons-la :

$$S - 2t\,(a + 2b + 3c + 4d) + t^2(1 + 4 + 9 + 16) = S - 2t \times 12 + 30\,t^2 .$$

Avec $t = \dfrac{2}{5}$ :

$$S - \frac{48}{5} + 30 \times \frac{4}{25} = S - \frac{48}{5} + \frac{24}{5}
= S - \frac{24}{5} .$$

Cette quantité étant positive ou nulle,

$$S \geqslant \frac{24}{5} .$$

**Conclusion.** La plus petite valeur possible de $a^2 + b^2 + c^2 + d^2$ est
$\dfrac{24}{5}$, atteinte pour

$$(a, b, c, d) = \left(\frac{2}{5},\ \frac{4}{5},\ \frac{6}{5},\ \frac{8}{5}\right) .$$

**Vérification.** La contrainte : $\frac{2}{5} + \frac{8}{5} + \frac{18}{5} + \frac{32}{5}
= \frac{60}{5} = 12$. La somme des carrés :
$\frac{4 + 16 + 36 + 64}{25} = \frac{120}{25} = \frac{24}{5}$.

## Going further

Le nombre $t$ n'est pas tombé du ciel : la somme de carrés qu'on a écrite est nulle
exactement pour $(a,b,c,d) = (t, 2t, 3t, 4t)$, et on a choisi $t$ pour que ce quadruplet
vérifie la contrainte. C'est la méthode générale : on devine où se trouve l'optimum, puis on
construit la somme de carrés qui s'annule précisément là.
