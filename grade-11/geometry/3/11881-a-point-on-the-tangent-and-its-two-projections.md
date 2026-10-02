---
id: "11881"
title: "Un point de la tangente et ses deux projetés"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercle-circonscrit, tangente, projete-orthogonal, produit-scalaire, repere, perpendicularite]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Seniors, exercice 10 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. L'hypothèse P ≠ A a été ajoutée (sinon S = T = A). Le corrigé fait une chasse aux angles dans une seule configuration et renvoie les autres à « une façon similaire » ; la solution ici utilise un repère et le produit scalaire, ce qui couvre toutes les positions de P."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Omega$ son cercle circonscrit. On choisit un point $P$, différent de $A$, sur la tangente à $\Omega$ en $A$. On note $S$ et $T$ les projetés orthogonaux de $P$ sur les droites $(AB)$ et $(AC)$.

Montrer que la droite $(ST)$ est perpendiculaire à la droite $(BC)$.

## Hints

1. Choisir un repère orthonormé bien adapté : l'origine en $A$, la tangente comme axe des abscisses.
2. Dans ce repère, le centre de $\Omega$ est sur l'axe des ordonnées. Quelle relation vérifient les coordonnées d'un point de $\Omega$ ?
3. Le projeté orthogonal de $P$ sur la droite $(AB)$ est le point $S$ tel que $\overrightarrow{AS} = \lambda\,\overrightarrow{AB}$ et $\overrightarrow{PS} \cdot \overrightarrow{AB} = 0$. Calculer $\lambda$.

## Solution

**Le repère.** On note $r$ le rayon de $\Omega$. On prend un repère orthonormé d'origine $A$ dont l'axe des abscisses est la tangente à $\Omega$ en $A$, orienté de sorte que le centre de $\Omega$ soit le point $(0, r)$ (le rayon $[OA]$ est perpendiculaire à la tangente). Alors $P = (p, 0)$ avec $p \neq 0$, et un point $(x, y)$ est sur $\Omega$ si et seulement si
$$x^2 + (y - r)^2 = r^2, \qquad \text{c'est-à-dire} \qquad x^2 + y^2 = 2ry.$$
On note $B = (x_B, y_B)$ et $C = (x_C, y_C)$. Le cercle $\Omega$ est au-dessus de l'axe des abscisses et ne le touche qu'en $A$, donc $y_B > 0$ et $y_C > 0$.

**Étape 1 : les coordonnées de $S$ et $T$.** Le point $S$ est sur la droite $(AB)$, donc $\overrightarrow{AS} = \lambda\,\overrightarrow{AB}$ pour un réel $\lambda$, et $\overrightarrow{PS} \cdot \overrightarrow{AB} = 0$. Comme $\overrightarrow{PS} = \lambda\,\overrightarrow{AB} - \overrightarrow{AP}$, cela donne
$$\lambda\, AB^2 = \overrightarrow{AP} \cdot \overrightarrow{AB}, \qquad \text{soit} \qquad \lambda \left(x_B^2 + y_B^2\right) = p\, x_B, \qquad \text{soit} \qquad \lambda = \frac{p\, x_B}{2r\, y_B}.$$
Donc
$$S = \frac{p}{2r}\left(\frac{x_B^2}{y_B}, \; x_B\right), \qquad \text{et de même} \qquad T = \frac{p}{2r}\left(\frac{x_C^2}{y_C}, \; x_C\right).$$

**Étape 2 : le produit scalaire.** On a
$$\overrightarrow{ST} = \frac{p}{2r}\left(\frac{x_C^2}{y_C} - \frac{x_B^2}{y_B}, \; x_C - x_B\right), \qquad \overrightarrow{BC} = \left(x_C - x_B, \; y_C - y_B\right).$$
Donc
$$\overrightarrow{ST} \cdot \overrightarrow{BC} = \frac{p}{2r}\,(x_C - x_B)\left[\frac{x_C^2}{y_C} - \frac{x_B^2}{y_B} + y_C - y_B\right] = \frac{p}{2r}\,(x_C - x_B)\left[\frac{x_C^2 + y_C^2}{y_C} - \frac{x_B^2 + y_B^2}{y_B}\right].$$
Or $x_B^2 + y_B^2 = 2r y_B$ et $x_C^2 + y_C^2 = 2r y_C$, donc les deux fractions valent $2r$ et le crochet est nul : $\overrightarrow{ST} \cdot \overrightarrow{BC} = 0$.

**Étape 3 : $S \neq T$.** La droite $(ST)$ existe bien. En effet, les droites $(AB)$ et $(AC)$ ne se coupent qu'en $A$, donc $S = T$ forcerait $S = T = A$, c'est-à-dire $p\,x_B = 0$ et $p\,x_C = 0$, donc $x_B = x_C = 0$. Mais le seul point de $\Omega$ autre que $A$ sur l'axe des ordonnées est $(0, 2r)$, et $B \neq C$.

**Conclusion.** Le vecteur $\overrightarrow{ST}$ est non nul et orthogonal à $\overrightarrow{BC}$ : **la droite $(ST)$ est perpendiculaire à $(BC)$**, où que soit $P$ sur la tangente.

## Going further

Une preuve sans calcul existe. Les points $S$ et $T$ sont sur le cercle de diamètre $[AP]$, car les angles $\widehat{ASP}$ et $\widehat{ATP}$ sont droits. Le théorème de l'angle inscrit dans ce cercle, puis l'angle entre la tangente $(AP)$ et la corde $[AB]$ de $\Omega$, donnent l'angle entre $(ST)$ et $(AC)$. Mais la figure change selon la position de $P$ (les points $S$ et $T$ peuvent tomber sur les côtés ou sur leurs prolongements), et il faut alors refaire le raisonnement dans chaque cas. Le repère traite tous les cas d'un coup.
