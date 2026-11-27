---
id: "40162"
title: "Un arc d'hyperbole dans le carré unité : que valent x + y et x² + y² ?"
grade: 10
theme: algebra
difficulty: 4
duration_min: 50
tags: [hyperbole, fonction-inverse, inegalite, encadrement, identites-remarquables, disjonction-de-cas, minimum, maximum]
adapted_from: null
see_also: ["40163", "40164", "40165", "40166", "40167"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2006, mathématiques, série S"
  reference: "cg-2006-s-sujet.pdf, exercice 2, partie I, questions 1 à 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2006.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2006-s-sujet.pdf"
---

## Statement

Soit $a$ un nombre réel tel que $0 < a < 1$.

Dans le plan muni d'un repère orthonormé, on note $\mathcal{H}$ l'ensemble des points $M(x\,;\,y)$
tels que
$$(1 - x)(1 - y) = a ,$$
et $\mathcal{H}_1$ l'ensemble des points de $\mathcal{H}$ tels que $0 \leq x \leq 1$ et
$0 \leq y \leq 1$.

1. Quelle est la nature de $\mathcal{H}$ ? Représenter $\mathcal{H}$ et $\mathcal{H}_1$ (par
   exemple pour $a = \frac{1}{4}$).
2. Montrer que, quand le point $M(x\,;\,y)$ décrit $\mathcal{H}_1$, la somme $x + y$ décrit un
   intervalle que l'on précisera.
3. Déterminer l'ensemble des valeurs prises par $x^2 + y^2$ quand le point $M(x\,;\,y)$ décrit
   $\mathcal{H}_1$. On pourra montrer que, si $M(x\,;\,y)$ est un point de $\mathcal{H}$ et si
   $s = x + y$, alors
$$x^2 + y^2 = s^2 - 2s + 2 - 2a .$$

## Hints

1. **Question 1.** Poser $X = 1 - x$ et $Y = 1 - y$. Quelle courbe connue a pour équation
   $XY = a$ ?
2. **Question 2.** Avec $X = 1 - x$, montrer que les points de $\mathcal{H}_1$ correspondent
   exactement aux valeurs $X \in [a, 1]$, avec alors $1 - y = \frac{a}{X}$. Ensuite,
   $x + y = 2 - \left(X + \frac{a}{X}\right)$.
3. **Question 2.** Pour encadrer $X + \frac{a}{X}$ sur $[a, 1]$, étudier le signe de
   $X + \frac{a}{X} - 2\sqrt{a}$ (penser à une identité remarquable) et celui de
   $X + \frac{a}{X} - (1 + a)$ (réduire au même dénominateur et factoriser).
4. **Question 2.** Il reste à voir que toute valeur $c$ entre les deux bornes est atteinte :
   résoudre $X + \frac{a}{X} = c$, c'est-à-dire $\left(X - \frac{c}{2}\right)^2 = \frac{c^2}{4} - a$.
5. **Question 3.** Calculer $xy$ en fonction de $s$ en développant $(1 - x)(1 - y) = a$. Puis
   $x^2 + y^2 = (s - 1)^2 + 1 - 2a$.
6. **Question 3.** On cherche les valeurs de $(s - 1)^2$ quand $s - 1$ parcourt
   $[-a, 1 - 2\sqrt{a}]$. Selon que $1 - 2\sqrt{a}$ est positif ou non, cet intervalle contient
   $0$ ou non. Il faudra aussi comparer $a$ et $1 - 2\sqrt{a}$.

## Solution

**1.** Posons $X = 1 - x$ et $Y = 1 - y$, c'est-à-dire $x = 1 - X$ et $y = 1 - Y$. Le point
$M(x\,;\,y)$ est sur $\mathcal{H}$ si et seulement si $XY = a$, soit $X \neq 0$ et
$Y = \frac{a}{X}$.

De façon équivalente, $(x - 1)(y - 1) = a$ : le point $M(x\,;\,y)$ est sur $\mathcal{H}$ si et
seulement si le point $(x - 1\,;\,y - 1)$ est sur la courbe d'équation $y = \frac{a}{x}$. Donc
$\mathcal{H}$ est l'image de l'hyperbole d'équation $y = \frac{a}{x}$ par la translation de vecteur
$\vec{u}(1\,;\,1)$ : **c'est une hyperbole**, de centre $\Omega(1\,;\,1)$, dont les asymptotes
sont les droites d'équations $x = 1$ et $y = 1$. Elle a deux branches : l'une dans la région
$x > 1$, $y > 1$, l'autre dans la région $x < 1$, $y < 1$. Elle est symétrique par rapport à la
droite d'équation $y = x$ (l'équation ne change pas quand on échange $x$ et $y$).

Pour $x < 1$, la branche du bas est la courbe de la fonction $x \mapsto 1 - \frac{a}{1 - x}$, qui
est décroissante. Elle coupe l'axe des ordonnées en $(0\,;\,1 - a)$ et l'axe des abscisses en
$(1 - a\,;\,0)$. L'ensemble $\mathcal{H}_1$ est l'arc de cette branche qui va du point
$(0\,;\,1 - a)$ au point $(1 - a\,;\,0)$ : il « coupe le coin » du carré situé en $O$, en se
bombant vers le point $(1\,;\,1)$, au-dessus de la corde qui joint ses extrémités.

**2.** *Description de $\mathcal{H}_1$.* Soit $M(x\,;\,y)$ un point de $\mathcal{H}_1$, et
$X = 1 - x$, $Y = 1 - y$. Alors $X$ et $Y$ sont dans $[0, 1]$ et $XY = a > 0$, donc $X > 0$ et
$Y = \frac{a}{X}$. La condition $Y \leq 1$ s'écrit $a \leq X$. Donc $X \in [a, 1]$. Réciproquement,
pour tout $X \in [a, 1]$, le point de coordonnées $x = 1 - X$ et $y = 1 - \frac{a}{X}$ est sur
$\mathcal{H}$, et $x$, $y$ sont dans $[0, 1]$ car $X$ et $\frac{a}{X}$ sont dans $[a, 1]$. Ainsi
$$\mathcal{H}_1 = \left\{ \left(1 - X\,;\, 1 - \tfrac{a}{X}\right) : a \leq X \leq 1 \right\},
\qquad x + y = 2 - \left(X + \frac{a}{X}\right).$$

*Encadrement de $\varphi(X) = X + \frac{a}{X}$ pour $X \in [a, 1]$.*

- Minoration : $\varphi(X) - 2\sqrt{a} = \frac{X^2 - 2\sqrt{a}\,X + a}{X} = \frac{(X - \sqrt{a})^2}{X} \geq 0$,
  avec égalité pour $X = \sqrt{a}$, qui est bien dans $[a, 1]$ (car $a < \sqrt{a} < 1$).
- Majoration : $\varphi(X) - (1 + a) = \frac{X^2 - (1 + a)X + a}{X} = \frac{(X - a)(X - 1)}{X} \leq 0$
  pour $a \leq X \leq 1$, avec égalité pour $X = a$ et $X = 1$.

Donc $2\sqrt{a} \leq \varphi(X) \leq 1 + a$.

*Toutes les valeurs intermédiaires sont atteintes.* Soit $c \in [2\sqrt{a}, 1 + a]$. L'équation
$\varphi(X) = c$ s'écrit $X^2 - cX + a = 0$, soit $\left(X - \frac{c}{2}\right)^2 = \frac{c^2}{4} - a$,
et $\frac{c^2}{4} - a \geq 0$ car $c \geq 2\sqrt{a}$. Prenons
$X = \frac{c}{2} + \sqrt{\frac{c^2}{4} - a}$. On a $X \geq \frac{c}{2} \geq \sqrt{a} > a$. Et
$X \leq 1$ équivaut à $\sqrt{\frac{c^2}{4} - a} \leq 1 - \frac{c}{2}$ ; le membre de droite est
positif car $c \leq 1 + a < 2$, donc en élevant au carré, cela équivaut à
$\frac{c^2}{4} - a \leq 1 - c + \frac{c^2}{4}$, soit $c \leq 1 + a$ : c'est vrai. Ce $X$ convient.

**Conclusion :** quand $M$ décrit $\mathcal{H}_1$, la somme $x + y$ décrit l'intervalle
$$[\,1 - a,\ 2 - 2\sqrt{a}\,].$$
La valeur $1 - a$ est atteinte aux deux extrémités de l'arc, la valeur $2 - 2\sqrt{a}$ au point
$(1 - \sqrt{a}\,;\,1 - \sqrt{a})$, sur la droite $y = x$.

**3.** *La formule.* En développant $(1 - x)(1 - y) = a$, on obtient $1 - s + xy = a$, donc
$xy = s - 1 + a$. Alors
$$x^2 + y^2 = s^2 - 2xy = s^2 - 2s + 2 - 2a = (s - 1)^2 + 1 - 2a .$$

D'après la question 2, quand $M$ décrit $\mathcal{H}_1$, le nombre $t = s - 1$ décrit
l'intervalle $[-a, 1 - 2\sqrt{a}]$. Remarquons que $-a < 1 - 2\sqrt{a}$, car
$1 - 2\sqrt{a} + a = (1 - \sqrt{a})^2 > 0$. Il faut trouver l'ensemble des valeurs de $t^2$.

*Cas $a > \frac{1}{4}$.* Alors $\sqrt{a} > \frac{1}{2}$ et $1 - 2\sqrt{a} < 0$ : tout l'intervalle
est formé de nombres négatifs. Sur cet intervalle, $t^2$ diminue quand $t$ augmente, donc $t^2$
décrit $[(1 - 2\sqrt{a})^2, a^2]$. On obtient, avec
$(1 - 2\sqrt{a})^2 + 1 - 2a = 2 - 4\sqrt{a} + 2a = 2(1 - \sqrt{a})^2$ :
$$x^2 + y^2 \in \left[\,2(1 - \sqrt{a})^2,\ (1 - a)^2\,\right].$$

*Cas $a \leq \frac{1}{4}$.* Alors $1 - 2\sqrt{a} \geq 0$ et l'intervalle contient $0$. Le
minimum de $t^2$ est $0$, et son maximum est le plus grand des deux nombres $a^2$ et
$(1 - 2\sqrt{a})^2$ ; toutes les valeurs entre les deux sont prises. Comparons $a$ et
$1 - 2\sqrt{a}$ (tous deux positifs) :
$$a \geq 1 - 2\sqrt{a} \iff a + 2\sqrt{a} + 1 \geq 2 \iff (1 + \sqrt{a})^2 \geq 2 \iff \sqrt{a} \geq \sqrt{2} - 1 \iff a \geq 3 - 2\sqrt{2} .$$
(On a $3 - 2\sqrt{2} \approx \text{0,172}$.) D'où :

- si $0 < a \leq 3 - 2\sqrt{2}$ : $x^2 + y^2 \in \left[\,1 - 2a,\ 2(1 - \sqrt{a})^2\,\right]$ ;
- si $3 - 2\sqrt{2} \leq a \leq \frac{1}{4}$ : $x^2 + y^2 \in \left[\,1 - 2a,\ (1 - a)^2\,\right]$,
  car $a^2 + 1 - 2a = (1 - a)^2$.

Pour $a = \frac{1}{4}$, les deux formules donnent le même intervalle $\left[\frac{1}{2}, \frac{9}{16}\right]$,
et de même pour $a = 3 - 2\sqrt{2}$.

**Interprétation.** $x^2 + y^2 = OM^2$. Le point le plus proche de l'origine est le point
$(1 - \sqrt{a}\,;\,1 - \sqrt{a})$ de la droite $y = x$ quand $a \geq \frac{1}{4}$ ; quand
$a < \frac{1}{4}$, ce sont les points où $x + y = 1$. Le point le plus éloigné est l'une des
extrémités de l'arc, ou le point de la droite $y = x$.

**Bilan.** En posant $X = 1 - x$, l'arc $\mathcal{H}_1$ devient un morceau de la courbe de la
fonction inverse, et tout se ramène à encadrer $X + \frac{a}{X}$ sur $[a, 1]$. La somme $x + y$
décrit $[1 - a, 2 - 2\sqrt{a}]$, et $x^2 + y^2 = (x + y - 1)^2 + 1 - 2a$ ; l'ensemble de ses valeurs
dépend de la position de $a$ par rapport à $3 - 2\sqrt{2}$ et à $\frac{1}{4}$.

## Going further

- Dans la suite du sujet, on comptait les points communs à $\mathcal{H}_1$ et au cercle de centre
  $O$ et de rayon $\sqrt{2}\,(1 - \sqrt{a})$, puis on calculait l'aire sous l'arc : voir
  l'exercice 40163.
- Ce calcul servait ensuite à un problème de géométrie. Si un point $D$ du côté $[BC]$ d'un
  triangle $ABC$ découpe celui-ci en deux triangles de rayons inscrits $r_1$ et $r_2$, on a
  $\left(1 - \frac{2r_1}{h}\right)\left(1 - \frac{2r_2}{h}\right) = 1 - \frac{2r}{h}$, où $h$ est la
  hauteur issue de $A$ et $r$ le rayon inscrit de $ABC$. Les nombres $\frac{2r_1}{h}$ et
  $\frac{2r_2}{h}$ sont donc les coordonnées d'un point de $\mathcal{H}_1$ ! Voir les exercices
  40165 et 40166.
