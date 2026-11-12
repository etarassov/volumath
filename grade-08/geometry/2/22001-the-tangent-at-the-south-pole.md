---
id: "22001"
title: "La tangente au milieu de l'arc est parallèle au côté"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [tangente, cercle-circonscrit, mediatrice, paralleles, pole-sud]
adapted_from: null
see_also: ["22021"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », première partie, cours « Angle tangent » (Vincent), exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Gamma$ le cercle qui passe par ses trois sommets (son cercle circonscrit).

Le cercle $\Gamma$ est partagé par les points $B$ et $C$ en deux arcs. On note $S$ le milieu de l'arc qui ne contient pas $A$.

Démontrer que la tangente au cercle $\Gamma$ au point $S$ est parallèle à la droite $(BC)$.

## Hints

1. Que peut-on dire des longueurs $SB$ et $SC$ ?
2. Le centre $O$ du cercle et le point $S$ sont tous les deux à la même distance de $B$ et de $C$. Sur quelle droite sont-ils ?
3. Une tangente à un cercle est perpendiculaire au rayon qui aboutit au point de contact.

## Solution

Notons $O$ le centre du cercle $\Gamma$.

**Étape 1 : $SB = SC$.** Le point $S$ est le milieu de l'arc $BC$ : les arcs $SB$ et $SC$ ont la même longueur. Dans un même cercle, deux arcs de même longueur ont des cordes de même longueur, donc $SB = SC$.

(On peut aussi le voir avec les angles au centre : les arcs égaux correspondent à des angles au centre $\widehat{BOS}$ et $\widehat{SOC}$ égaux. Les triangles $BOS$ et $SOC$ ont alors deux côtés égaux, $OB = OS = OC$, et le même angle entre eux. Ils sont superposables, donc $SB = SC$.)

**Étape 2 : $(OS)$ est la médiatrice de $[BC]$.** Le point $O$ est le centre du cercle, donc $OB = OC$. Le point $S$ vérifie aussi $SB = SC$. Les deux points $O$ et $S$ sont donc sur la médiatrice du segment $[BC]$. Comme $O \neq S$, la droite $(OS)$ est cette médiatrice. En particulier

$$(OS) \perp (BC).$$

**Étape 3 : la tangente.** La tangente à $\Gamma$ en $S$ est perpendiculaire au rayon $[OS]$, donc à la droite $(OS)$.

**Conclusion.** La tangente en $S$ et la droite $(BC)$ sont toutes les deux perpendiculaires à la même droite $(OS)$. Deux droites perpendiculaires à une même droite sont parallèles :

$$\text{la tangente à } \Gamma \text{ en } S \text{ est parallèle à } (BC).$$

## Going further

1. Le point $S$ s'appelle le **pôle Sud** du triangle issu de $A$. Montrez que la droite $(AS)$ coupe l'angle $\widehat{BAC}$ en deux angles égaux.
2. Le résultat reste-t-il vrai pour le milieu de l'autre arc, celui qui contient $A$ ?
