---
id: "40243"
title: "Un cercle qui touche la parabole en deux points"
grade: 11
theme: geometry
difficulty: 4
duration_min: 50
tags: [parabole, tangente, cercle, second-degre, discriminant, somme-et-produit, factorisation, longueurs-des-tangentes, symetrie, lieu-geometrique]
adapted_from: null
see_also: ["40241", "40242"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2008, mathématiques, série S"
  reference: "cg-2008-s-sujet.pdf, exercice I, question 5 (a à e)"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2008.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2008-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $(O ; \vec{\imath}, \vec{\jmath})$. On note $S$ la parabole
d'équation $y = \frac{x^2}{3} - \frac{3}{2}$ et, pour tout réel $x$, $M(x)$ le point de $S$
d'abscisse $x$.

Pour tout point $U$ de coordonnées $(u ; v)$ et tout réel $x$, on pose $g_U(x) = UM(x)^2$. On a
montré dans une partie précédente que
$$g_U(x) = \frac{x^4}{9} - \frac{2v}{3}\,x^2 - 2ux + u^2 + \left(v + \frac{3}{2}\right)^2
\qquad \text{et} \qquad
g_U'(x) = \frac{4}{9}\,x^3 - \frac{4v}{3}\,x - 2u .$$

On dit qu'un cercle de centre $U$ et de rayon $UM$ est *tangent en $M$ à $S$* si $M$ est un point
de $S$ et si la tangente en $M$ au cercle et la tangente en $M$ à $S$ sont la même droite. On admet
le résultat suivant, lui aussi montré dans une partie précédente :

> Si $U$ n'est pas sur $S$, le cercle de centre $U$ et de rayon $UM(a)$ est tangent en $M(a)$ à
> $S$ si et seulement si $g_U'(a) = 0$.

1. Soit $a$ un réel. On note $D(a)$ la tangente en $M(a)$ à $S$. Donner une équation de $D(a)$.

2. Soit $U$ un point de coordonnées $(u ; v)$. Discuter, selon $u$ et $v$, le nombre de réels $a$
   tels que $U$ appartienne à $D(a)$.

3. On suppose que l'équation « $U$ appartient à $D(a)$ », d'inconnue $a$, a deux solutions
   distinctes $a_1$ et $a_2$. Montrer que si $UM(a_1) = UM(a_2)$, alors $u = 0$.

4. Soit $U$ un point du plan. On suppose qu'il existe un cercle de centre $U$ tangent à $S$ en deux
   points distincts $M$ et $N$ de $S$. Montrer que les tangentes à $S$ en $M$ et en $N$ se coupent
   en un point $V$, et que $VM = VN$.

5. Déterminer l'ensemble des points $U$ qui ne sont pas sur $S$ et pour lesquels il existe un
   cercle de centre $U$ tangent à $S$ en deux points distincts.

## Hints

1. **Question 2.** Écrire « $U$ appartient à $D(a)$ » comme une équation du second degré
   d'inconnue $a$, et calculer son discriminant. Que signifie son signe pour la position de $U$
   par rapport à $S$ ?
2. **Question 3.** Que valent la somme $a_1 + a_2$ et le produit $a_1 a_2$ ?
3. **Question 3.** $UM(a_1) = UM(a_2)$ équivaut à $g_U(a_1) = g_U(a_2)$. Mettre $a_1 - a_2$ en
   facteur dans $g_U(a_1) - g_U(a_2)$, puis utiliser $a_1^2 + a_2^2 = (a_1 + a_2)^2 - 2a_1a_2$.
4. **Question 4.** La tangente à $S$ en $M$ est aussi la tangente au cercle en $M$, donc elle est
   perpendiculaire au rayon $(UM)$. Penser au théorème de Pythagore dans le triangle $UMV$.
5. **Question 5.** Appliquer la question 3 au point $V$ de la question 4, et non au point $U$.
   Qu'en déduit-on sur les points de contact $M$ et $N$ ?
6. **Question 5.** Les deux points de contact sont $M(a)$ et $M(-a)$. Écrire $g_U'(a) = 0$ et
   $g_U'(-a) = 0$, puis faire la somme et la différence de ces deux égalités.

## Solution

**1.** La dérivée de $x \mapsto \frac{x^2}{3} - \frac{3}{2}$ en $a$ vaut $\frac{2a}{3}$, et
$M(a)$ a pour ordonnée $\frac{a^2}{3} - \frac{3}{2}$. Donc $D(a)$ a pour équation
$$y = \frac{2a}{3}(x - a) + \frac{a^2}{3} - \frac{3}{2},
\qquad \text{soit} \qquad
y = \frac{2a}{3}\,x - \frac{a^2}{3} - \frac{3}{2}.$$

**2.** Le point $U(u ; v)$ appartient à $D(a)$ si et seulement si
$v = \frac{2a}{3}\,u - \frac{a^2}{3} - \frac{3}{2}$. En multipliant par $3$ et en regroupant, cela
s'écrit
$$a^2 - 2u\,a + 3v + \frac{9}{2} = 0 .$$
C'est une équation du second degré en $a$, de discriminant
$$\Delta = 4u^2 - 4\left(3v + \frac{9}{2}\right) = 12\left(\frac{u^2}{3} - \frac{3}{2} - v\right).$$
Le signe de $\Delta$ dit donc si $U$ est au-dessus ou au-dessous du point de $S$ de même abscisse :

- si $v < \frac{u^2}{3} - \frac{3}{2}$ ($U$ au-dessous de $S$, à l'extérieur de la parabole), il y a
  **deux** solutions, $a = u \pm \sqrt{u^2 - 3v - \frac{9}{2}}$ : deux tangentes à $S$ passent par
  $U$ ;
- si $v = \frac{u^2}{3} - \frac{3}{2}$ ($U$ sur $S$), il y a **une** solution, $a = u$ : la
  tangente en $U$ lui-même ;
- si $v > \frac{u^2}{3} - \frac{3}{2}$ ($U$ au-dessus de $S$, à l'intérieur), il n'y a **aucune**
  solution.

**3.** Les deux solutions sont distinctes, donc $\Delta > 0$, c'est-à-dire
$u^2 - 3v - \frac{9}{2} > 0$. Ce sont les racines de $a^2 - 2ua + 3v + \frac{9}{2}$, donc
$$a_1 + a_2 = 2u \qquad \text{et} \qquad a_1 a_2 = 3v + \frac{9}{2},$$
et par suite $a_1^2 + a_2^2 = (a_1 + a_2)^2 - 2a_1a_2 = 4u^2 - 6v - 9$.

Les distances sont positives, donc $UM(a_1) = UM(a_2)$ équivaut à $g_U(a_1) = g_U(a_2)$. Les deux
derniers termes de $g_U$ ne dépendent pas de $x$, et en utilisant
$a_1^4 - a_2^4 = (a_1 - a_2)(a_1 + a_2)(a_1^2 + a_2^2)$ :
$$g_U(a_1) - g_U(a_2) = \frac{a_1^4 - a_2^4}{9} - \frac{2v}{3}\left(a_1^2 - a_2^2\right) - 2u\,(a_1 - a_2)
= (a_1 - a_2)\,B,$$
avec
$$B = \frac{(a_1 + a_2)(a_1^2 + a_2^2)}{9} - \frac{2v}{3}(a_1 + a_2) - 2u .$$
On remplace $a_1 + a_2$ par $2u$ et $a_1^2 + a_2^2$ par $4u^2 - 6v - 9$ :
$$B = \frac{2u\,(4u^2 - 6v - 9)}{9} - \frac{4uv}{3} - 2u
= \frac{2u}{9}\left(4u^2 - 6v - 9 - 6v - 9\right)
= \frac{8u}{9}\left(u^2 - 3v - \frac{9}{2}\right).$$

Donc $g_U(a_1) - g_U(a_2) = \frac{8u}{9}\,(a_1 - a_2)\left(u^2 - 3v - \frac{9}{2}\right)$. Les
facteurs $a_1 - a_2$ et $u^2 - 3v - \frac{9}{2}$ ne sont pas nuls. Si $UM(a_1) = UM(a_2)$, ce
produit est nul, donc $u = 0$.

**4.** Notons $M = M(a)$ et $N = M(b)$, avec $a \neq b$, et $r = UM = UN$ le rayon du cercle. Les
tangentes $D(a)$ et $D(b)$ ont pour coefficients directeurs $\frac{2a}{3}$ et $\frac{2b}{3}$, qui
sont différents : elles ne sont pas parallèles, donc elles se coupent en un point $V$.

Le cercle est tangent à $S$ en $M$, donc $D(a)$ est aussi la tangente au cercle en $M$ : elle est
perpendiculaire au rayon $(UM)$. Comme $V$ est sur $D(a)$, on a
$\overrightarrow{MU} \cdot \overrightarrow{MV} = 0$, et
$$UV^2 = \left(\overrightarrow{UM} + \overrightarrow{MV}\right)^2 = UM^2 + MV^2 = r^2 + VM^2 .$$
C'est le théorème de Pythagore dans le triangle $UMV$ rectangle en $M$. De même, avec $N$ :
$UV^2 = r^2 + VN^2$. Donc $VM^2 = VN^2$, et $VM = VN$.

**5.** *Analyse.* Soit $U$ un point hors de $S$, centre d'un cercle tangent à $S$ en deux points
distincts $M(a)$ et $M(b)$. D'après la question 4, les tangentes $D(a)$ et $D(b)$ se coupent en un
point $V$ tel que $VM(a) = VM(b)$.

Le point $V$ est sur $D(a)$ et sur $D(b)$ : l'équation « $V$ appartient à $D(t)$ », d'inconnue $t$,
a les deux solutions distinctes $a$ et $b$. La question 3, appliquée au point $V$, dit que
l'abscisse de $V$ est nulle. La question 3 donne aussi la somme des solutions : $a + b$ vaut deux
fois l'abscisse de $V$, donc $a + b = 0$. Ainsi $b = -a$, avec $a \neq 0$ : les deux points de
contact sont symétriques par rapport à l'axe des ordonnées.

D'après le résultat admis, $g_U'(a) = 0$ et $g_U'(-a) = 0$, c'est-à-dire
$$\frac{4}{9}\,a^3 - \frac{4v}{3}\,a - 2u = 0
\qquad \text{et} \qquad
-\frac{4}{9}\,a^3 + \frac{4v}{3}\,a - 2u = 0 .$$
En ajoutant : $-4u = 0$, donc $u = 0$. En soustrayant :
$\frac{8}{9}\,a^3 - \frac{8v}{3}\,a = \frac{8a}{9}\left(a^2 - 3v\right) = 0$, et comme $a \neq 0$,
$v = \frac{a^2}{3} > 0$.

*Synthèse.* Soit $U = (0 ; v)$ avec $v > 0$. Il n'est pas sur $S$, car le point de $S$ d'abscisse
$0$ est $\left(0 ; -\frac{3}{2}\right)$. Posons $a = \sqrt{3v} > 0$. Avec $u = 0$,
$$g_U'(\pm a) = \pm\frac{4}{9}\,a\left(a^2 - 3v\right) = 0 .$$
D'après le résultat admis, le cercle de centre $U$ et de rayon $UM(a)$ est tangent à $S$ en $M(a)$,
et le cercle de centre $U$ et de rayon $UM(-a)$ est tangent à $S$ en $M(-a)$. Or $S$ est symétrique
par rapport à l'axe des ordonnées et $U$ est sur cet axe, donc $UM(-a) = UM(a)$ : c'est le même
cercle, tangent à $S$ en deux points distincts.

**Conclusion :** l'ensemble cherché est la demi-droite ouverte formée des points $(0 ; v)$ avec
$v > 0$ : la partie de l'axe de la parabole située strictement au-dessus de $O$.

**Bilan.** Un cercle ne peut toucher cette parabole en deux points que s'il est « posé » dans la
parabole, son centre sur l'axe, comme une bille dans un bol. Les points de contact sont alors
symétriques, et cela n'arrive que si le centre est au-dessus de $O$.

## Going further

- Pour $U = (0 ; v)$ avec $v > 0$, calculer le rayon du cercle tangent en deux points. Montrer qu'il
  est toujours plus grand que $\frac{3}{2}$. Que se passe-t-il quand $v$ se rapproche de $0$ ?
- Le point $O$ est le centre du cercle qui « épouse » le mieux la parabole en son sommet, de rayon
  $\frac{3}{2}$. Une bille de rayon plus petit touche le fond du bol en un seul point ; une bille
  plus grosse ne peut pas descendre jusqu'au fond et touche les deux bords.
- Dans une autre partie du même sujet, on comptait les points de contact des cercles de centre $U$
  tangents à $S$, selon le signe de $81u^2 - 16v^3$ : voir l'exercice 40242.
