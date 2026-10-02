---
id: "13431"
title: "Une parallèle dans un rectangle et la longueur RY"
grade: 9
theme: geometry
difficulty: 3
duration_min: 30
tags: [thales, rectangle, symetrie, paralleles, papillon]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2023"
  reference: "2023-10_Sujet-coupe-Animath-automne-2023.pdf, épreuve lycée, exercice 14 ; corrigé 2023-10_Corrige-coupe-Animath-automne-2023.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/10/Sujet-coupe-Animath-automne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2023-10_Sujet-coupe-Animath-automne-2023.pdf"
---

## Statement

Soit $ABCD$ un rectangle, et soit $M$ le milieu du segment $[CD]$. Une droite parallèle à $(AB)$ coupe les segments $[AD]$, $[AM]$, $[BM]$ et $[BC]$ respectivement aux points $P$, $Q$, $R$ et $S$.

La droite $(DR)$ coupe le segment $[AM]$ au point $X$ et le segment $[BC]$ au point $Y$.

On sait que $DX = 6$ et $XR = 4$. Quelle est la longueur du segment $[RY]$ ?

## Hints

1. Fais une figure. Note $\ell$ la longueur $AB$. Que vaut $DM$ en fonction de $\ell$ ?
2. Les droites $(QR)$ et $(DM)$ sont parallèles, et les droites $(QM)$ et $(RD)$ se coupent en $X$. Quel théorème peux-tu utiliser ? Déduis-en $QR$ en fonction de $\ell$.
3. La figure a un axe de symétrie. Compare $PQ$ et $RS$, puis calcule $RS$ en fonction de $\ell$.
4. Dans le triangle $YDC$, la droite $(RS)$ est parallèle au côté $(DC)$. Écris le théorème de Thalès, avec $YD = YR + 10$.

## Solution

![Le rectangle ABCD, le milieu M de [CD], la parallèle à (AB) qui coupe [AD], [AM], [BM] et [BC] en P, Q, R et S, et la droite (DR) qui coupe [AM] en X et [BC] en Y. En pointillés, l'axe de symétrie du rectangle qui passe par M.](13431-figure-1.svg)

On note $\ell = AB$ la longueur du rectangle. Comme $ABCD$ est un rectangle, $DC = \ell$, et comme $M$ est le milieu de $[CD]$, $DM = \frac{\ell}{2}$. Comme la droite $(PS)$ est parallèle à $(AB)$ et que $P$ et $S$ sont sur les côtés $[AD]$ et $[BC]$, on a aussi $PS = \ell$.

**Où est le point $X$ ?** Le point $D$ et le point $R$ sont de part et d'autre de la droite $(AM)$. Le point $X$ est donc entre $D$ et $R$, ce qui donne $DR = DX + XR = 6 + 4 = 10$. Le segment $[DR]$ est tout entier entre les droites $(DC)$ et $(PS)$, donc $X$ est aussi entre $M$ et $Q$ sur la droite $(AM)$.

**Étape 1 : la longueur $QR$.** Les droites $(QR)$ et $(MD)$ sont parallèles, puisqu'elles sont toutes les deux parallèles à $(AB)$. Les droites $(QM)$ et $(RD)$ se coupent en $X$, qui est entre $Q$ et $M$ et entre $R$ et $D$. D'après le théorème de Thalès, dans cette configuration « papillon »,

$$\frac{QR}{MD} = \frac{XR}{XD} = \frac{4}{6} = \frac{2}{3}.$$

Donc $QR = \frac{2}{3} \times \frac{\ell}{2} = \frac{\ell}{3}$.

**Étape 2 : la longueur $RS$.** Le rectangle est symétrique par rapport à la médiatrice de $[CD]$, en pointillés sur la figure. Cette symétrie échange $D$ et $C$, échange $A$ et $B$, et laisse $M$ en place. Elle échange donc les segments $[AM]$ et $[BM]$, ainsi que les côtés $[AD]$ et $[BC]$. La droite $(PS)$ est perpendiculaire à l'axe, donc la symétrie la laisse en place. Elle échange ainsi $P$ et $S$, et elle échange $Q$ et $R$. Par conséquent $PQ = RS$.

Comme $PS = PQ + QR + RS$, on obtient $\ell = 2 \times RS + \frac{\ell}{3}$, donc $2 \times RS = \frac{2\ell}{3}$ et

$$RS = \frac{\ell}{3}.$$

**Étape 3 : la longueur $RY$.** Dans le triangle $YDC$, le point $R$ est sur $[YD]$, le point $S$ est sur $[YC]$, et la droite $(RS)$ est parallèle à $(DC)$. D'après le théorème de Thalès,

$$\frac{YR}{YD} = \frac{RS}{DC} = \frac{\ell / 3}{\ell} = \frac{1}{3}.$$

Comme $R$ est entre $D$ et $Y$, on a $YD = YR + RD = YR + 10$. Donc $3 \times YR = YR + 10$, puis $2 \times YR = 10$.

**Conclusion.** $RY = 5$.

On remarque que la longueur $\ell$ a disparu des calculs : on n'a pas besoin de la connaître.

## Going further

Montrer que $DP = \frac{AD}{3}$, puis que le point $Y$ est le milieu du segment $[BC]$.
