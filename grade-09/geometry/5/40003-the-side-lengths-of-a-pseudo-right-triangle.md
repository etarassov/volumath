---
id: "40003"
title: "Les longueurs des côtés d'un triangle pseudo-rectangle"
grade: 9
theme: geometry
difficulty: 5
duration_min: 60
tags: [triangle, trigonometrie, pythagore, symetrie-axiale, construction, identites-remarquables, cercle-circonscrit]
adapted_from: null
see_also: ["40001", "40002", "40004", "40005", "40006", "40007", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), deuxième partie, question 1. Les angles sont donnés ici en degrés."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Dans un triangle $ABC$, on note $a = BC$, $b = CA$, $c = AB$ les longueurs des côtés et
$\widehat{A}$, $\widehat{B}$, $\widehat{C}$ les angles, en degrés. On dit que le triangle est
**pseudo-rectangle en $A$ et obtus en $B$** si
$$\widehat{B} - \widehat{C} = 90^\circ .$$
On note $P$ le projeté orthogonal de $A$ sur la droite $(BC)$, $D$ le symétrique de $C$ par rapport
à la droite $(AP)$, et $R$ le rayon du cercle circonscrit au triangle $ABC$.

On admet les résultats suivants.

- (R1) Le triangle $ABC$ est pseudo-rectangle en $A$ et obtus en $B$ si et seulement si l'angle
  $\widehat{B}$ est obtus et le triangle $ABD$ est rectangle en $A$.
- (R2) Si le triangle $ABC$ est pseudo-rectangle en $A$ et obtus en $B$, alors $PB + PC = 2R$.
- (R3) Pour tout angle $\theta$ compris entre $0^\circ$ et $45^\circ$,
  $\cos(2\theta) = \cos^2\theta - \sin^2\theta$.

1. Soient $a$, $b$, $c$ trois réels strictement positifs. Montrer que les trois conditions suivantes
   sont équivalentes.
   - [i] Il existe un triangle $ABC$ pseudo-rectangle en $A$ et obtus en $B$ tel que $BC = a$,
     $CA = b$ et $AB = c$.
   - [ii] $b^2 - c^2 = a\sqrt{b^2 + c^2}$.
   - [iii] Il existe deux réels $\rho$ et $\theta$, avec $\rho > 0$ et $0^\circ < \theta < 45^\circ$,
     tels que $a = \rho \cos(2\theta)$, $b = \rho\cos\theta$ et $c = \rho\sin\theta$.
2. On suppose ces conditions réalisées. Montrer que $\theta$ est l'un des angles du triangle $ABC$.
   Quelle est la signification géométrique de $\rho$ ?

## Hints

1. **Question 1, de [i] à [ii].** L'angle $\widehat{B}$ étant obtus, où se trouve $P$ sur la droite
   $(BC)$ ? Et où se trouve $D$ ?
2. **Question 1, de [i] à [ii].** Calculer $BD$ dans le triangle rectangle $ABD$, puis écrire
   $b^2 - c^2$ à l'aide de $PA$, $PB$, $PC$ et factoriser.
3. **Question 1, de [ii] à [i].** Il faut construire le triangle. Commencer par un triangle $ABD$
   rectangle en $A$ avec $AB = c$ et $AD = b$, puis placer $C$.
4. **Question 1, de [ii] à [i].** Dans ce triangle $ABD$, calculer $PB$ et $PD$, où $P$ est le pied de
   la hauteur issue de $A$ (utiliser le cosinus de l'angle en $B$, puis celui de l'angle en $D$).
5. **Question 1, de [ii] à [iii].** Si [iii] est vraie, que vaut $b^2 + c^2$ ? Cela dit qui doit être
   $\rho$.
6. **Question 2.** Comparer $\cos\theta$ avec le cosinus de l'angle $\widehat{ADB}$.

## Solution

**1.** *De [i] à [ii].* Soit $ABC$ un tel triangle. Le triangle $APB$ est rectangle en $P$, donc son
angle $\widehat{ABP}$ est aigu ; comme $\widehat{ABC}$ est obtus, $P$ n'est pas sur la demi-droite
$[BC)$ : il est de l'autre côté de $B$, et $B$ est entre $P$ et $C$. Le point $D$, symétrique de $C$
par rapport à $(AP)$, est sur $(BC)$, de l'autre côté de $P$, avec $PD = PC$ et $AD = AC = b$.

Par (R1), $ABD$ est rectangle en $A$, donc $BD = \sqrt{AB^2 + AD^2} = \sqrt{b^2 + c^2}$. Comme $P$
est entre $B$ et $D$, $BD = PB + PD = PB + PC$. Par le théorème de Pythagore dans les triangles
$APC$ et $APB$,
$$b^2 - c^2 = (PA^2 + PC^2) - (PA^2 + PB^2) = PC^2 - PB^2 = (PC - PB)(PC + PB).$$
Comme $B$ est entre $P$ et $C$, $PC - PB = BC = a$. Donc $b^2 - c^2 = a \times BD = a\sqrt{b^2 + c^2}$.

*De [ii] à [i].* Supposons $b^2 - c^2 = a\sqrt{b^2 + c^2}$ et notons $d = \sqrt{b^2 + c^2}$. Comme
$a > 0$, on a $b > c$.

Construisons un triangle $ABD$ rectangle en $A$ avec $AB = c$ et $AD = b$ ; alors $BD = d$. Soit
$P$ le pied de la hauteur issue de $A$. Les angles en $B$ et en $D$ sont aigus, donc $P$ est entre
$B$ et $D$, et
$$PB = AB\cos\widehat{ABD} = c \times \frac{c}{d} = \frac{c^2}{d}, \qquad PD = AD\cos\widehat{ADB} = \frac{b^2}{d}.$$
Soit $C$ le symétrique de $D$ par rapport à $(AP)$ : il est sur la droite $(BD)$, du côté de $B$,
avec $PC = PD = \frac{b^2}{d}$. Comme $b > c$, on a $PC > PB$ : le point $B$ est entre $P$ et $C$, et
$$BC = PC - PB = \frac{b^2 - c^2}{d} = a .$$
Par symétrie, $CA = DA = b$, et $AB = c$. Le point $A$ n'est pas sur la droite $(BC)$, donc $ABC$ est
un vrai triangle, de côtés $a$, $b$, $c$. Son angle en $B$ vaut $180^\circ - \widehat{ABP}$, où
$\widehat{ABP}$ est aigu : il est obtus. Enfin $P$ est bien le pied de la hauteur issue de $A$ dans
$ABC$, $D$ est bien le symétrique de $C$ par rapport à $(AP)$, et $ABD$ est rectangle en $A$. Par
(R1), $ABC$ est pseudo-rectangle en $A$ et obtus en $B$.

*De [ii] à [iii].* Posons $\rho = \sqrt{b^2 + c^2} > 0$. Dans un triangle rectangle de côtés de
l'angle droit $b$ et $c$, l'hypoténuse vaut $\rho$ ; notons $\theta$ l'angle opposé au côté $c$.
Alors $\cos\theta = \frac{b}{\rho}$ et $\sin\theta = \frac{c}{\rho}$, et $\tan\theta = \frac{c}{b} < 1$,
donc $0^\circ < \theta < 45^\circ$. Par (R3) et [ii],
$$\rho\cos(2\theta) = \rho\,(\cos^2\theta - \sin^2\theta) = \frac{b^2 - c^2}{\rho} = a .$$

*De [iii] à [ii].* Si $b = \rho\cos\theta$ et $c = \rho\sin\theta$, alors
$b^2 + c^2 = \rho^2(\cos^2\theta + \sin^2\theta) = \rho^2$, donc $\sqrt{b^2 + c^2} = \rho$. Et par (R3),
$$b^2 - c^2 = \rho^2\cos(2\theta) = \rho \times a = a\sqrt{b^2 + c^2}.$$

**Conclusion :** les trois conditions sont équivalentes.

**2.** Dans ce cas, $\rho = \sqrt{b^2 + c^2} = BD$ d'après la première étape. Dans le triangle $ABD$
rectangle en $A$, $\cos\widehat{ADB} = \frac{AD}{BD} = \frac{b}{\rho} = \cos\theta$, et deux angles
aigus qui ont le même cosinus sont égaux : $\widehat{ADB} = \theta$. Par la symétrie d'axe $(AP)$,
$\widehat{ACP} = \widehat{ADP} = \theta$, et comme $B$ est sur la demi-droite $[CP)$, cet angle est
$\widehat{ACB}$.

Enfin $\rho = BD = PB + PC = 2R$ par (R2).

**Conclusion :** $\theta = \widehat{C}$, et $\rho$ est le diamètre du cercle circonscrit au triangle
$ABC$.

**Bilan.** Un triangle pseudo-rectangle en $A$, obtus en $B$, est entièrement décrit par son
diamètre $\rho = 2R$ et son angle $\theta = \widehat{C}$, qui doit être inférieur à $45^\circ$ : ses
côtés sont $\rho\cos(2\theta)$, $\rho\cos\theta$ et $\rho\sin\theta$. Autrement dit, ce sont les
longueurs qui vérifient $b^2 - c^2 = a\sqrt{b^2 + c^2}$.

## Going further

- Montrer que les angles du triangle sont $\widehat{A} = 90^\circ - 2\theta$,
  $\widehat{B} = 90^\circ + \theta$ et $\widehat{C} = \theta$.
- Dans la suite du sujet, on cherchait les triangles pseudo-rectangles dont les trois côtés sont des
  nombres rationnels, puis entiers : voir les exercices 40004 et 40005. Le plus petit a pour côtés
  $a = 7$, $b = 20$, $c = 15$ : vérifier qu'il satisfait la condition [ii].
