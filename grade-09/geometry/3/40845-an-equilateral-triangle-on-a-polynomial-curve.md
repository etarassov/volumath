---
id: "40845"
title: "Un triangle équilatéral sur la courbe d'un polynôme"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [triangle-equilateral, coordonnees, polynome, courbe-representative, degre, alignement]
adapted_from: null
see_also: ["40846", "40847", "40848"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2023, mathématiques"
  reference: "cg-2023-s-sujet.pdf, exercice 3 « Polynômes et polygones réguliers », préambule et partie A « Triangles équilatéraux », questions 1 et 2"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2023-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé d'origine $O$.

Pour tout entier $d \geqslant 0$, une fonction $P$ est un *polynôme de degré $d$* s'il existe des réels $a_0, a_1, \ldots, a_d$, avec $a_d \neq 0$, tels que

$$P(x) = a_d x^d + a_{d-1} x^{d-1} + \cdots + a_2 x^2 + a_1 x + a_0$$

pour tout réel $x$. On note $\mathcal{C}_P$ la courbe représentative de $P$.

On dit que trois points $A$, $B$, $C$ sont les sommets d'un *triangle équilatéral de centre $O$* s'ils sont distincts, si $AB = BC = CA$, et si $OA = OB = OC$.

1. Soit $P$ un polynôme de degré $1$. Existe-t-il un triangle équilatéral dont les trois sommets appartiennent à $\mathcal{C}_P$ ?
2. On considère les points
$$A\left(1, \frac{\sqrt{3}}{3}\right), \qquad B\left(-1, \frac{\sqrt{3}}{3}\right), \qquad C\left(0, -\frac{2\sqrt{3}}{3}\right).$$

   a) Démontrer que $A$, $B$ et $C$ sont les sommets d'un triangle équilatéral de centre $O$.

   b) Démontrer que $A$, $B$ et $C$ appartiennent à la courbe représentative du polynôme
$$Q : x \mapsto \frac{\sqrt{3}}{3}(3x^2 - 2).$$

   c) Démontrer que $A$, $B$ et $C$ appartiennent à la courbe représentative du polynôme
$$R : x \mapsto \frac{\sqrt{3}}{3}(3x^2 - 2) + x(x^2 - 1).$$

   d) Démontrer que, pour tout entier $d \geqslant 2$, il existe un polynôme de degré $d$ dont la courbe représentative contient les points $A$, $B$ et $C$.

## Hints

1. **Question 1.** Quelle est la courbe représentative d'un polynôme de degré $1$ ?
2. **Question 1.** Si trois points sont alignés, l'un est entre les deux autres. Que dire alors des longueurs ?
3. **Question 2 d).** Pour passer de $Q$ à $R$, on a ajouté $x(x^2 - 1)$. Quelle propriété de ce polynôme fait que les points restent sur la courbe ?
4. **Question 2 d).** Chercher un polynôme de degré $d$ qui s'annule en $-1$, en $0$ et en $1$.

## Solution

**1.** Si $P(x) = ax + b$ avec $a \neq 0$, sa courbe est une droite. Trois points de cette droite sont alignés : l'un d'eux, disons $B$, est entre les deux autres, et alors $AC = AB + BC$. Si le triangle était équilatéral de côté $c > 0$, on aurait $c = c + c = 2c$, donc $c = 0$, ce qui est impossible car les sommets sont distincts.

**Réponse :** non, aucun triangle équilatéral n'a ses trois sommets sur la courbe d'un polynôme de degré $1$.

**2. a)** On calcule les carrés des distances avec le théorème de Pythagore : pour deux points $M(x, y)$ et $N(x', y')$, on a $MN^2 = (x' - x)^2 + (y' - y)^2$.

- $AB^2 = (1 - (-1))^2 + 0^2 = 4$.
- $AC^2 = (1 - 0)^2 + \left(\frac{\sqrt{3}}{3} + \frac{2\sqrt{3}}{3}\right)^2 = 1 + (\sqrt{3})^2 = 4$, et de même $BC^2 = 1 + 3 = 4$.
- $OA^2 = 1 + \frac{3}{9} = \frac{4}{3}$, $OB^2 = \frac{4}{3}$ et $OC^2 = \frac{4 \times 3}{9} = \frac{4}{3}$.

Les trois points sont distincts, $AB = BC = CA = 2$ et $OA = OB = OC$ : c'est un triangle équilatéral de centre $O$.

**b)** $Q(1) = \frac{\sqrt{3}}{3}(3 - 2) = \frac{\sqrt{3}}{3}$, $Q(-1) = \frac{\sqrt{3}}{3}$ et $Q(0) = \frac{\sqrt{3}}{3} \times (-2) = -\frac{2\sqrt{3}}{3}$. Ce sont les ordonnées de $A$, $B$ et $C$, donc les trois points sont sur la courbe de $Q$.

**c)** On a $R(x) = Q(x) + x(x^2 - 1)$, et $x(x^2 - 1) = x(x - 1)(x + 1)$ vaut $0$ pour $x = -1$, $0$ et $1$. Donc $R(1) = Q(1)$, $R(-1) = Q(-1)$ et $R(0) = Q(0)$, et les trois points sont aussi sur la courbe de $R$.

**d)** Pour $d = 2$, le polynôme $Q(x) = \sqrt{3}\,x^2 - \frac{2\sqrt{3}}{3}$ est de degré $2$ et convient.

Pour $d \geqslant 3$, posons
$$S_d(x) = Q(x) + x^{d-2}(x^2 - 1) = x^d - x^{d-2} + \sqrt{3}\,x^2 - \frac{2\sqrt{3}}{3}.$$
Comme $d > 2$, le terme de plus haut degré est $x^d$, donc $S_d$ est de degré $d$. Le polynôme $x^{d-2}(x^2 - 1)$ s'annule en $1$ et en $-1$ (à cause de $x^2 - 1$) et en $0$ (car $d - 2 \geqslant 1$). Donc $S_d$ prend les mêmes valeurs que $Q$ en $-1$, $0$ et $1$, et sa courbe contient $A$, $B$ et $C$.

**Bilan.** Aucun triangle équilatéral n'a ses sommets sur une droite. En revanche, on a trouvé un triangle équilatéral de centre $O$ dont les sommets sont sur une parabole, et même, pour chaque degré $d \geqslant 2$, sur la courbe d'un polynôme de degré $d$ : il suffit d'ajouter un polynôme qui s'annule aux trois abscisses.

## Going further

- Peut-on trouver un carré de centre $O$ dont les quatre sommets sont sur une parabole ? C'était la question suivante du sujet (exercice 40846) : la réponse est non, il faut un polynôme de degré au moins $3$.
- La fin du sujet (exercices 40847 et 40848) montrait que, pour un polygone régulier à $k$ sommets de centre $O$ dont les sommets ont des abscisses deux à deux distinctes, le plus petit degré d'un polynôme dont la courbe passe par tous les sommets est exactement $k - 1$.
