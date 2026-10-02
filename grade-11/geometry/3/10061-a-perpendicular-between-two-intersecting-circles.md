---
id: "10061"
title: "Une perpendiculaire entre deux cercles sécants"
grade: 11
theme: geometry
difficulty: 3
duration_min: 30
tags: [cercles-secants, produit-scalaire, puissance-d-un-point, perpendiculaire, mediatrice]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2017-2018 n° 2 (géométrie)"
  reference: "2017-11_pofm-2017-2018-envoi2.pdf, Exercices du groupe B, exercice 1 ; corrigé 2018-01_pofm-2017-2018-envoi2-corrige.pdf (le corrigé fait une chasse aux angles orientés, qui oblige à séparer de nombreux cas de figure ; ici on utilise le produit scalaire, qui marche dans tous les cas. Erreur du corrigé : sa dernière phrase conclut que les droites sont « parallèles » au lieu de « perpendiculaires »)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/11/pofm-2017-2018-envoi2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-11_pofm-2017-2018-envoi2.pdf"
---

## Statement

Soit $\Gamma_1$ et $\Gamma_2$ deux cercles qui se coupent en deux points distincts $A$ et $B$. On note $O$ le centre de $\Gamma_1$. Soit $C$ un point de $\Gamma_1$, différent de $A$ et de $B$. La droite $(AC)$ recoupe $\Gamma_2$ en $D$, et la droite $(BC)$ recoupe $\Gamma_2$ en $E$.

![Les deux cercles sécants en A et B, le centre O de Γ1, le point C sur Γ1, les droites (CA) et (CB) qui recoupent Γ2 en D et E, et les segments [OC] et [DE]](10061-figure-1.svg)

Montrer que les droites $(OC)$ et $(DE)$ sont perpendiculaires.

## Hints

1. Selon la place de $C$ sur $\Gamma_1$, la figure change beaucoup. Cherche une méthode qui ne dépend pas de la figure : le produit scalaire.
2. Soit $\Omega$ et $r$ le centre et le rayon de $\Gamma_2$. Une droite passant par un point $M$ coupe $\Gamma_2$ en $X$ et $Y$. En utilisant le milieu de $[XY]$, montre que $\overrightarrow{MX} \cdot \overrightarrow{MY} = M\Omega^2 - r^2$.
3. Déduis-en $\overrightarrow{CD}$ comme un multiple de $\overrightarrow{CA}$, et $\overrightarrow{CE}$ comme un multiple de $\overrightarrow{CB}$, avec le même nombre $p = C\Omega^2 - r^2$ dans les deux.
4. Calcule $\overrightarrow{CO} \cdot \overrightarrow{CA}$ en utilisant le milieu de $[CA]$. Calcule ensuite $\overrightarrow{CO} \cdot \overrightarrow{DE}$.

## Solution

On note $\Omega$ et $r$ le centre et le rayon de $\Gamma_2$. Si la droite $(AC)$ est tangente à $\Gamma_2$, elle ne la « recoupe » pas ailleurs, et on pose $D = A$. De même pour $E$.

### Étape 1 : un lemme

**Lemme.** Soit $M$ un point et une droite passant par $M$, qui coupe $\Gamma_2$ en $X$ et $Y$ (avec $X = Y$ si la droite est tangente). Alors
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = M\Omega^2 - r^2 .$$

*Preuve.* Soit $K$ le pied de la perpendiculaire à la droite issue de $\Omega$. Comme $\Omega X = \Omega Y = r$, le point $\Omega$ est sur la médiatrice de $[XY]$, donc $K$ est le milieu de $[XY]$ et $\overrightarrow{KY} = -\overrightarrow{KX}$. Dans le cas tangent, $K = X = Y$, et cela reste vrai. Alors
$$\overrightarrow{MX} \cdot \overrightarrow{MY} = \left(\overrightarrow{MK} + \overrightarrow{KX}\right) \cdot \left(\overrightarrow{MK} - \overrightarrow{KX}\right) = MK^2 - KX^2 .$$
Les triangles $\Omega KM$ et $\Omega KX$ sont rectangles en $K$, donc, par le théorème de Pythagore, $MK^2 = M\Omega^2 - \Omega K^2$ et $KX^2 = r^2 - \Omega K^2$. La différence vaut $M\Omega^2 - r^2$. $\square$

### Étape 2 : les points $D$ et $E$

On pose $p = C\Omega^2 - r^2$. Les cercles $\Gamma_1$ et $\Gamma_2$ n'ont que $A$ et $B$ en commun, et $C$ est sur $\Gamma_1$, différent de $A$ et de $B$. Donc $C$ n'est pas sur $\Gamma_2$, et $p \neq 0$.

La droite $(CA)$ coupe $\Gamma_2$ en $A$ et $D$. Le lemme donne $\overrightarrow{CA} \cdot \overrightarrow{CD} = p$. Le point $D$ est sur la droite $(CA)$, donc $\overrightarrow{CD} = t\,\overrightarrow{CA}$ pour un réel $t$, et $t\,CA^2 = p$. Ainsi
$$\overrightarrow{CD} = \frac{p}{CA^2}\,\overrightarrow{CA} .$$
De la même façon, avec la droite $(CB)$ :
$$\overrightarrow{CE} = \frac{p}{CB^2}\,\overrightarrow{CB} .$$

### Étape 3 : le centre $O$

Soit $I$ le milieu de $[CA]$. Comme $OA = OC$, le point $O$ est sur la médiatrice de $[CA]$, donc $\overrightarrow{IO} \cdot \overrightarrow{CA} = 0$. De plus $\overrightarrow{CA} = 2\,\overrightarrow{CI}$. On obtient
$$\overrightarrow{CO} \cdot \overrightarrow{CA} = \left(\overrightarrow{CI} + \overrightarrow{IO}\right) \cdot \overrightarrow{CA} = \frac{1}{2}\,CA^2 .$$
De même, avec le milieu de $[CB]$ :
$$\overrightarrow{CO} \cdot \overrightarrow{CB} = \frac{1}{2}\,CB^2 .$$

### Étape 4 : conclusion

On a $\overrightarrow{DE} = \overrightarrow{CE} - \overrightarrow{CD}$, donc, avec les étapes 2 et 3 :
$$\overrightarrow{CO} \cdot \overrightarrow{DE} = \frac{p}{CB^2} \times \frac{CB^2}{2} - \frac{p}{CA^2} \times \frac{CA^2}{2} = \frac{p}{2} - \frac{p}{2} = 0 .$$

Il reste à vérifier que les deux droites existent. Le point $C$ est sur le cercle, donc $C \neq O$. Si l'on avait $D = E$, l'étape 2 donnerait
$$\frac{p}{CA^2}\,\overrightarrow{CA} = \frac{p}{CB^2}\,\overrightarrow{CB} ,$$
avec $p \neq 0$ : les vecteurs $\overrightarrow{CA}$ et $\overrightarrow{CB}$ seraient colinéaires, et $A$, $B$, $C$ seraient alignés. C'est impossible pour trois points distincts d'un cercle. Donc $D \neq E$.

**Les droites $(OC)$ et $(DE)$ sont perpendiculaires**, quelle que soit la place de $C$ sur $\Gamma_1$.

## Going further

- Le nombre $p = C\Omega^2 - r^2$ s'appelle la **puissance** du point $C$ par rapport au cercle $\Gamma_2$. Il est positif quand $C$ est à l'extérieur du cercle, négatif quand $C$ est à l'intérieur. Sur la figure, que se passe-t-il pour les points $D$ et $E$ quand $C$ passe à l'intérieur de $\Gamma_2$ ?
- Une autre preuve : la droite $(DE)$ est parallèle à la tangente à $\Gamma_1$ en $C$. Démontre-le avec des angles inscrits sur une figure où $C$ est loin de $\Gamma_2$, comme ci-dessus. Pourquoi cette preuve oblige-t-elle à regarder plusieurs cas ?
