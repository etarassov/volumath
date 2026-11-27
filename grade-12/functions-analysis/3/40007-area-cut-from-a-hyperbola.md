---
id: "40007"
title: "L'aire d'un morceau d'hyperbole et un triangle qui s'y loge à moitié"
grade: 12
theme: functions-analysis
difficulty: 3
duration_min: 50
tags: [aire, integrale, logarithme, hyperbole, rotation, changement-de-variable, limite, triangle]
adapted_from: null
see_also: ["40001", "40002", "40003", "40004", "40005", "40006", "40008", "40009", "40010"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2002, mathématiques, série S"
  reference: "cg-2002-s-sujet.pdf, problème unique (triangles pseudo-rectangles), troisième partie, questions 1 et 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2002.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2002-s-sujet.pdf"
---

## Statement

Le plan est rapporté à un repère orthonormé. Soit $\mathcal{H}$ la courbe définie par $x \geqslant 1$
et $y = \sqrt{x^2 - 1}$. Soit $A$ un point de $\mathcal{H}$, de coordonnées $(r, s)$, avec $r > 1$.
On note $\mathcal{A}$ l'aire de la partie du plan définie par
$$1 \leqslant x \leqslant r \quad \text{et} \quad y^2 \leqslant x^2 - 1 .$$

1. Calculer $\mathcal{A}$ en fonction de $r$ et de $s$. On pourra effectuer une rotation du repère
   d'angle $-\frac{\pi}{4}$, c'est-à-dire utiliser les coordonnées $X = \frac{x - y}{\sqrt{2}}$ et
   $Y = \frac{x + y}{\sqrt{2}}$, et admettre qu'un tel changement de repère conserve les aires.

2. Dans un triangle, on dit que l'angle en $A$ est *pseudo-droit*, ou que le triangle $ABC$ est
   *pseudo-rectangle en $A$*, si la différence des angles en $B$ et en $C$ vaut $\frac{\pi}{2}$ en
   valeur absolue. On admet que $ABC$ est pseudo-rectangle en $A$ si et seulement si le pied $P$ de
   la hauteur issue de $A$ est en dehors du segment $[BC]$ et $PA^2 = PB \times PC$.

   Soient $B(1, 0)$ et $C(-1, 0)$, et $A$ un point de coordonnées $(x, y)$, avec $x \geqslant 0$ et
   $y \geqslant 0$, tel que le triangle $ABC$ soit pseudo-rectangle en $A$. On note $S$ l'aire du
   triangle $ABC$, et $S'$ l'aire de la partie du triangle (intérieur compris) formée des points
   dont les coordonnées $(X, Y)$ vérifient $Y^2 \leqslant X^2 - 1$.

   Étudier la limite éventuelle du rapport $\frac{S'}{S}$ lorsque $x$ tend vers $+\infty$.

## Hints

1. **Question 1.** Dans les nouvelles coordonnées, que devient l'équation $x^2 - y^2 = 1$ ? Et la
   droite $x = r$ ?
2. **Question 1.** Les deux extrémités de la partie sont $A(r, s)$ et $A'(r, -s)$. Calculer leurs
   nouvelles coordonnées et utiliser $(r - s)(r + s) = r^2 - s^2 = 1$.
3. **Question 1.** Dans le nouveau repère, la partie est comprise entre la courbe $Y = \frac{1}{2X}$
   et une droite : son aire est une intégrale.
4. **Question 2.** Commencer par trouver où est $A$ : il est sur $\mathcal{H}$.
5. **Question 2.** Faire une figure. Les points du triangle qui vérifient $Y^2 \leqslant X^2 - 1$ sont
   entre le segment $[BA]$ et l'arc de $\mathcal{H}$ qui va de $B$ à $A$. Exprimer $S'$ à l'aide de
   $\mathcal{A}$.
6. **Question 2.** Pour la limite, comparer $\ln(r + s)$ et $s$ quand $r$ est grand.

## Solution

**1.** *Le nouveau repère.* On a $x = \frac{X + Y}{\sqrt{2}}$ et $y = \frac{Y - X}{\sqrt{2}}$, donc
$$x^2 - y^2 = (x - y)(x + y) = 2XY .$$
Les points de la partie vérifient $x \geqslant 1$ et $x^2 - y^2 \geqslant 1$, c'est-à-dire
$x + y > 0$ et $XY \geqslant \frac{1}{2}$, donc $X > 0$ et $Y \geqslant \frac{1}{2X}$. La condition
$x \leqslant r$ s'écrit $X + Y \leqslant r\sqrt{2}$. La partie est donc
$$\left\{ (X, Y) : X > 0,\ \frac{1}{2X} \leqslant Y \leqslant r\sqrt{2} - X \right\}.$$

*Les bornes.* La droite $X + Y = r\sqrt{2}$ coupe la courbe $XY = \frac{1}{2}$ aux images de
$A(r, s)$ et $A'(r, -s)$, dont les abscisses $X$ sont
$$X_A = \frac{r - s}{\sqrt{2}}, \qquad X_{A'} = \frac{r + s}{\sqrt{2}} .$$
Posons $\lambda = \frac{r + s}{\sqrt{2}}$. Comme $(r - s)(r + s) = 1$, on a $X_A = \frac{1}{2\lambda}$.

*Le calcul.*
$$\mathcal{A} = \int_{1/(2\lambda)}^{\lambda} \left( r\sqrt{2} - X - \frac{1}{2X} \right) dX .$$
La première partie, $\int_{1/(2\lambda)}^{\lambda} (r\sqrt{2} - X)\, dX$, est l'aire d'un trapèze de
largeur $\lambda - \frac{1}{2\lambda} = \frac{(r + s) - (r - s)}{\sqrt{2}} = s\sqrt{2}$ et de côtés
parallèles $r\sqrt{2} - \frac{1}{2\lambda} = \lambda$ et $r\sqrt{2} - \lambda = \frac{1}{2\lambda}$,
dont la somme vaut $\frac{2r}{\sqrt{2}} = r\sqrt{2}$. Elle vaut donc
$\frac{1}{2} \times s\sqrt{2} \times r\sqrt{2} = rs$. La seconde partie vaut
$$\int_{1/(2\lambda)}^{\lambda} \frac{dX}{2X} = \frac{1}{2}\left( \ln\lambda - \ln\frac{1}{2\lambda} \right) = \frac{1}{2}\ln(2\lambda^2) = \frac{1}{2}\ln\left((r + s)^2\right) = \ln(r + s).$$

**Conclusion :** $\mathcal{A} = rs - \ln(r + s)$.

*Vérification.* Comme $s = \sqrt{r^2 - 1}$, on peut poser
$F(r) = r\sqrt{r^2 - 1} - \ln\left(r + \sqrt{r^2 - 1}\right)$ et dériver : on trouve
$F'(r) = 2\sqrt{r^2 - 1}$, qui est bien la hauteur de la partie à l'abscisse $r$, et $F(1) = 0$.

**2.** *Où est $A$ ?* Le pied de la hauteur issue de $A$ est $P(x, 0)$. Il est en dehors de $[BC]$ si
et seulement si $x > 1$ (car $x \geqslant 0$). Alors $PA^2 = y^2$ et
$PB \times PC = (x - 1)(x + 1) = x^2 - 1$. Le triangle est donc pseudo-rectangle en $A$ si et seulement
si $x > 1$ et $y = \sqrt{x^2 - 1}$ : le point $A$ est sur $\mathcal{H}$. On note $r = x$ et $s = y$,
comme dans la question 1.

*L'aire $S$.* La base $[BC]$ mesure $2$ et la hauteur $s$, donc $S = s$.

*L'aire $S'$.* Un point $(X, Y)$ du triangle vérifie $Y \geqslant 0$ et $X \geqslant -1$. Si
$-1 < X < 1$, alors $X^2 - 1 < 0 \leqslant Y^2$ : le point n'est pas compté, et seul $C$ a
$X = -1$. Les points comptés ont donc $1 \leqslant X \leqslant r$ et
$0 \leqslant Y \leqslant \sqrt{X^2 - 1}$, c'est-à-dire qu'ils sont sous l'arc de $\mathcal{H}$.

Vérifions que l'arc de $\mathcal{H}$ entre $B$ et $A$ est dans le triangle, entre les droites $(BA)$
et $(CA)$. Pour $1 \leqslant X \leqslant r$, la droite $(BA)$ est à la hauteur
$\frac{s}{r - 1}(X - 1) = \sqrt{\frac{r + 1}{r - 1}}\,(X - 1)$, et
$$\sqrt{X^2 - 1} \geqslant \sqrt{\frac{r + 1}{r - 1}}\,(X - 1) \iff \frac{X + 1}{X - 1} \geqslant \frac{r + 1}{r - 1} \iff 1 + \frac{2}{X - 1} \geqslant 1 + \frac{2}{r - 1},$$
ce qui est vrai car $X \leqslant r$ (pour $X = 1$, les deux hauteurs sont nulles). De même la droite
$(CA)$ est à la hauteur $\sqrt{\frac{r - 1}{r + 1}}\,(X + 1)$, et l'inégalité
$\sqrt{X^2 - 1} \leqslant \sqrt{\frac{r - 1}{r + 1}}\,(X + 1)$ équivaut à
$\frac{X - 1}{X + 1} \leqslant \frac{r - 1}{r + 1}$, vraie car la fonction $X \mapsto 1 - \frac{2}{X + 1}$
est croissante.

Donc $S'$ est l'aire comprise entre le segment $[BA]$ et l'arc de $\mathcal{H}$ : c'est l'aire sous
l'arc, qui vaut $\frac{\mathcal{A}}{2}$ (la partie de la question 1 est symétrique par rapport à l'axe
des abscisses), moins l'aire du triangle de sommets $B$, $(r, 0)$ et $A$, qui vaut
$\frac{(r - 1)s}{2}$ :
$$S' = \frac{rs - \ln(r + s)}{2} - \frac{(r - 1)s}{2} = \frac{s - \ln(r + s)}{2}.$$

*La limite.*
$$\frac{S'}{S} = \frac{1}{2} - \frac{\ln(r + s)}{2s}.$$
Quand $x = r$ tend vers $+\infty$, $s = \sqrt{r^2 - 1}$ aussi. Pour $r \geqslant 2$, on a $s \leqslant r$,
et $s^2 = r^2 - 1 \geqslant \frac{r^2}{4}$, donc $s \geqslant \frac{r}{2}$. Ainsi
$$0 \leqslant \frac{\ln(r + s)}{s} \leqslant \frac{\ln(2r)}{r/2} = 4 \times \frac{\ln(2r)}{2r},$$
qui tend vers $0$ par croissance comparée ($\frac{\ln u}{u} \to 0$ quand $u \to +\infty$). Par le
théorème des gendarmes, $\frac{\ln(r + s)}{s}$ tend vers $0$.

**Conclusion :** $\frac{S'}{S}$ tend vers $\frac{1}{2}$ quand $x$ tend vers $+\infty$.

**Bilan.** L'aire comprise entre l'hyperbole $x^2 - y^2 = 1$ et la corde verticale d'abscisse $r$
vaut $rs - \ln(r + s)$ : le logarithme apparaît parce que, dans un repère tourné, l'hyperbole devient
la courbe de la fonction inverse. Les sommets $A$ des triangles pseudo-rectangles de base $[BC]$
décrivent cette hyperbole, et quand $A$ s'éloigne, la partie du triangle située sous l'hyperbole
occupe à peu près la moitié de son aire.

## Going further

- Vérifier par le calcul la dérivée $F'(r) = 2\sqrt{r^2 - 1}$ annoncée dans la vérification.
- Le sujet proposait de retrouver $\mathcal{A}$ par une méthode due à Fermat, avec des trapèzes dont
  les sommets suivent une progression géométrique : voir l'exercice 40008.
