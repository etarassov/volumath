---
id: "40241"
title: "Cercle tangent à une parabole : un critère avec la dérivée"
grade: 11
theme: functions-analysis
difficulty: 2
duration_min: 30
tags: [parabole, derivee, tangente, cercle, produit-scalaire, distance]
adapted_from: null
see_also: ["40242", "40243"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2008, mathématiques, série S"
  reference: "cg-2008-s-sujet.pdf, exercice I, questions 1, 2 (a) et 3"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2008.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2008-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $(O ; \vec{\imath}, \vec{\jmath})$. On note $S$ la courbe
d'équation
$$y = \frac{x^2}{3} - \frac{3}{2}.$$

Pour tout réel $x$, on note $M(x)$ le point de $S$ d'abscisse $x$. Pour tout point $U$ de
coordonnées $(u ; v)$, on pose
$$f_U(x) = UM(x) \qquad \text{et} \qquad g_U(x) = \left(f_U(x)\right)^2 .$$

1. Quelle est la nature géométrique de $S$ ? Donner son sommet et son axe de symétrie.
2. Soit $U$ un point de coordonnées $(u ; v)$.

   a) Exprimer $g_U(x)$ en fonction de $x$, $u$ et $v$, puis montrer que
   $$g_U(x) = \frac{x^4}{9} - \frac{2v}{3}\,x^2 - 2ux + u^2 + \left(v + \frac{3}{2}\right)^2 .$$

   b) Calculer la dérivée $g_U'$, puis la dérivée $g_U''$ de $g_U'$. Résoudre l'équation
   $g_U''(x) = 0$, en discutant selon le signe de $v$.
3. On dit qu'un cercle $C$ de centre $U$ et de rayon $UM$ est *tangent en $M$ à $S$* si $M$ est un
   point de $S$ et si la tangente en $M$ au cercle $C$ et la tangente en $M$ à la courbe $S$ sont la
   même droite.

   Soit $U$ un point qui n'est pas sur $S$, et soit $a$ un réel. Montrer que le cercle de centre $U$
   et de rayon $UM(a)$ est tangent en $M(a)$ à $S$ si et seulement si $g_U'(a) = 0$.

## Hints

1. **Question 2.** Pour développer $\left(\frac{x^2}{3} - \frac{3}{2} - v\right)^2$, poser
   $w = v + \frac{3}{2}$ : on développe alors le carré de $\frac{x^2}{3} - w$.
2. **Question 3.** La tangente en $M$ à un cercle de centre $U$ est la droite qui passe par $M$ et
   qui est perpendiculaire au rayon $(UM)$.
3. **Question 3.** Les deux tangentes passent toutes les deux par $M(a)$. Deux droites qui ont un
   point commun sont égales exactement quand elles ont la même direction. Quel est un vecteur
   directeur de la tangente à $S$ en $M(a)$ ?
4. **Question 3.** Calculer le produit scalaire de $\overrightarrow{UM(a)}$ avec le vecteur
   $\left(1 ; \frac{2a}{3}\right)$, et le comparer à $g_U'(a)$.

## Solution

**1.** La fonction $x \mapsto \frac{x^2}{3} - \frac{3}{2}$ est une fonction du second degré, donc
$S$ est une **parabole**. Son coefficient de $x^2$, $\frac{1}{3}$, est positif : elle est tournée
vers le haut. Elle n'a pas de terme en $x$, donc son axe de symétrie est l'axe des ordonnées
$(x = 0)$, et son sommet est le point $\left(0 ; -\frac{3}{2}\right)$.

**2. a)** Le point $M(x)$ a pour coordonnées $\left(x ; \frac{x^2}{3} - \frac{3}{2}\right)$, donc
$$g_U(x) = UM(x)^2 = (x - u)^2 + \left(\frac{x^2}{3} - \frac{3}{2} - v\right)^2 .$$

Posons $w = v + \frac{3}{2}$. On a $(x - u)^2 = x^2 - 2ux + u^2$ et
$$\left(\frac{x^2}{3} - w\right)^2 = \frac{x^4}{9} - \frac{2w}{3}\,x^2 + w^2 .$$
En ajoutant, le coefficient de $x^2$ est $1 - \frac{2w}{3} = 1 - \frac{2v}{3} - 1 = -\frac{2v}{3}$.
Donc
$$g_U(x) = \frac{x^4}{9} - \frac{2v}{3}\,x^2 - 2ux + u^2 + \left(v + \frac{3}{2}\right)^2 .$$

**b)** Les deux derniers termes ne dépendent pas de $x$, leur dérivée est nulle. On obtient
$$g_U'(x) = \frac{4}{9}\,x^3 - \frac{4v}{3}\,x - 2u ,
\qquad
g_U''(x) = \frac{4}{3}\,x^2 - \frac{4v}{3} = \frac{4}{3}\left(x^2 - v\right).$$

Donc $g_U''(x) = 0$ équivaut à $x^2 = v$ :

- si $v < 0$, il n'y a aucune solution ;
- si $v = 0$, la seule solution est $x = 0$ ;
- si $v > 0$, il y a deux solutions, $x = -\sqrt{v}$ et $x = \sqrt{v}$.

**3.** Comme $U$ n'est pas sur $S$, $U \neq M(a)$ et le rayon $UM(a)$ n'est pas nul : le cercle
est un vrai cercle.

- La tangente au cercle en $M(a)$ est la droite qui passe par $M(a)$ et qui est perpendiculaire à
  $(U M(a))$.
- La tangente à $S$ en $M(a)$ passe par $M(a)$ et a pour coefficient directeur la dérivée de
  $x \mapsto \frac{x^2}{3} - \frac{3}{2}$ en $a$, c'est-à-dire $\frac{2a}{3}$. Le vecteur
  $\vec{t} = \left(1 ; \frac{2a}{3}\right)$ la dirige.

Ces deux droites passent par le même point $M(a)$. Elles sont donc égales si et seulement si elles
ont la même direction, c'est-à-dire si et seulement si la tangente à $S$ est perpendiculaire à
$(U M(a))$, c'est-à-dire
$$\overrightarrow{U M(a)} \cdot \vec{t} = 0 .$$

Or $\overrightarrow{U M(a)}$ a pour coordonnées $\left(a - u ; \frac{a^2}{3} - \frac{3}{2} - v\right)$,
donc
$$\overrightarrow{U M(a)} \cdot \vec{t}
= (a - u) + \frac{2a}{3}\left(\frac{a^2}{3} - \frac{3}{2} - v\right)
= a - u + \frac{2a^3}{9} - a - \frac{2av}{3}
= \frac{2a^3}{9} - \frac{2v}{3}\,a - u .$$
C'est exactement $\frac{1}{2}\,g_U'(a)$.

**Conclusion :** le cercle de centre $U$ et de rayon $UM(a)$ est tangent à $S$ en $M(a)$ si et
seulement si $g_U'(a) = 0$.

On peut aussi le voir sans développer : en dérivant directement la forme de départ,
$g_U'(x) = 2(x - u) + 2\left(\frac{x^2}{3} - \frac{3}{2} - v\right) \times \frac{2x}{3}$, qui est
deux fois le produit scalaire ci-dessus.

**Bilan.** Le carré de la distance de $U$ à un point de la parabole est un polynôme de degré 4 en
l'abscisse $x$ du point. Le cercle de centre $U$ qui passe par $M(a)$ est tangent à la parabole
en $M(a)$ exactement quand la dérivée de ce polynôme s'annule en $a$. Chercher les cercles de
centre $U$ tangents à $S$ revient donc à chercher les racines de $g_U'$, qui est un polynôme de
degré 3.

## Going further

- Le critère dit aussi que $U$ est sur la *normale* à $S$ en $M(a)$ : la droite qui passe par
  $M(a)$ et qui est perpendiculaire à la tangente.
- Dans la suite du sujet, on comptait les cercles de centre $U$ tangents à $S$ : il y en a toujours
  au moins un et au plus trois, et le nombre de points de contact dépend du signe de
  $81u^2 - 16v^3$. Pouvez-vous le montrer à partir de $g_U'$ ? Voir l'exercice 40242. On cherchait
  ensuite les points $U$ qui sont centres d'un cercle tangent à $S$ en deux points : voir
  l'exercice 40243.
