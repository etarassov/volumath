---
id: "10259"
title: "Quatre milieux qui forment un rectangle"
grade: 8
theme: geometry
difficulty: 2
duration_min: 15
tags: [droite-des-milieux, milieu, rectangle, parallelogramme, hauteur]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 1 (géométrie)"
  reference: "2023-11_Sujet-envoi-1-2023-2024.pdf, Exercices Juniors, exercice 1 ; corrigé 2023-04_Corrige-envoi-1-2023-2024.pdf (le pied de la hauteur, noté H_C dans l'énoncé, est appelé K ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/11/Sujet-envoi-1-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-11_Sujet-envoi-1-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle et $K$ le pied de la hauteur issue de $C$. Soit $P$ un point du segment $[CK]$, autre que $C$.

On note $E$, $F$, $G$ et $H$ les milieux des segments $[AP]$, $[BP]$, $[BC]$ et $[AC]$.

Montrer que $EFGH$ est un rectangle.

![Le triangle ABC, la hauteur [CK], le point P sur cette hauteur et le quadrilatère EFGH](10259-figure-1.svg)

## Hints

1. Le théorème des milieux dit que, dans un triangle, la droite qui joint les milieux de deux côtés est parallèle au troisième côté. Dans quels triangles de la figure peut-on l'utiliser ?
2. Regardez les triangles $ACP$ et $BCP$ : à quelle droite les côtés $[HE]$ et $[GF]$ sont-ils parallèles ?
3. Regardez ensuite les triangles $ABP$ et $ABC$. Un parallélogramme qui a un angle droit est un rectangle.

## Solution

*Rappel (théorème des milieux).* Dans un triangle, la droite qui passe par les milieux de deux côtés est parallèle au troisième côté, et le segment qui joint ces deux milieux mesure la moitié du troisième côté.

**Étape 1 : deux côtés parallèles à $(CP)$.** Dans le triangle $ACP$, les points $H$ et $E$ sont les milieux des côtés $[AC]$ et $[AP]$. Donc $(HE)$ est parallèle à $(CP)$.

Dans le triangle $BCP$, les points $G$ et $F$ sont les milieux des côtés $[BC]$ et $[BP]$. Donc $(GF)$ est parallèle à $(CP)$.

**Étape 2 : deux côtés parallèles à $(AB)$.** Dans le triangle $ABP$, les points $E$ et $F$ sont les milieux des côtés $[AP]$ et $[BP]$. Donc $(EF)$ est parallèle à $(AB)$.

Dans le triangle $ABC$, les points $H$ et $G$ sont les milieux des côtés $[AC]$ et $[BC]$. Donc $(HG)$ est parallèle à $(AB)$.

**Étape 3 : un parallélogramme.** Les côtés opposés $[HE]$ et $[GF]$ sont parallèles, et les côtés opposés $[EF]$ et $[HG]$ aussi. Donc $EFGH$ est un parallélogramme.

**Étape 4 : un angle droit.** La droite $(CP)$ est la hauteur $(CK)$, donc elle est perpendiculaire à $(AB)$. Or $(HE)$ est parallèle à $(CP)$ et $(EF)$ est parallèle à $(AB)$. Donc $(HE)$ est perpendiculaire à $(EF)$ : le parallélogramme $EFGH$ a un angle droit en $E$.

**Conclusion.** Un parallélogramme qui a un angle droit est un rectangle. **Donc $EFGH$ est un rectangle.**

*Remarque.* On peut aussi obtenir le parallélogramme plus vite : d'après le rappel, $HE = \frac{1}{2}CP = GF$, et $(HE)$ et $(GF)$ sont parallèles. Un quadrilatère non croisé qui a deux côtés opposés parallèles et de même longueur est un parallélogramme.
