---
id: "11874"
title: "Deux bissectrices, deux projetés et l'angle MCN"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [triangle rectangle, bissectrice, triangle isocele, triangles egaux, somme des angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 3 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Le corrigé passe par deux quadrilatères inscriptibles ; la solution ici n'utilise que des triangles isocèles."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Le triangle $ABC$ est rectangle en $C$. La bissectrice de l'angle $\widehat{CAB}$ coupe le côté $[BC]$ en $P$, et la bissectrice de l'angle $\widehat{ABC}$ coupe le côté $[AC]$ en $Q$. On note $M$ et $N$ les projetés orthogonaux de $P$ et de $Q$ sur le côté $[AB]$.

Trouver la mesure de l'angle $\widehat{MCN}$.

## Hints

1. Faire une figure soignée et mesurer : l'angle ne semble pas dépendre du triangle.
2. Comparer les triangles $ACP$ et $AMP$. Que peut-on dire des longueurs $AC$ et $AM$ ?
3. Le triangle $ACM$ est isocèle. Calculer son angle $\widehat{ACM}$ en fonction de l'angle $\widehat{A}$. Faire de même avec le triangle $BCN$.

## Solution

On note $\alpha = \widehat{CAB}$ et $\beta = \widehat{ABC}$. Comme le triangle est rectangle en $C$, $\alpha + \beta = 90°$.

**Étape 1 : $AM = AC$.** Les triangles $ACP$ et $AMP$ sont rectangles, en $C$ et en $M$. Ils ont la même hypoténuse $[AP]$ et le même angle aigu en $A$, égal à $\dfrac{\alpha}{2}$ puisque $(AP)$ est la bissectrice. Leur troisième angle est donc le même aussi ($90° - \dfrac{\alpha}{2}$), et ces deux triangles sont égaux (un côté égal compris entre deux angles égaux). En particulier $AM = AC$.

Comme $AC < AB$ (un côté de l'angle droit est plus court que l'hypoténuse), le point $M$ est sur le segment $[AB]$, entre $A$ et $B$.

De la même façon, avec les triangles $BCQ$ et $BNQ$, on obtient $BN = BC$, et $N$ est sur le segment $[AB]$.

**Étape 2 : deux triangles isocèles.** Le triangle $ACM$ est isocèle en $A$, d'angle au sommet $\alpha$. Ses deux angles à la base sont égaux et valent
$$\widehat{ACM} = \frac{180° - \alpha}{2} = 90° - \frac{\alpha}{2}.$$
De même, le triangle $BCN$ est isocèle en $B$, d'angle au sommet $\beta$, et
$$\widehat{BCN} = 90° - \frac{\beta}{2}, \qquad \text{donc} \qquad \widehat{ACN} = 90° - \widehat{BCN} = \frac{\beta}{2}.$$

**Étape 3 : l'angle cherché.** Les points $M$ et $N$ sont sur $[AB]$, donc les demi-droites $[CM)$ et $[CN)$ sont dans l'angle droit $\widehat{ACB}$. Comme $\dfrac{\beta}{2} < 90° - \dfrac{\alpha}{2}$ (car $\dfrac{\alpha}{2} + \dfrac{\beta}{2} = 45° < 90°$), la demi-droite $[CN)$ est entre $[CA)$ et $[CM)$. Donc
$$\widehat{MCN} = \widehat{ACM} - \widehat{ACN} = 90° - \frac{\alpha}{2} - \frac{\beta}{2} = 90° - \frac{\alpha + \beta}{2} = 90° - 45°.$$

**Conclusion : $\widehat{MCN} = 45°$**, quel que soit le triangle rectangle $ABC$.

## Going further

On peut aussi remarquer que $A$, $M$, $P$, $C$ sont sur un même cercle (de diamètre $[AP]$, car les angles en $C$ et en $M$ sont droits), et utiliser le théorème de l'angle inscrit : c'est la méthode du corrigé officiel.
