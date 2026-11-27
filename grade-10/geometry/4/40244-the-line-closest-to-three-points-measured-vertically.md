---
id: "40244"
title: "La droite la plus proche de trois points, en mesurant verticalement"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [optimisation, minimum, coordonnees, fonction-affine, valeur-absolue, inegalite-triangulaire, cas-d-egalite]
adapted_from: null
see_also: ["40245"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2008, mathématiques, série S"
  reference: "cg-2008-s-sujet.pdf, exercice II, question 1"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2008.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2008-s-sujet.pdf"
---

## Statement

Le plan est muni d'un repère orthonormé $(O ; \vec{\imath}, \vec{\jmath})$. On considère un triangle
$ABC$ dont aucun côté n'est parallèle à l'axe des ordonnées.

À toute droite $D$ non parallèle à l'axe des ordonnées, on associe les points $A'$, $B'$ et $C'$
où $D$ coupe les parallèles à l'axe des ordonnées menées par $A$, $B$ et $C$. Autrement dit, $A'$
est le point de $D$ qui a la même abscisse que $A$, et de même pour $B'$ et $C'$. On note
$$s = AA' + BB' + CC' .$$

Montrer qu'il existe une unique droite $D$ pour laquelle la somme $s$ est la plus petite possible,
et dire quelle est cette droite.

## Hints

1. Commencer par un exemple : $A(0 ; 0)$, $B(1 ; 1)$ et $C(2 ; 0)$. Calculer $s$ pour les droites
   $(AB)$, $(BC)$ et $(AC)$. Laquelle est la meilleure ?
2. Quitte à changer les noms des sommets, on peut supposer $x_A < x_B < x_C$. Une conjecture : la
   meilleure droite est celle qui passe par les deux sommets « extrêmes » $A$ et $C$.
3. Écrire $D$ sous la forme $y = mx + p$ et poser $e_A = y_A - (m x_A + p)$, de même $e_B$ et
   $e_C$. Alors $AA' = |e_A|$, $BB' = |e_B|$, $CC' = |e_C|$.
4. Écrire $x_B = t\,x_A + (1 - t)\,x_C$ avec $0 < t < 1$. Vérifier que, pour toute fonction
   affine $\ell$, on a $\ell(x_B) = t\,\ell(x_A) + (1 - t)\,\ell(x_C)$. En déduire que la quantité
   $e_B - t\,e_A - (1 - t)\,e_C$ ne dépend pas de la droite $D$.
5. Utiliser $|a + b + c| \leqslant |a| + |b| + |c|$, puis chercher quand toutes les inégalités
   sont des égalités.

## Solution

*Un exemple pour deviner.* Avec $A(0 ; 0)$, $B(1 ; 1)$, $C(2 ; 0)$ : pour la droite $(AB)$,
d'équation $y = x$, on a $AA' = BB' = 0$ et $CC' = 2$, donc $s = 2$. Pour $(BC)$, d'équation
$y = -x + 2$, on trouve aussi $s = 2$. Pour $(AC)$, l'axe des abscisses, $s = BB' = 1$. La
meilleure des trois est $(AC)$, celle qui joint les deux sommets d'abscisses extrêmes.

*Mise en place.* Aucun côté n'est parallèle à l'axe des ordonnées, donc les trois sommets ont des
abscisses différentes. Quitte à changer les noms, on suppose $x_A < x_B < x_C$. On pose
$$t = \frac{x_C - x_B}{x_C - x_A} .$$
Comme $x_A < x_B < x_C$, on a $0 < t < 1$, et on vérifie que $x_B = t\,x_A + (1 - t)\,x_C$.

Soit $D$ une droite non parallèle à l'axe des ordonnées. Elle a une équation $y = mx + p$. On
note $\ell(x) = mx + p$ et
$$e_A = y_A - \ell(x_A), \qquad e_B = y_B - \ell(x_B), \qquad e_C = y_C - \ell(x_C).$$
Le point $A'$ a pour coordonnées $(x_A ; \ell(x_A))$, donc $AA' = |e_A|$. De même $BB' = |e_B|$ et
$CC' = |e_C|$, et $s = |e_A| + |e_B| + |e_C|$.

*Une quantité qui ne dépend pas de $D$.* Pour la fonction affine $\ell$,
$$t\,\ell(x_A) + (1 - t)\,\ell(x_C) = m\left(t\,x_A + (1 - t)\,x_C\right) + \left(t + 1 - t\right)p = m\,x_B + p = \ell(x_B).$$
Donc
$$e_B - t\,e_A - (1 - t)\,e_C = y_B - t\,y_A - (1 - t)\,y_C - \left(\ell(x_B) - t\,\ell(x_A) - (1 - t)\,\ell(x_C)\right) = y_B - t\,y_A - (1 - t)\,y_C .$$
Notons $\delta$ ce nombre : il ne dépend que du triangle, pas de $D$.

Que vaut $\delta$ ? Appliquons ce qui précède à $D = (AC)$ : alors $e_A = e_C = 0$, donc
$\delta = e_B$, et $|\delta|$ est la longueur $BK$, où $K$ est le point de $(AC)$ d'abscisse $x_B$.
Comme $B$ n'est pas sur la droite $(AC)$, $\delta \neq 0$.

*Minoration.* Pour toute droite $D$, avec $0 < t < 1$ :
$$|\delta| = \left|e_B - t\,e_A - (1 - t)\,e_C\right| \leqslant |e_B| + t\,|e_A| + (1 - t)\,|e_C| \leqslant |e_B| + |e_A| + |e_C| = s .$$
Donc $s \geqslant BK$ pour toute droite $D$, et $s = BK$ pour $D = (AC)$ : la valeur minimale de
$s$ est $BK$, atteinte pour la droite $(AC)$.

*Unicité.* Si $s = BK = |\delta|$, la seconde inégalité est une égalité, donc
$t\,|e_A| = |e_A|$ et $(1 - t)\,|e_C| = |e_C|$, c'est-à-dire $(1 - t)\,|e_A| = 0$ et
$t\,|e_C| = 0$. Comme $t \neq 1$ et $t \neq 0$, on obtient $e_A = 0$ et $e_C = 0$ : la droite $D$
passe par $A$ et par $C$, donc $D = (AC)$.

**Conclusion :** il existe une seule droite qui rend $s$ minimale. C'est la droite qui joint le
sommet de plus petite abscisse au sommet de plus grande abscisse. La valeur minimale de $s$ est la
longueur du segment vertical qui joint le troisième sommet à cette droite.

**Bilan.** Quand on mesure les écarts verticalement, la meilleure droite passe par les deux points
extrêmes et ignore celui du milieu. L'idée clé est que l'écart vertical au sommet du milieu, moins une
moyenne pondérée des écarts aux deux autres sommets, donne un nombre $\delta$ qui ne dépend pas de
la droite.

## Going further

- Avec quatre points d'abscisses différentes, la droite qui rend minimale la somme des écarts
  verticaux passe-t-elle encore par deux des points ? Est-elle toujours unique ?
- Dans la suite du sujet, on mesurait la vraie distance de chaque sommet à la droite, en
  perpendiculaire, et la meilleure droite n'est en général plus la même : voir l'exercice 40245.
- En statistique, la droite des moindres carrés rend minimale la somme des *carrés* des écarts
  verticaux. Pour $A(0 ; 0)$, $B(1 ; 1)$, $C(2 ; 0)$, elle est horizontale, mais ce n'est pas
  $(AC)$ : laquelle est-ce ?
