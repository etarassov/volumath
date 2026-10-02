---
id: "13254"
title: "Trois parallèles par un point intérieur"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, paralleles, triangle, rapports]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés collège, exercice 2 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Soit $ABC$ un triangle et $O$ un point à l'intérieur de ce triangle.

- La parallèle à $(BC)$ passant par $O$ coupe $[CA]$ en $D$.
- La parallèle à $(CA)$ passant par $O$ coupe $[AB]$ en $E$.
- La parallèle à $(AB)$ passant par $O$ coupe $[BC]$ en $F$.

Que vaut la somme

$$\frac{BF}{BC} + \frac{AE}{AB} + \frac{CD}{AC} \ ?$$

## Hints

1. Fais une figure et calcule la somme pour un point $O$ de ton choix, par exemple le centre de gravité.
2. Compare les aires des triangles $ABF$ et $ABC$. Quel est le rapport de ces aires ?
3. Les triangles $ABF$ et $ABO$ ont la même base $[AB]$. Que dire de leurs hauteurs, sachant que $(OF)$ est parallèle à $(AB)$ ?
4. Découpe le triangle $ABC$ en trois triangles ayant $O$ pour sommet commun.

## Solution

Notons $\mathcal{A}(XYZ)$ l'aire d'un triangle $XYZ$.

**Le premier rapport est un rapport d'aires.** Les triangles $ABF$ et $ABC$ ont le même sommet $A$, et leurs bases $[BF]$ et $[BC]$ sont sur la même droite $(BC)$. Ils ont donc la même hauteur issue de $A$, et

$$\frac{BF}{BC} = \frac{\mathcal{A}(ABF)}{\mathcal{A}(ABC)}.$$

**On remplace $F$ par $O$.** Les triangles $ABF$ et $ABO$ ont la même base $[AB]$. Comme la droite $(OF)$ est parallèle à $(AB)$, les points $O$ et $F$ sont à la même distance de la droite $(AB)$ : les deux triangles ont la même hauteur, donc la même aire. Ainsi

$$\frac{BF}{BC} = \frac{\mathcal{A}(ABO)}{\mathcal{A}(ABC)}.$$

**Les deux autres rapports.** On raisonne de la même façon.

- $\frac{AE}{AB} = \frac{\mathcal{A}(CAE)}{\mathcal{A}(CAB)}$ (même sommet $C$), et $\mathcal{A}(CAE) = \mathcal{A}(CAO)$ car $(OE)$ est parallèle à $(CA)$.
- $\frac{CD}{CA} = \frac{\mathcal{A}(BCD)}{\mathcal{A}(BCA)}$ (même sommet $B$), et $\mathcal{A}(BCD) = \mathcal{A}(BCO)$ car $(OD)$ est parallèle à $(BC)$.

**On additionne.** Comme $O$ est à l'intérieur du triangle, les trois triangles $ABO$, $BCO$, $CAO$ recouvrent exactement le triangle $ABC$ sans se chevaucher. Donc

$$\frac{BF}{BC} + \frac{AE}{AB} + \frac{CD}{AC} = \frac{\mathcal{A}(ABO) + \mathcal{A}(CAO) + \mathcal{A}(BCO)}{\mathcal{A}(ABC)} = 1.$$

**Conclusion.** La somme vaut $1$, quel que soit le point $O$ à l'intérieur du triangle.

## Going further

On peut aussi le démontrer avec le théorème de Thalès : en notant $G$ le point où la parallèle à $(AB)$ passant par $O$ coupe $[CA]$, montrer que $\frac{BF}{BC} = \frac{AG}{AC}$, que $AE = GO$, puis que $\frac{GD}{AC} = \frac{GO}{AB}$.
