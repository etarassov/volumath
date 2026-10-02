---
id: "13257"
title: "Un quadrilatère aux angles de 80°"
grade: 9
theme: geometry
difficulty: 4
duration_min: 35
tags: [angles, triangle-isocele, triangle-equilateral, quadrilatere]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2018"
  reference: "2018-10_coupe_automne_2018_sujet.pdf, énoncés communs, exercice 5 ; corrigé 2018-10_coupe_automne_2018_corrige.pdf. Le corrigé utilise le théorème de l'angle inscrit ; la solution ci-dessous construit un triangle équilatéral à la place."
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/10/coupe_automne_2018_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2018-10_coupe_automne_2018_sujet.pdf"
---

## Statement

Soit $ABCD$ un quadrilatère convexe tel que

$$\widehat{ABC} = 90^\circ \qquad \text{et} \qquad \widehat{BAD} = \widehat{ADC} = 80^\circ.$$

Soient $M$ un point de $[AD]$ et $N$ un point de $[BC]$ tels que $\widehat{ABM} = \widehat{CDN} = 20^\circ$. On suppose enfin que $MD = AB$.

Que vaut l'angle $\widehat{MNB}$ ?

## Hints

1. Calcule les angles du triangle $ABM$. Qu'en déduis-tu sur $BM$ ?
2. Le triangle $MBD$ est isocèle. Calcule l'angle $\widehat{DMB}$.
3. Construis le point $P$, du même côté de $(AD)$ que $B$, tel que le triangle $MDP$ soit équilatéral. Calcule les angles du triangle $MPB$.
4. Montre que $P$ est sur $(BC)$ et que $\widehat{CDP} = 20^\circ$. Que peux-tu en conclure sur $P$ et $N$ ?

## Solution

**Le triangle $ABM$ est isocèle.** Dans le triangle $ABM$, on a $\widehat{MAB} = 80^\circ$ et $\widehat{ABM} = 20^\circ$, donc $\widehat{AMB} = 180^\circ - 80^\circ - 20^\circ = 80^\circ$. Les angles en $A$ et en $M$ sont égaux, donc le triangle est isocèle en $B$ : $BM = BA$.

**Le triangle $MBD$ est isocèle.** On a donc $MB = AB = MD$. Comme $M$ est sur $[AD]$, l'angle $\widehat{DMB}$ est le supplémentaire de $\widehat{AMB}$ : $\widehat{DMB} = 180^\circ - 80^\circ = 100^\circ$.

**Un triangle équilatéral.** Construisons le point $P$, du même côté de la droite $(AD)$ que $B$ et $C$, tel que le triangle $MDP$ soit équilatéral. Alors $MP = MD = MB$ et $\widehat{DMP} = 60^\circ$.

Comme $60^\circ < 100^\circ$, la demi-droite $[MP)$ est à l'intérieur de l'angle $\widehat{DMB}$, et

$$\widehat{PMB} = \widehat{DMB} - \widehat{DMP} = 100^\circ - 60^\circ = 40^\circ.$$

Le triangle $MPB$ est isocèle en $M$ (car $MP = MB$), donc ses deux autres angles valent $\frac{180^\circ - 40^\circ}{2} = 70^\circ$ : $\widehat{MBP} = \widehat{MPB} = 70^\circ$.

**$P$ est sur la droite $(BC)$.** On a $\widehat{MBC} = \widehat{ABC} - \widehat{ABM} = 90^\circ - 20^\circ = 70^\circ$. Les points $P$ et $C$ sont du même côté de la droite $(BM)$ (celui de $D$), et les demi-droites $[BP)$ et $[BC)$ font toutes deux un angle de $70^\circ$ avec $[BM)$. Elles sont donc confondues : $P$ est sur la demi-droite $[BC)$.

**$P$ est le point $N$.** De même, $\widehat{ADP} = \widehat{MDP} = 60^\circ < 80^\circ$, donc la demi-droite $[DP)$ est à l'intérieur de l'angle $\widehat{ADC}$, et

$$\widehat{PDC} = 80^\circ - 60^\circ = 20^\circ.$$

Les demi-droites $[DP)$ et $[DN)$ font donc le même angle de $20^\circ$ avec $[DC)$, du même côté : elles sont confondues. Les points $P$ et $N$ sont tous deux sur cette demi-droite et sur la droite $(BC)$, donc $P = N$.

**Conclusion.** $\widehat{MNB} = \widehat{MPB} = 70^\circ$.

## Going further

On a montré au passage que $MN = MB = MD$ : les points $B$, $N$, $D$ sont sur un même cercle de centre $M$. Ceux qui connaissent le théorème de l'angle inscrit peuvent retrouver ce fait en calculant $\widehat{DNB}$.
