---
id: "8831"
title: "Trois points sur un même demi-cercle"
grade: 10
theme: combinatorics
difficulty: 3
duration_min: 30
tags: [principe des tiroirs, cercle, sphere, diametre]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Principe des tiroirs » (Emilhan), exercice 8, p. 110"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

**a)** Quatre points sont placés sur un cercle. Montrer qu'il existe un demi-cercle, bords compris, qui contient trois de ces quatre points.

**b)** Cinq points sont placés sur une sphère. Montrer qu'il existe une demi-sphère, bord compris, qui contient quatre de ces cinq points.

*(Un diamètre partage le cercle en deux demi-cercles ; les deux extrémités du diamètre appartiennent aux deux demi-cercles à la fois. De même un plan passant par le centre partage la sphère en deux demi-sphères, et le cercle où le plan coupe la sphère appartient aux deux.)*

## Hints

1. Si tu traces un diamètre au hasard, tu peux seulement dire qu'un des deux demi-cercles contient au moins deux points : $4 = 2 + 2$. Ce n'est pas assez.
2. Relis l'énoncé : les **bords sont compris**. Peux-tu choisir le diamètre de façon à ce qu'un des points soit « gratuit », c'est-à-dire compté dans les deux demi-cercles ?
3. Pour b), un plan passant par le centre de la sphère est déterminé par le centre et deux autres points. Combien de points peux-tu rendre « gratuits » cette fois ?

## Solution

### a) Quatre points sur un cercle

**L'idée : rendre un point gratuit.** Choisissons l'un des quatre points, appelons-le $A$, et traçons le **diamètre qui passe par $A$**. Ce diamètre partage le cercle en deux demi-cercles, et comme les bords sont compris, le point $A$ appartient aux **deux** demi-cercles.

Il reste $3$ points à répartir entre les deux demi-cercles. Par le principe des tiroirs ($3$ chaussettes, $2$ tiroirs), l'un des demi-cercles en contient au moins
$$\left\lceil \frac{3}{2} \right\rceil = 2 .$$

Ce demi-cercle contient donc ces $2$ points, **plus** le point $A$ qui lui appartient aussi : cela fait $3$ points.

*(Si un point tombe exactement sur l'autre extrémité du diamètre, il appartient lui aussi aux deux demi-cercles, ce qui ne peut qu'aider.)*

### b) Cinq points sur une sphère

Le mécanisme est le même, mais on peut rendre **deux** points gratuits.

Un plan passant par le centre de la sphère est déterminé par le centre et deux autres points. Choisissons donc deux des cinq points, appelons-les $A$ et $B$, et prenons le plan passant par le centre $O$, par $A$ et par $B$. (Si $O$, $A$ et $B$ sont alignés, c'est-à-dire si $A$ et $B$ sont diamétralement opposés, il y a même une infinité de tels plans : on en choisit un.)

Ce plan coupe la sphère selon un grand cercle contenant $A$ et $B$, et partage la sphère en deux demi-sphères. Comme les bords sont compris, $A$ et $B$ appartiennent aux deux demi-sphères.

Il reste $3$ points à répartir entre les deux demi-sphères. Par le principe des tiroirs, l'une d'elles en contient au moins $2$. Avec $A$ et $B$, cela fait
$$2 + 2 = 4 \quad \text{points.}$$

**Conclusion.** Dans les deux cas, le résultat est démontré.

### Ce qu'il faut retenir

La phrase « bords compris » n'est pas un détail de rédaction : c'est elle qui permet de faire compter certains points deux fois, et c'est tout le ressort de l'exercice. Sans elle, l'énoncé serait faux ; par exemple, quatre points formant un carré ne tiennent jamais à trois dans un demi-cercle ouvert.

## Going further

Montrer que parmi $2n$ points d'un cercle, il en existe toujours $n+1$ sur un même demi-cercle bords compris. Et qu'en est-il pour $2n+1$ points ?
