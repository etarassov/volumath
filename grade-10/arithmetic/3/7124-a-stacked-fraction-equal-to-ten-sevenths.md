---
id: "7124"
title: "Une fraction en étage qui vaut 10/7"
grade: 10
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [fractions, entiers, encadrement, fraction continue]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2013"
  reference: "stage_junior_2013.pdf, « Exercices d'échauffement », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2013.pdf"
---

## Statement

Trouver tous les triplets $(x, y, z)$ d'entiers strictement positifs tels que

$$x + \frac{1}{y + \frac{1}{z}} = \frac{10}{7} .$$

## Hints

1. Commence par encadrer la quantité $y + \dfrac{1}{z}$, sachant que $y$ et $z$ sont des
   entiers au moins égaux à $1$.
2. Déduis-en un encadrement de $\dfrac{1}{y + \frac{1}{z}}$. Entre quelles valeurs se
   trouve-t-il ?
3. Comme $x$ est un entier, cet encadrement ne laisse qu'une seule possibilité pour $x$.
4. Recommence le même raisonnement un étage plus bas.

## Solution

**On détermine $x$.** Comme $y \geqslant 1$ et $z \geqslant 1$, on a $\dfrac{1}{z} > 0$,
donc

$$y + \frac{1}{z} > 1, \qquad \text{et donc} \qquad 0 < \frac{1}{y + \frac{1}{z}} < 1 .$$

L'égalité de l'énoncé donne alors

$$x < \frac{10}{7} < x + 1 .$$

Comme $\dfrac{10}{7}$ est compris strictement entre $1$ et $2$, le seul entier possible est

$$x = 1 .$$

**On descend d'un étage.** L'équation devient

$$\frac{1}{y + \frac{1}{z}} = \frac{10}{7} - 1 = \frac{3}{7},
\qquad \text{c'est-à-dire} \qquad y + \frac{1}{z} = \frac{7}{3} .$$

**On détermine $y$.** Comme $z \geqslant 1$, on a $0 < \dfrac{1}{z} \leqslant 1$, donc

$$y < \frac{7}{3} \leqslant y + 1 .$$

Or $\dfrac{7}{3}$ vaut $2{,}33\ldots$, donc $y = 2$. (On vérifie que $y = 1$ ne marche pas :
il faudrait $\dfrac1z = \dfrac{7}{3} - 1 = \dfrac43 > 1$, impossible.)

**On détermine $z$.** Il reste

$$\frac{1}{z} = \frac{7}{3} - 2 = \frac{1}{3}, \qquad \text{donc} \qquad z = 3 .$$

**Vérification.** Avec $(x, y, z) = (1, 2, 3)$ :

$$y + \frac{1}{z} = 2 + \frac13 = \frac73, \qquad
\frac{1}{7/3} = \frac37, \qquad
x + \frac37 = 1 + \frac37 = \frac{10}{7} . \ \checkmark$$

**Conclusion.** Il y a un unique triplet : $\boxed{(x, y, z) = (1, 2, 3)}$.

## Going further

L'écriture

$$\frac{10}{7} = 1 + \frac{1}{2 + \frac{1}{3}}$$

s'appelle le **développement en fraction continue** de $\frac{10}{7}$. La méthode qu'on vient
d'employer, prendre la partie entière puis recommencer avec l'inverse de ce qui reste, donne
ce développement pour n'importe quelle fraction, et le calcul s'arrête toujours.

Regarde de plus près : $10 = 1 \times 7 + 3$, puis $7 = 2 \times 3 + 1$, puis
$3 = 3 \times 1 + 0$. Les quotients $1$, $2$, $3$ qui apparaissent sont exactement ceux de
**l'algorithme d'Euclide** appliqué à $10$ et $7$. Ce n'est pas un hasard : les deux calculs
sont le même calcul.
