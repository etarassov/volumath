---
id: "11867"
title: "Le symétrique du centre exinscrit et deux angles supplémentaires"
grade: 11
theme: geometry
difficulty: 5
duration_min: 60
tags: [cercle exinscrit, bissectrice exterieure, rotation, homothetie, similitude, angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 5 (pot-pourri)"
  reference: "2024-03_sujet-envoi-5-2023-2024.pdf, Exercices Seniors, exercice 14 ; corrigé 2024-04_Corrige-envoi-5-2023-2024.pdf. Le corrigé conclut par une somme d'angles autour de K qui dépend de la figure ; la solution ci-dessous suit la même idée (deux similitudes de centres B et C) mais mesure les directions des vecteurs, ce qui évite toute discussion de figure."
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/03/sujet-envoi-5-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2024-03_sujet-envoi-5-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle et $J$ le centre de son cercle exinscrit dans l'angle $A$, c'est-à-dire le cercle tangent au côté $[BC]$ et aux prolongements des côtés $[AB]$ et $[AC]$. Soit $K$ le symétrique de $J$ par rapport à la droite $(BC)$.

Soient $E$ un point de la droite $(BJ)$ et $F$ un point de la droite $(CJ)$ tels que $\widehat{EAB} = \widehat{CAF} = 90°$.

Montrer que $\widehat{FKE} + \widehat{FJE} = 180°$.

## Hints

1. Notons $\widehat{B} = 2\beta$ et $\widehat{C} = 2\gamma$. Que vaut l'angle $\widehat{JBC}$ ? Sur quelle demi-droite d'origine $B$ se trouve $E$ ?
2. Soit $A_1$ le point où le cercle exinscrit touche $[BC]$ ; c'est aussi le milieu de $[JK]$. Comparer les triangles rectangles $BA_1K$ et $BAE$.
3. Trouver une rotation de centre $B$ suivie d'un agrandissement de centre $B$ qui envoie $A_1$ sur $K$ et $A$ sur $E$. Que fait-elle au vecteur $\overrightarrow{A_1A}$ ?
4. Faire de même en $C$, puis comparer les directions des vecteurs $\overrightarrow{KE}$ et $\overrightarrow{KF}$.

## Solution

Notons $\widehat{A} = 2\alpha$, $\widehat{B} = 2\beta$ et $\widehat{C} = 2\gamma$, de sorte que $\alpha + \beta + \gamma = 90°$. Plaçons la figure avec $B$ à gauche, $C$ à droite et $A$ au-dessus de la droite $(BC)$. Le centre $J$ est alors en dessous de $(BC)$ et $K$ au-dessus. Le sens « direct » est le sens inverse des aiguilles d'une montre.

**Rappels.**

- Le centre $J$ du cercle exinscrit dans l'angle $A$ est sur la bissectrice extérieure de l'angle $\widehat{B}$ et sur celle de l'angle $\widehat{C}$. Le cercle exinscrit est tangent à $(BC)$ en un point $A_1$ du segment $[BC]$, et $(JA_1)$ est perpendiculaire à $(BC)$.
- Une rotation d'angle $\theta$ fait tourner tous les vecteurs du même angle $\theta$. Un agrandissement (une homothétie) de rapport $k > 0$ multiplie tous les vecteurs par $k$ sans changer leur direction.
- Dans un triangle rectangle, le cosinus d'un angle aigu est le côté adjacent divisé par l'hypoténuse.

**Étape 1 : les angles en $B$.** La droite $(BJ)$ est la bissectrice de l'angle extérieur en $B$, qui mesure $180° - 2\beta$. Donc $\widehat{JBC} = 90° - \beta$, avec $J$ sous $(BC)$.

Par symétrie par rapport à $(BC)$, on a $\widehat{KBC} = 90° - \beta$, avec $K$ au-dessus de $(BC)$. Autrement dit, la demi-droite $[BK)$ s'obtient en tournant la demi-droite $[BC)$ de $90° - \beta$ dans le sens direct.

Où est $E$ ? On a $\widehat{ABJ} = \widehat{ABC} + \widehat{CBJ} = 2\beta + 90° - \beta = 90° + \beta$, un angle obtus. Or dans le triangle $ABE$, rectangle en $A$, l'angle en $B$ est aigu. Le point $E$ n'est donc pas sur la demi-droite $[BJ)$, mais sur la demi-droite opposée, au-dessus de $(BC)$, et $\widehat{ABE} = 180° - (90° + \beta) = 90° - \beta$. Comme $[BA)$ s'obtient en tournant $[BC)$ de $2\beta$ dans le sens direct, la demi-droite $[BE)$ s'obtient en tournant $[BA)$ de $90° - \beta$ dans le sens direct.

En particulier, $B$ est entre $J$ et $E$.

**Étape 2 : deux triangles rectangles.** Le point $A_1$ est le milieu de $[JK]$ et $(JK)$ est perpendiculaire à $(BC)$ en $A_1$. Le triangle $BA_1K$ est donc rectangle en $A_1$, avec $\widehat{A_1BK} = 90° - \beta$. Le triangle $BAE$ est rectangle en $A$, avec $\widehat{ABE} = 90° - \beta$. Par le rappel sur le cosinus,
$$\frac{BA_1}{BK} = \cos(90° - \beta) = \frac{BA}{BE}.$$
Notons $k$ la valeur commune de $\dfrac{BK}{BA_1}$ et $\dfrac{BE}{BA}$.

**Étape 3 : une transformation de centre $B$.** Soit $s_B$ la transformation qui consiste à tourner autour de $B$ de $90° - \beta$ dans le sens direct, puis à agrandir depuis $B$ dans le rapport $k$.

- Le point $A_1$ est sur $[BC)$. En tournant, il arrive sur $[BK)$ à la distance $BA_1$ de $B$, puis l'agrandissement l'amène à la distance $k \times BA_1 = BK$ : on obtient $K$.
- De même, $A$ arrive sur $[BE)$ à la distance $k \times BA = BE$ : on obtient $E$.

Par les rappels, $s_B$ fait tourner tous les vecteurs de $90° - \beta$ et les multiplie par $k$. Elle envoie le vecteur $\overrightarrow{A_1A}$ sur le vecteur $\overrightarrow{KE}$. Donc :

> le vecteur $\overrightarrow{KE}$ a la direction de $\overrightarrow{A_1A}$ tournée de $90° - \beta$ dans le sens direct.

**Étape 4 : la même chose en $C$.** Le raisonnement des étapes 1 à 3 s'applique en $C$, avec cette fois des rotations dans le sens des aiguilles d'une montre, car $C$ est à droite. On trouve que $\widehat{KCB} = \widehat{ACF} = 90° - \gamma$, que $C$ est entre $J$ et $F$, et qu'une rotation de centre $C$ de $90° - \gamma$ dans le sens des aiguilles d'une montre, suivie d'un agrandissement de centre $C$, envoie $A_1$ sur $K$ et $A$ sur $F$. Donc :

> le vecteur $\overrightarrow{KF}$ a la direction de $\overrightarrow{A_1A}$ tournée de $90° - \gamma$ dans le sens des aiguilles d'une montre.

**Étape 5 : l'angle en $K$.** Pour passer de la direction de $\overrightarrow{KF}$ à celle de $\overrightarrow{KE}$, on tourne donc dans le sens direct de
$$(90° - \gamma) + (90° - \beta) = 180° - \beta - \gamma = 90° + \alpha.$$
Cet angle est strictement compris entre $0°$ et $180°$, c'est donc la mesure de l'angle géométrique : $\widehat{FKE} = 90° + \alpha$.

**Étape 6 : l'angle en $J$.** Comme $B$ est entre $J$ et $E$, et $C$ entre $J$ et $F$, on a $\widehat{FJE} = \widehat{CJB}$. Dans le triangle $BJC$, les angles en $B$ et $C$ valent $90° - \beta$ et $90° - \gamma$, donc
$$\widehat{CJB} = 180° - (90° - \beta) - (90° - \gamma) = \beta + \gamma = 90° - \alpha.$$

**Conclusion.** **$\widehat{FKE} + \widehat{FJE} = (90° + \alpha) + (90° - \alpha) = 180°$.**

## Going further

Une transformation comme $s_B$, composée d'une rotation et d'une homothétie de même centre, s'appelle une *similitude*. L'argument utilisé ici est très général : si une similitude de centre $B$ envoie $A_1$ sur $K$, elle envoie aussi $A$ sur $E$ dès que les triangles $BA_1K$ et $BAE$ sont semblables et de même sens, et alors les triangles $BA_1A$ et $BKE$ sont eux aussi semblables. C'est ainsi que le corrigé officiel présente la solution.
