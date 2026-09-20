---
id: "5515"
title: "Le plus grand triangle à deux côtés de longueur 1"
grade: 10
theme: functions-analysis
difficulty: 4
duration_min: 40
tags: [optimisation, aire, inegalite triangulaire, identite remarquable, changement de variable]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Visualization in Algebra, Tom Davis"
  reference: "TDvisualizationinalgebra.pdf, « Visualization and Symmetry », section 4, problème 27 (sans corrigé dans la source)"
  url: "https://mathcircles.org/activity/visualization-in-algebra/"
  original_language: "en"
  local_copy: "sources/originals/namc/TDvisualizationinalgebra.pdf"
---

## Statement

Un triangle a deux côtés de longueur $1$ et un troisième côté de longueur $x$.

**a)** Entre quelles valeurs le nombre $x$ peut-il varier ?

**b)** Exprimer l'aire $\mathcal{A}(x)$ de ce triangle en fonction de $x$.

**c)** Trouver la valeur de $x$ qui rend l'aire la plus grande possible, et calculer cette aire maximale. On demande une démonstration **sans dérivée**.

**d)** Quelle est la forme du triangle obtenu ?

## Hints

1. Question a) : un triangle ne peut exister que si chaque côté est plus court que la somme des deux autres.
2. Question b) : prends le côté de longueur $x$ comme base. Le triangle est isocèle, donc le pied de la hauteur issue du sommet opposé est au milieu de cette base.
3. Le théorème de Pythagore donne alors la hauteur. Attention, la moitié de la base vaut $\dfrac{x}{2}$.
4. Question c) : la racine carrée gêne. Comme l'aire est positive, il revient au même de rendre son **carré** le plus grand possible.
5. Dans l'expression du carré de l'aire, fais apparaître $x^2$ et pose $u = x^2$. Tu obtiens un produit de deux facteurs dont la somme est constante.
6. Développe $4 - (u-2)^2$ pour voir ce que vaut $u(4-u)$.

## Solution

**a) Les valeurs possibles de $x$.**

Les trois côtés mesurent $1$, $1$ et $x$. L'inégalité triangulaire demande que chaque côté soit plus court que la somme des deux autres :
$$x < 1 + 1 = 2, \qquad 1 < 1 + x \ \text{ (toujours vrai si } x > 0).$$
Le nombre $x$ doit donc vérifier $0 < x < 2$.

**b) L'aire.**

Prenons le côté de longueur $x$ comme base, et appelons $S$ le sommet opposé. Le triangle est isocèle en $S$, donc la hauteur issue de $S$ coupe la base en son milieu $M$, et $BM = \dfrac{x}{2}$.

Dans le triangle rectangle $SMB$, l'hypoténuse mesure $1$ et un côté mesure $\dfrac{x}{2}$, donc par le théorème de Pythagore
$$h = SM = \sqrt{1 - \frac{x^2}{4}} .$$

L'aire vaut donc
$$\mathcal{A}(x) = \frac{x \times h}{2} = \frac{x}{2}\sqrt{1 - \frac{x^2}{4}} = \frac{x}{4}\sqrt{4 - x^2} .$$

(On vérifie au passage que cette expression a bien un sens exactement pour $0 < x < 2$.)

**c) Le maximum.**

L'aire est positive, donc elle est maximale en même temps que son carré. Calculons
$$\mathcal{A}(x)^2 = \frac{x^2}{16}\,(4 - x^2) = \frac{x^2(4 - x^2)}{16} .$$

Posons $u = x^2$. Comme $0 < x < 2$, on a $0 < u < 4$, et il s'agit de rendre le produit $u(4-u)$ le plus grand possible.

C'est ici qu'intervient l'idée : **développons $(u-2)^2$.**
$$4 - (u - 2)^2 = 4 - (u^2 - 4u + 4) = 4u - u^2 = u(4-u) .$$

Donc
$$u(4-u) = 4 - (u-2)^2 \leqslant 4 ,$$
car un carré n'est jamais négatif. L'égalité a lieu exactement quand $(u-2)^2 = 0$, c'est-à-dire $u = 2$.

Il en résulte
$$\mathcal{A}(x)^2 \leqslant \frac{4}{16} = \frac{1}{4}, \qquad \text{donc} \qquad \mathcal{A}(x) \leqslant \frac{1}{2} ,$$
avec égalité exactement lorsque $x^2 = 2$, c'est-à-dire
$$x = \sqrt{2} .$$

**L'aire maximale vaut $\dfrac{1}{2}$, et elle est atteinte pour $x = \sqrt{2}$.**

**d) La forme du triangle.**

Pour $x = \sqrt{2}$, les trois côtés mesurent $1$, $1$ et $\sqrt{2}$. Or
$$1^2 + 1^2 = 2 = (\sqrt{2})^2 ,$$
donc d'après la réciproque du théorème de Pythagore, **le triangle est rectangle**, et l'angle droit est celui qui sépare les deux côtés de longueur $1$.

On peut alors vérifier le résultat sans aucun calcul : dans ce triangle rectangle, les deux côtés de l'angle droit mesurent $1$, et l'aire vaut
$$\frac{1 \times 1}{2} = \frac{1}{2} .$$
C'est bien la valeur trouvée.

**Ce qu'il faut retenir.** Le triangle le plus grand n'est ni le plus « ouvert » ni le plus « fermé » : il est exactement au milieu, quand les deux côtés donnés sont perpendiculaires. Cela se comprend aussi ainsi : si l'on fixe la base de longueur $1$ et qu'on fait tourner l'autre côté de longueur $1$ autour d'une extrémité, la hauteur du triangle est maximale quand ce côté est vertical, c'est-à-dire perpendiculaire à la base.

## Going further

1. Reprends le problème avec deux côtés de longueurs $a$ et $b$ fixées, et un troisième de longueur $x$. Quelle est l'aire maximale ?
2. Quelle est l'aire du plus grand rectangle que l'on peut inscrire dans un cercle de rayon $1$ ? La même astuce fonctionne.
3. Parmi tous les triangles inscrits dans un cercle donné, lequel a la plus grande aire ? Essaie de t'en convaincre, au moins pour les triangles isocèles.
