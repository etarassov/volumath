---
id: "8228"
title: "La corde commune et la ligne des centres"
grade: 9
theme: geometry
difficulty: 2
duration_min: 20
tags: [cercles, mediatrice, perpendiculaire, rayons]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, cours de Groupe B"
  reference: "PolycopieV1-1.pdf, chapitre IV « Groupe B », deuxième partie, TD de géométrie (Auguste de Lambilly, Andrei Barbu), exercice 6"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Deux cercles $\mathcal{C}_1$ et $\mathcal{C}_2$, de centres respectifs $O_1$ et $O_2$, se coupent en deux points $A$ et $B$.

![Deux cercles sécants, leurs centres et leur corde commune](8228-figure-1.svg)

Montrer que la droite $(AB)$ est perpendiculaire à la droite $(O_1 O_2)$.

## Hints

1. Il n'y a presque rien à savoir ici : juste ce qu'est un rayon, et ce qu'est une médiatrice.
2. Que peut-on dire des longueurs $O_1 A$ et $O_1 B$ ?
3. Un point situé à égale distance de deux points $A$ et $B$ se trouve sur une droite particulière. Laquelle ?
4. Fais le même raisonnement pour $O_2$. Combien de points de cette droite as-tu alors ?

## Solution

**Le point $O_1$ est sur la médiatrice de $[AB]$.**

Les points $A$ et $B$ appartiennent tous les deux au cercle $\mathcal{C}_1$, dont le centre est $O_1$. Les segments $[O_1 A]$ et $[O_1 B]$ sont donc deux rayons de ce cercle :

$$O_1 A = O_1 B .$$

Or la **médiatrice** d'un segment $[AB]$ est exactement l'ensemble des points situés à égale distance de $A$ et de $B$. Donc $O_1$ appartient à la médiatrice de $[AB]$.

**Le point $O_2$ aussi.**

Exactement le même argument avec le cercle $\mathcal{C}_2$ donne $O_2 A = O_2 B$, donc $O_2$ appartient lui aussi à la médiatrice de $[AB]$.

**Conclusion.**

Les deux points $O_1$ et $O_2$ sont distincts (deux cercles de même centre ne se coupent pas en deux points : ou bien ils sont confondus, ou bien ils ne se rencontrent pas). Comme deux points distincts déterminent une seule droite, la droite $(O_1 O_2)$ **est** la médiatrice de $[AB]$.

Et une médiatrice est, par définition, perpendiculaire au segment dont elle est la médiatrice. Donc

$$\boxed{(AB) \perp (O_1 O_2) .}$$

**Un bonus gratuit.** On a montré plus que demandé : la droite $(O_1O_2)$ n'est pas seulement perpendiculaire à $(AB)$, elle passe aussi par le **milieu** de $[AB]$. Autrement dit, la ligne des centres coupe la corde commune en son milieu.

**Une conséquence utile.** Les deux points d'intersection $A$ et $B$ sont symétriques l'un de l'autre par rapport à la droite $(O_1O_2)$. Toute la figure formée par les deux cercles est donc symétrique par rapport à la ligne des centres : c'est une remarque qui sert très souvent.

## Going further

Que devient l'énoncé lorsque les deux cercles sont **tangents**, c'est-à-dire lorsqu'ils n'ont qu'un seul point commun $T$ ? Montrer que $T$ est alors sur la droite $(O_1O_2)$.
