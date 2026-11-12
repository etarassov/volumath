---
id: "22035"
title: "Beaucoup de points et aucun triangle équilatéral"
grade: 8
theme: combinatorics
difficulty: 5
duration_min: 50
tags: [principe-des-tiroirs, sous-suite, monotonie, coordonnees, pythagore, triangle-equilateral, raisonnement-par-l-absurde]
adapted_from: null
see_also: ["8864"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, cours « Principe des tiroirs » (Aline), exercice 13 (application du théorème d'Erdős-Szekeres, exercice 12 du même cours, dont une preuve est incluse dans la solution)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $n \geq 1$ un entier, et soit $k$ le plus grand entier tel que $k^2 \leq n$. On place $n$ points distincts dans le plan.

Montrer qu'on peut en choisir $k$ de sorte que trois quelconques des points choisis ne forment jamais un triangle équilatéral.

*Par exemple, parmi $100$ points, on peut toujours en choisir $10$ sans aucun triangle équilatéral.*

## Hints

1. Placez un repère. Que dire de trois points $A$, $B$, $C$ tels que $x_A < x_B < x_C$ et $y_A \leq y_B \leq y_C$ ? Comparez $AC^2$ et $AB^2 + BC^2$.
2. Il suffit donc de trouver $k$ points dont les ordonnées montent (ou descendent) quand les abscisses augmentent.
3. Rangez les points par abscisse croissante et écrivez la liste de leurs ordonnées. Pour chaque nombre de la liste, notez la longueur de la plus longue sous-liste croissante qui commence par lui, et celle de la plus longue sous-liste décroissante. Que se passe-t-il si toutes ces longueurs sont au plus $k - 1$ ?

## Solution

Une **sous-liste** d'une liste de nombres est obtenue en gardant certains termes de la liste, sans changer leur ordre. Elle est **croissante** si chaque terme est inférieur ou égal au suivant, et **décroissante** si chaque terme est supérieur ou égal au suivant.

**Premier outil : une sous-liste monotone.** Soit $k \geq 1$. Toute liste de $(k-1)^2 + 1$ nombres contient une sous-liste croissante ou une sous-liste décroissante de $k$ termes.

*Preuve.* Notons $N = (k-1)^2 + 1$ et $y_1, y_2, \ldots, y_N$ la liste. Pour chaque position $i$, notons $c_i$ la longueur de la plus longue sous-liste croissante qui commence par $y_i$, et $d_i$ celle de la plus longue sous-liste décroissante qui commence par $y_i$. On a toujours $c_i \geq 1$ et $d_i \geq 1$, car $y_i$ seul forme une sous-liste.

Supposons par l'absurde qu'il n'y a aucune sous-liste monotone de $k$ termes. Alors $c_i$ et $d_i$ sont entre $1$ et $k - 1$ pour tout $i$. Le couple $(c_i, d_i)$ ne peut donc prendre que $(k-1)^2$ valeurs, alors qu'il y a $N = (k-1)^2 + 1$ positions. D'après le principe des tiroirs, il existe deux positions $i < j$ avec $c_i = c_j$ et $d_i = d_j$.

- Si $y_i \leq y_j$ : on prend une sous-liste croissante de $c_j$ termes qui commence par $y_j$, et on place $y_i$ devant. On obtient une sous-liste croissante de $c_j + 1$ termes qui commence par $y_i$. Donc $c_i \geq c_j + 1 > c_j$, c'est faux.
- Si $y_i > y_j$ : de la même façon, en plaçant $y_i$ devant une sous-liste décroissante qui commence par $y_j$, on obtient $d_i > d_j$, c'est faux.

Dans les deux cas, on aboutit à une contradiction, ce qui prouve l'outil.

**Deuxième outil : trois points « en escalier ».** Dans un repère orthonormé, soient $A$, $B$, $C$ trois points tels que $x_A < x_B < x_C$ et $y_A \leq y_B \leq y_C$, ou bien $x_A < x_B < x_C$ et $y_A \geq y_B \geq y_C$. Alors $ABC$ n'est pas un triangle équilatéral.

*Preuve.* Posons $a = x_B - x_A$, $b = x_C - x_B$, $c = y_B - y_A$ et $d = y_C - y_B$. On a $a > 0$ et $b > 0$, et $c$ et $d$ sont de même signe, donc $cd \geq 0$. Par le théorème de Pythagore, la distance entre deux points du repère vérifie $AB^2 = (x_B - x_A)^2 + (y_B - y_A)^2$. Donc

$$AB^2 = a^2 + c^2, \qquad BC^2 = b^2 + d^2,$$

$$AC^2 = (a + b)^2 + (c + d)^2 = a^2 + b^2 + c^2 + d^2 + 2ab + 2cd.$$

Comme $2ab > 0$ et $2cd \geq 0$, on obtient $AC^2 > AB^2 + BC^2$, donc $AC^2 > AB^2$ et $AC \neq AB$. Le triangle n'est pas équilatéral.

**Étape 1 : un bon repère.** Il n'y a qu'un nombre fini de droites qui passent par deux des $n$ points. On choisit un repère orthonormé dont l'axe des abscisses n'est perpendiculaire à aucune de ces droites. Alors deux des points n'ont jamais la même abscisse, car deux points de même abscisse sont sur une droite perpendiculaire à l'axe des abscisses.

On numérote les points $P_1, P_2, \ldots, P_n$ par abscisses croissantes, et on écrit la liste de leurs ordonnées $y_1, y_2, \ldots, y_n$.

**Étape 2 : une sous-liste monotone.** Comme $k^2 - (k-1)^2 = 2k - 1 \geq 1$, on a $(k-1)^2 + 1 \leq k^2 \leq n$. La liste des ordonnées a donc au moins $(k-1)^2 + 1$ termes. D'après le premier outil, appliqué aux $(k-1)^2 + 1$ premiers termes, il existe $k$ positions $i_1 < i_2 < \cdots < i_k$ telles que les ordonnées $y_{i_1}, y_{i_2}, \ldots, y_{i_k}$ sont rangées en ordre croissant, ou bien en ordre décroissant.

**Étape 3 : aucun triangle équilatéral.** On choisit les $k$ points $P_{i_1}, \ldots, P_{i_k}$. Prenons trois d'entre eux et nommons-les $A$, $B$, $C$ par abscisses croissantes. Alors $x_A < x_B < x_C$, et leurs ordonnées sont dans le même ordre que dans la sous-liste, donc croissantes ou décroissantes. D'après le deuxième outil, $ABC$ n'est pas un triangle équilatéral.

**Conclusion.** Parmi $n$ points, on peut toujours en choisir $k$, où $k$ est le plus grand entier tel que $k^2 \leq n$, sans que trois d'entre eux forment un triangle équilatéral.

## Going further

1. Montrez que trois des points choisis ne forment jamais non plus un triangle rectangle.
2. Le premier outil est le meilleur possible : écrivez une liste de $4$ nombres sans sous-liste croissante ni décroissante de $3$ termes. Puis une liste de $9$ nombres sans sous-liste monotone de $4$ termes.
