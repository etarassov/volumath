---
id: "0895"
title: "La perpendiculaire qui vise le milieu"
grade: 10
theme: geometry
difficulty: 4
duration_min: 40
tags: [cercle, angle-inscrit, triangle-rectangle, mediane, hypotenuse]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Club de mathématiques de Lyon, feuille « Problèmes issus des envois POFM (problèmes 1-3) », niveau collège - débutants, 12 mai 2023"
  reference: "Preparation.POFM.pdf, exercice 24, d'après les envois POFM 2019-2022"
  url: ""
  original_language: "fr"
  local_copy: "sources/originals/clublyon/Preparation.POFM.pdf"
---

## Statement

$ABCD$ est un quadrilatère convexe inscrit dans un cercle. On suppose que ses diagonales $(AC)$ et $(BD)$ sont perpendiculaires, et on note $P$ leur point d'intersection.

Montrer que la droite perpendiculaire à la droite $(DC)$ passant par le point $P$ coupe le segment $[AB]$ en son milieu.

![Le quadrilatère ABCD inscrit dans un cercle, ses diagonales perpendiculaires en P, et la perpendiculaire à (DC) passant par P](0895-figure-1.svg)

*Rappel (théorème de l'angle inscrit) : deux angles inscrits dans un cercle qui interceptent le même arc ont la même mesure.*

## Hints

1. Les diagonales sont perpendiculaires : quel triangle rectangle cela fabrique-t-il avec les points $A$, $B$ et $P$ ?
2. Note $M$ le milieu de $[AB]$. Dans un triangle rectangle, le milieu de l'hypoténuse est à égale distance des trois sommets. Que vaut alors $MP$, et que peux-tu dire du triangle $MAP$ ?
3. Retourne le problème : il n'y a qu'une seule perpendiculaire à $(DC)$ passant par $P$. Il suffit donc de montrer que la droite $(PM)$ est perpendiculaire à $(DC)$.
4. Appelle $H$ le point où la droite $(PM)$ coupe $(DC)$ et calcule les trois angles du triangle $PDH$. Le théorème de l'angle inscrit te donnera l'angle en $D$ à partir de l'angle $\widehat{BAC}$.

## Solution

**L'idée : partir du milieu $M$ de $[AB]$ et montrer que c'est la droite $(PM)$ qui est perpendiculaire à $(DC)$.**

Comme il n'existe qu'une seule perpendiculaire à $(DC)$ passant par $P$, il revient exactement au même de démontrer :

> si $M$ désigne le milieu de $[AB]$, alors $(PM) \perp (DC)$.

**Étape 1. Le triangle $APB$ est rectangle en $P$**, puisque $(AC) \perp (BD)$ et que $P$ est le point d'intersection des deux diagonales. Son hypoténuse est $[AB]$, et $M$ en est le milieu. Or, dans un triangle rectangle, le milieu de l'hypoténuse est à égale distance des trois sommets (c'est le centre du cercle circonscrit). Donc

$$MA = MB = MP.$$

En particulier $MP \neq 0$, donc la droite $(PM)$ existe bien, et le triangle $MAP$ est **isocèle en $M$**.

**Étape 2. Un premier angle.** Comme le triangle $MAP$ est isocèle en $M$, ses angles à la base sont égaux :

$$\widehat{MPA} = \widehat{MAP}.$$

Le point $M$ est sur le segment $[AB]$ et le point $P$ est sur le segment $[AC]$, donc $\widehat{MAP}$ n'est autre que l'angle $\widehat{BAC}$. Ainsi

$$\widehat{MPA} = \widehat{BAC}.$$

**Étape 3. On descend vers $(DC)$.** Notons $H$ le point où la droite $(PM)$ coupe la droite $(DC)$. Sur la figure, $P$ est à l'intérieur du quadrilatère, $H$ est sur le segment $[CD]$, et la demi-droite $[PH)$ est située entre les demi-droites $[PC)$ et $[PD)$. On a donc

$$\widehat{HPC} + \widehat{HPD} = \widehat{CPD} = 90°.$$

Or $\widehat{HPC}$ et $\widehat{MPA}$ sont opposés par le sommet ($H$ est sur la demi-droite opposée à $[PM)$, et $C$ sur la demi-droite opposée à $[PA)$), donc

$$\widehat{HPC} = \widehat{MPA} = \widehat{BAC},$$

puis

$$\widehat{HPD} = 90° - \widehat{BAC}.$$

**Étape 4. L'angle inscrit.** Les angles $\widehat{BDC}$ et $\widehat{BAC}$ sont deux angles inscrits dans le cercle qui interceptent le même arc $BC$ (les sommets $A$ et $D$ sont du même côté de la corde $[BC]$). Donc

$$\widehat{BDC} = \widehat{BAC}.$$

Comme $P$ est sur le segment $[DB]$ et $H$ sur le segment $[DC]$, l'angle $\widehat{PDH}$ est exactement l'angle $\widehat{BDC}$ :

$$\widehat{PDH} = \widehat{BAC}.$$

**Étape 5. On conclut avec la somme des angles du triangle $PDH$.**

$$\widehat{PHD} = 180° - \widehat{PDH} - \widehat{HPD} = 180° - \widehat{BAC} - \left(90° - \widehat{BAC}\right) = 90°.$$

La droite $(PM)$ coupe donc $(DC)$ à angle droit : c'est bien **la** perpendiculaire à $(DC)$ passant par $P$. Comme elle passe par $M$, milieu de $[AB]$ :

**Conclusion : la perpendiculaire à $(DC)$ passant par $P$ coupe le segment $[AB]$ en son milieu.**

## Going further

Le même raisonnement, en échangeant les rôles, montre que la perpendiculaire à $(AB)$ passant par $P$ coupe $[DC]$ en son milieu, et de même pour les deux autres côtés. Ce résultat porte un nom : c'est le **théorème de Brahmagupta**, du nom du mathématicien indien du septième siècle.

On peut aussi retenir la première étape toute seule, car elle resservira souvent : *dans un triangle rectangle, le milieu de l'hypoténuse est à égale distance des trois sommets.*
