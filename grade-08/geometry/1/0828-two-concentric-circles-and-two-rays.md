---
id: "0828"
title: "Deux cercles concentriques et deux rayons"
grade: 8
theme: geometry
difficulty: 1
duration_min: 10
tags: [cercle, thales, paralleles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Triangles semblables », 11 avril 2024"
  reference: "Geometrie.pdf, problème 9"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Geometrie.pdf"
---

## Statement

Deux cercles $\mathcal{C}_1$ et $\mathcal{C}_2$ ont le même centre $O$, et $\mathcal{C}_2$ est le plus petit des deux. On trace deux rayons du grand cercle :

- le premier coupe $\mathcal{C}_2$ en $A'$ et $\mathcal{C}_1$ en $A$ ;
- le second coupe $\mathcal{C}_2$ en $B'$ et $\mathcal{C}_1$ en $B$.

![Deux cercles de même centre O, deux rayons du grand cercle, et les segments [AB] et [A'B']](0828-figure-1.svg)

Démontrer que les droites $(AB)$ et $(A'B')$ sont parallèles.

## Hints

1. Sur cette figure, certaines longueurs sont égales rien qu'en regardant les deux cercles. Lesquelles ?
2. Appelle $R$ le rayon du grand cercle et $r$ celui du petit, puis calcule les deux rapports $\dfrac{OA'}{OA}$ et $\dfrac{OB'}{OB}$.
3. Deux rapports égaux, sur deux demi-droites issues d'un même point : c'est exactement la situation de la réciproque du théorème de Thalès.

## Solution

Notons $R$ le rayon du cercle $\mathcal{C}_1$ et $r$ le rayon du cercle $\mathcal{C}_2$.

**Les longueurs que l'on connaît.** Les points $A$ et $B$ sont sur $\mathcal{C}_1$, donc

$$OA = OB = R.$$

Les points $A'$ et $B'$ sont sur $\mathcal{C}_2$, donc

$$OA' = OB' = r.$$

**Les deux rapports.** Le point $A'$ est sur le segment $[OA]$ et le point $B'$ est sur le segment $[OB]$, puisque le petit cercle est à l'intérieur du grand. On peut donc écrire

$$\frac{OA'}{OA} = \frac{r}{R} \qquad \text{et} \qquad \frac{OB'}{OB} = \frac{r}{R}.$$

Ces deux rapports sont égaux.

**On conclut.** Les points $O$, $A'$, $A$ sont alignés, les points $O$, $B'$, $B$ sont alignés, et

$$\frac{OA'}{OA} = \frac{OB'}{OB}.$$

D'après la réciproque du théorème de Thalès, les droites $(A'B')$ et $(AB)$ sont parallèles.

## Going further

1. Montrer de plus que $A'B' = \dfrac{r}{R} \times AB$.
2. Que devient le résultat si le second rayon est remplacé par sa demi-droite opposée, c'est-à-dire si $B$ et $B'$ passent de l'autre côté de $O$ ?
