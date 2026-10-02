---
id: "13452"
title: "Deux parallélogrammes de même aire"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, parallelogramme, hauteur, aire du triangle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2025"
  reference: "2025-10_Sujet-coupe-Animath-Automne-2025.pdf, épreuve collège, exercice 6 ; corrigé 2025-10_Corrige-commente-Coupe-Animath-Automne-2025.pdf. Dans le corrigé, le second point est défini comme « le pied de la hauteur issue de D » ; il faut lire « issue de E »"
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/10/Sujet-coupe-Animath-Automne-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2025-10_Sujet-coupe-Animath-Automne-2025.pdf"
---

## Statement

Soit $ABCD$ un parallélogramme, et soit $E$ un point du segment $[BC]$.

On trace la droite parallèle à $(AE)$ qui passe par $D$. Sur cette droite, on place deux points $F$ et $G$ de sorte que $D$ soit sur le segment $[FG]$ et que le quadrilatère $AEFG$ soit un parallélogramme.

Montrer que les parallélogrammes $ABCD$ et $AEFG$ ont la même aire.

## Hints

1. Fais une figure et trace le segment $[DE]$. Le triangle $ADE$ a un côté commun avec chacun des deux parallélogrammes.
2. Rappel : l'aire d'un parallélogramme est égale à la longueur d'un côté multipliée par la hauteur correspondante.
3. Regarde le triangle $ADE$. Compare son aire à celle de $AEFG$, en prenant $[AE]$ comme base.
4. Compare ensuite l'aire de $ADE$ à celle de $ABCD$, en prenant cette fois $[AD]$ comme base.

## Solution

L'idée est de comparer chacun des deux parallélogrammes au triangle $ADE$.

![Le parallélogramme ABCD en noir, le parallélogramme AEFG en rouge, le triangle ADE colorié, et les deux hauteurs [DH] et [EK] en pointillés](13452-figure-1.svg)

On note $H$ le pied de la perpendiculaire à $(AE)$ passant par $D$, et $K$ le pied de la perpendiculaire à $(AD)$ passant par $E$.

**Le parallélogramme $AEFG$.** On prend $[AE]$ comme base. La hauteur correspondante est la distance entre les droites parallèles $(AE)$ et $(FG)$. Le point $D$ est sur $(FG)$, donc cette distance est $DH$. Ainsi

$$\text{aire}(AEFG) = AE \times DH.$$

Dans le triangle $ADE$, avec la même base $[AE]$, la hauteur issue de $D$ est aussi $[DH]$, donc

$$\text{aire}(ADE) = \frac{AE \times DH}{2}.$$

Par conséquent, $\text{aire}(AEFG) = 2 \times \text{aire}(ADE)$.

**Le parallélogramme $ABCD$.** On prend cette fois $[AD]$ comme base. La hauteur correspondante est la distance entre les droites parallèles $(AD)$ et $(BC)$. Le point $E$ est sur $(BC)$, donc cette distance est $EK$. Ainsi

$$\text{aire}(ABCD) = AD \times EK.$$

Dans le triangle $ADE$, avec la base $[AD]$, la hauteur issue de $E$ est $[EK]$, donc

$$\text{aire}(ADE) = \frac{AD \times EK}{2}.$$

Par conséquent, $\text{aire}(ABCD) = 2 \times \text{aire}(ADE)$.

**Conclusion.** Les deux parallélogrammes ont chacun une aire égale au double de celle du triangle $ADE$ :

$$\text{aire}(ABCD) = 2 \times \text{aire}(ADE) = \text{aire}(AEFG).$$

Ils ont donc la même aire.

*Remarque.* La position de $F$ et $G$ sur la droite n'a aucune importance : tant que $D$ est sur $[FG]$, l'aire de $AEFG$ ne change pas.

## Going further

Que devient le résultat si le point $E$ est sur la droite $(BC)$, mais en dehors du segment $[BC]$ ?
