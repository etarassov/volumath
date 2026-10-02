---
id: "8538"
title: "x² + 8/(xy) + y² ≥ 8"
grade: 11
theme: algebra
difficulty: 4
duration_min: 35
tags: [inegalite, carre, cas-degalite, fractions]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2022, cours de Groupe A"
  reference: "Poly_Valbonne_2022-Corrigé-1.pdf, chapitre III, « Révisions » (Isaline) du Groupe A, exercice 15 (NZMO 2021)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/09/Poly_Valbonne_2022-Corrigé-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly_Valbonne_2022-Corrigé-1.pdf"
---

## Statement

Soient $x$ et $y$ deux nombres réels strictement positifs. Démontrer que

$$x^2 + \frac{8}{xy} + y^2 \geqslant 8 .$$

Étudier le cas d'égalité.

## Hints

1. Comme souvent, passe tout du même côté et cherche à écrire la différence comme une somme de quantités positives.
2. Le terme $x^2 + y^2$ appelle $(x - y)^2$. Que faut-il ajouter et retrancher pour le faire apparaître ?
3. Une fois $(x-y)^2$ mis de côté, il reste une expression qui ne dépend plus que du produit $xy$. Pose $t = xy$ et réduis au même dénominateur.
4. Le numérateur obtenu devrait être un carré parfait.

## Solution

**On passe tout du même côté.** Il s'agit de montrer que

$$x^2 + \frac{8}{xy} + y^2 - 8 \geqslant 0 .$$

**On fait apparaître $(x-y)^2$.** En ajoutant puis retranchant $2xy$ :

$$x^2 + y^2 = (x - y)^2 + 2xy .$$

Donc

$$x^2 + \frac{8}{xy} + y^2 - 8 = (x-y)^2 + 2xy + \frac{8}{xy} - 8 .$$

**Le reste ne dépend que de $xy$.** Posons $t = xy$, qui est strictement positif. Réduisons
au même dénominateur :

$$2t + \frac{8}{t} - 8 = \frac{2t^2 - 8t + 8}{t} = \frac{2\left(t^2 - 4t + 4\right)}{t}
= \frac{2\,(t-2)^2}{t} .$$

Comme $t > 0$ et $(t-2)^2 \geqslant 0$, cette quantité est positive ou nulle.

**Conclusion.** On obtient

$$x^2 + \frac{8}{xy} + y^2 - 8 = (x-y)^2 + \frac{2\,(xy - 2)^2}{xy} .$$

C'est une somme de deux quantités positives ou nulles, donc elle est positive ou nulle :
l'inégalité est démontrée.

**Le cas d'égalité.** Il faut que les deux termes soient nuls, c'est-à-dire

$$x = y \qquad \text{et} \qquad xy = 2 .$$

Donc $x^2 = 2$, et comme $x > 0$, $x = \sqrt{2}$, puis $y = \sqrt{2}$.

Réciproquement, pour $x = y = \sqrt{2}$ :

$$x^2 + \frac{8}{xy} + y^2 = 2 + \frac{8}{2} + 2 = 2 + 4 + 2 = 8 .$$

L'égalité a donc lieu exactement pour $x = y = \sqrt{2}$.
