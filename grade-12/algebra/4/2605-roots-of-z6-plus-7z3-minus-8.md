---
id: "2605"
title: "Les six racines et le triangle qui les contient"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [nombres-complexes, racine-cubique, changement-de-variable, aire, enveloppe-convexe]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School II Circle, Roots of Unity (Prof. Kent Merryfield, CSULB)"
  reference: "Handout-555-674.pdf, problem set 1, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-555-674.pdf"
---

## Statement

1. Résoudre dans $\mathbb{C}$ l'équation
$$z^6 + 7z^3 - 8 = 0.$$
2. Placer les six solutions dans le plan complexe. Quel est le plus petit polygone convexe qui les contient toutes ? Calculer son aire.

## Hints

1. Il n'y a que des puissances $z^6$ et $z^3$. Pose $w = z^3$ : que devient l'équation ?
2. Tu obtiens deux valeurs possibles pour $w$. Pour chacune, il faut trouver les trois nombres complexes dont le cube vaut $w$. Écris $w$ sous forme exponentielle.
3. Les trois racines cubiques d'un nombre complexe forment toujours un triangle équilatéral centré en $0$.
4. Place les six points sur un dessin soigné. Tu devrais voir que trois d'entre eux sont des sommets, et que les trois autres ne dépassent pas.
5. Pour l'aire d'un triangle équilatéral de côté $c$ : $\dfrac{c^2\sqrt{3}}{4}$.

## Solution

**1. Résolution de l'équation.**

Posons $w = z^3$. L'équation devient
$$w^2 + 7w - 8 = 0.$$

Son discriminant vaut $\Delta = 49 + 32 = 81 = 9^2$, d'où
$$w = \frac{-7 - 9}{2} = -8 \qquad \text{ou} \qquad w = \frac{-7 + 9}{2} = 1.$$

*(On pouvait aussi remarquer directement que $w^2 + 7w - 8 = (w-1)(w+8)$.)*

**Cas $z^3 = 1$.** Les trois racines cubiques de $1$ sont
$$1, \qquad j = e^{2i\pi/3} = -\frac{1}{2} + i\frac{\sqrt{3}}{2}, \qquad \overline{j} = e^{-2i\pi/3} = -\frac{1}{2} - i\frac{\sqrt{3}}{2}.$$

**Cas $z^3 = -8$.** On écrit $-8 = 8\,e^{i\pi}$. Les racines cubiques sont les $2\,e^{i(\pi + 2k\pi)/3}$ pour $k = 0, 1, 2$ :
$$2e^{i\pi/3} = 1 + i\sqrt{3}, \qquad 2e^{i\pi} = -2, \qquad 2e^{5i\pi/3} = 1 - i\sqrt{3}.$$

**Les six solutions sont donc**
$$1, \quad -\tfrac{1}{2} + i\tfrac{\sqrt{3}}{2}, \quad -\tfrac{1}{2} - i\tfrac{\sqrt{3}}{2}, \quad -2, \quad 1 + i\sqrt{3}, \quad 1 - i\sqrt{3}.$$

*(Vérification : $(1+i\sqrt3)^3 = \left(2e^{i\pi/3}\right)^3 = 8e^{i\pi} = -8$, et $(-8)^2 + 7(-8) - 8 = 64 - 56 - 8 = 0$.)*

**2. Le plus petit polygone convexe.**

Notons les points par leurs coordonnées :
$$A(-2\,;\,0), \quad B(1\,;\,\sqrt{3}), \quad C(1\,;\,-\sqrt{3}), \quad P(1\,;\,0), \quad R\left(-\tfrac12\,;\,\tfrac{\sqrt3}{2}\right), \quad S\left(-\tfrac12\,;\,-\tfrac{\sqrt3}{2}\right).$$

**Le triangle $ABC$ est équilatéral.** En effet
$$AB = \sqrt{(1+2)^2 + (\sqrt3)^2} = \sqrt{9 + 3} = \sqrt{12} = 2\sqrt{3},$$
$$AC = 2\sqrt3 \text{ (par symétrie par rapport à l'axe des abscisses)}, \qquad BC = 2\sqrt{3}.$$

**Les trois autres points sont dans le triangle $ABC$.**

- $R$ est **sur le segment $[AB]$** : le milieu de $[AB]$ a pour coordonnées $\left(\dfrac{-2+1}{2}\,;\,\dfrac{0+\sqrt3}{2}\right) = \left(-\dfrac12\,;\,\dfrac{\sqrt3}{2}\right)$, c'est exactement $R$.
- De même $S$ est le milieu de $[AC]$.
- $P(1\,;\,0)$ est le milieu de $[BC]$.

Donc les six points sont tous dans le triangle $ABC$, et $A$, $B$, $C$ en sont trois sommets : **le plus petit polygone convexe qui les contient est le triangle $ABC$.**

**Son aire.** Pour un triangle équilatéral de côté $c$, l'aire vaut $\dfrac{c^2\sqrt3}{4}$. Ici $c = 2\sqrt3$, donc $c^2 = 12$ et
$$\text{aire} = \frac{12\sqrt{3}}{4} = 3\sqrt{3}.$$

*(Autre calcul : base $BC = 2\sqrt3$, hauteur issue de $A$ égale à $1 - (-2) = 3$, donc aire $= \tfrac12 \times 2\sqrt3 \times 3 = 3\sqrt3$.)*

**L'aire cherchée vaut $3\sqrt{3} \approx \text{5,20}$.**

## Going further

Que les trois racines cubiques de $1$ tombent exactement aux milieux des côtés du triangle des racines cubiques de $-8$ n'est pas un hasard : multiplier par $-2$ transforme le premier triangle en le second, c'est-à-dire lui fait faire un demi-tour tout en le doublant de taille. Le triangle des milieux d'un triangle est justement son image par une telle transformation.
