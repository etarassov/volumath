---
id: "11883"
title: "Deux cercles concentriques et une bissectrice"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercles-concentriques, tangente, angle-inscrit, bissectrice, cercle-de-diametre]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 13 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Le corrigé ne justifie pas la position de P₁ sur le cercle de diamètre [OX] ; la solution ici le fait (étape 3)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Deux cercles $\mathcal{C}_1$ et $\mathcal{C}_2$ ont le même centre $O$, et $\mathcal{C}_1$ est à l'intérieur de $\mathcal{C}_2$. Soient $P_1$ et $P_2$ deux points distincts de $\mathcal{C}_1$ qui ne sont pas diamétralement opposés. La demi-droite $[P_1P_2)$ coupe le cercle $\mathcal{C}_2$ en un point $Q_2$.

La tangente à $\mathcal{C}_1$ en $P_1$ et la tangente à $\mathcal{C}_2$ en $Q_2$ se coupent en un point $X$. De $X$ part une deuxième tangente à $\mathcal{C}_2$, qui touche $\mathcal{C}_2$ en un point $Q_1$.

Montrer que la droite $(XP_1)$ est la bissectrice de l'angle $\widehat{Q_1P_1Q_2}$.

## Hints

1. Faire une figure soignée et repérer les angles droits : une tangente est perpendiculaire au rayon.
2. Les angles $\widehat{OP_1X}$, $\widehat{OQ_1X}$ et $\widehat{OQ_2X}$ sont droits. Quel cercle passe par $P_1$, $Q_1$ et $Q_2$ ?
3. Les deux tangentes issues de $X$ ont la même longueur : $XQ_1 = XQ_2$. Que dit le théorème de l'angle inscrit pour deux cordes de même longueur ?
4. Attention à la position de $P_1$ sur ce cercle : du même côté de $(Q_1Q_2)$ que $O$, ou que $X$ ?

## Solution

On note $r_1$ et $r_2$ les rayons de $\mathcal{C}_1$ et $\mathcal{C}_2$, avec $r_1 < r_2$.

**Étape 0 : la figure existe.** La tangente en $P_1$ est perpendiculaire à $(OP_1)$, celle en $Q_2$ est perpendiculaire à $(OQ_2)$. Elles ne pourraient être parallèles que si $O$, $P_1$ et $Q_2$ étaient alignés, et alors $P_2$, qui est sur la droite $(P_1Q_2)$, serait le point de $\mathcal{C}_1$ diamétralement opposé à $P_1$. C'est exclu, donc $X$ existe. De plus $X \neq Q_2$ : sinon la droite $(P_1P_2)$ serait la tangente à $\mathcal{C}_1$ en $P_1$, qui ne recoupe pas $\mathcal{C}_1$. Comme $X$ est sur la tangente en $Q_2$ et différent de $Q_2$, il est à l'extérieur de $\mathcal{C}_2$, et la deuxième tangente existe bien.

**Étape 1 : cinq points sur un même cercle.** Une tangente est perpendiculaire au rayon au point de contact, donc
$$\widehat{OP_1X} = \widehat{OQ_1X} = \widehat{OQ_2X} = 90^\circ.$$
Un triangle rectangle est inscrit dans le cercle qui a son hypoténuse pour diamètre. Les points $P_1$, $Q_1$ et $Q_2$ sont donc tous sur le cercle $\Gamma$ de diamètre $[OX]$. On note $K$ le centre de $\Gamma$, milieu de $[OX]$.

**Étape 2 : la droite $(OX)$ est un axe de symétrie de la figure.** Par le théorème de Pythagore dans les triangles rectangles $OQ_1X$ et $OQ_2X$,
$$XQ_1^2 = OX^2 - r_2^2 = XQ_2^2,$$
donc $XQ_1 = XQ_2$. Comme aussi $OQ_1 = OQ_2 = r_2$, les points $O$ et $X$ sont sur la médiatrice de $[Q_1Q_2]$ : la droite $(OX)$ est cette médiatrice. Elle coupe $[Q_1Q_2]$ en son milieu $I$, à angle droit.

La symétrie d'axe $(OX)$ échange $Q_1$ et $Q_2$, et garde $O$, $X$ et $K$. La corde $[Q_1Q_2]$ partage $\Gamma$ en deux arcs : l'un contient $X$, l'autre contient $O$. La symétrie échange donc l'arc de $Q_1$ à $X$ et l'arc de $X$ à $Q_2$ (ceux qui ne passent pas par $O$), et ces deux arcs ont la même mesure.

**Étape 3 : $P_1$ est sur l'arc qui contient $O$.** Soit $M$ un point de $\Gamma$ autre que $O$ et $X$, et $H$ son projeté orthogonal sur $(OX)$. On note $\alpha = \widehat{MOX}$, qui est aigu. Dans le triangle $OMX$ rectangle en $M$, $OM = OX \cos \alpha$. Dans le triangle $OHM$ rectangle en $H$, $OH = OM \cos \alpha$. Donc
$$OH = \frac{OM^2}{OX}.$$
Pour $M = Q_1$, le projeté est $I$, et $OI = \dfrac{r_2^2}{OX}$. Pour $M = P_1$, le projeté $H_1$ vérifie $OH_1 = \dfrac{r_1^2}{OX} < OI$. Le point $H_1$ est donc strictement entre $O$ et $I$ : $P_1$ est du même côté que $O$ de la droite $(Q_1Q_2)$, qui est perpendiculaire à $(OX)$ en $I$. Autrement dit, $P_1$ est sur l'arc de $\Gamma$ qui contient $O$, et $X$ est sur l'autre arc.

**Étape 4 : conclusion.** Comme $P_1$ et $X$ sont de part et d'autre de la droite $(Q_1Q_2)$, la corde $[P_1X]$ de $\Gamma$ coupe la corde $[Q_1Q_2]$. La demi-droite $[P_1X)$ est donc à l'intérieur de l'angle $\widehat{Q_1P_1Q_2}$, et il reste à voir que $\widehat{Q_1P_1X} = \widehat{XP_1Q_2}$.

L'angle inscrit $\widehat{Q_1P_1X}$ intercepte l'arc de $Q_1$ à $X$ qui ne contient pas $P_1$, c'est-à-dire celui qui ne passe pas par $O$. De même, $\widehat{XP_1Q_2}$ intercepte l'arc de $X$ à $Q_2$ qui ne passe pas par $O$. D'après le théorème de l'angle inscrit, chacun vaut la moitié de l'angle au centre correspondant :
$$\widehat{Q_1P_1X} = \frac{1}{2}\,\widehat{Q_1KX}, \qquad \widehat{XP_1Q_2} = \frac{1}{2}\,\widehat{XKQ_2}.$$
Par la symétrie d'axe $(OX)$, les angles $\widehat{Q_1KX}$ et $\widehat{XKQ_2}$ sont égaux. Donc $\widehat{Q_1P_1X} = \widehat{XP_1Q_2}$.

**Conclusion.** La droite $(XP_1)$ est la bissectrice de l'angle $\widehat{Q_1P_1Q_2}$.

## Going further

Le point $P_2$ ne sert qu'à construire $Q_2$. Refaire la preuve en partant directement d'un point $P_1$ de $\mathcal{C}_1$ et d'un point $Q_2$ de $\mathcal{C}_2$ quelconques, dont les tangentes se coupent en $X$. Que devient le résultat si $P_1$ est à l'extérieur de $\mathcal{C}_2$, sur un troisième cercle de centre $O$ plus grand ? (On obtient alors la bissectrice extérieure.)
