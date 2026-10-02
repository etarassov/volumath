---
id: "11810"
title: "Une perpendiculaire à la bissectrice et le centre du cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [angle inscrit, angle au centre, bissectrice, alignement, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Seniors, exercice 13 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et soit $O$ le centre de son cercle circonscrit.

- $D$ est le pied de la bissectrice de l'angle $\widehat{BAC}$, sur le côté $[BC]$.
- La droite perpendiculaire à $(AD)$ passant par $B$ recoupe le cercle circonscrit au triangle $ADB$ en un point $E$.

Montrer que les points $A$, $O$ et $E$ sont alignés.

## Hints

1. Il suffit de montrer que les angles $\widehat{BAO}$ et $\widehat{BAE}$ sont égaux (et que $O$ et $E$ sont du même côté de $(AB)$).
2. Calcule $\widehat{BAO}$ à l'aide du triangle isocèle $AOB$ et du théorème de l'angle au centre.
3. Pour $\widehat{BAE}$, regarde le triangle $ABE$. L'angle $\widehat{ABE}$ se calcule grâce à l'angle droit ; l'angle $\widehat{AEB}$ grâce au cercle passant par $A$, $D$, $B$, $E$.
4. Pour $\widehat{ADB}$, pense que c'est un angle extérieur du triangle $ADC$.

## Solution

Notons $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$ et $\gamma = \widehat{ACB}$, avec $\alpha + \beta + \gamma = 180^\circ$.

**Rappels.**

- *Angle au centre.* Dans un cercle de centre $O$, l'angle au centre $\widehat{AOB}$ est le double de tout angle inscrit $\widehat{ACB}$ qui intercepte la même corde, avec $C$ du même côté que $O$.
- *Angle inscrit.* Deux angles inscrits qui interceptent la même corde, avec leurs sommets du même côté de celle-ci, sont égaux.

**L'angle $\widehat{BAO}$.** Le triangle est acutangle, donc $O$ est à l'intérieur, du même côté de $(AB)$ que $C$, et $\widehat{AOB} = 2\gamma$. Le triangle $AOB$ est isocèle en $O$ (car $OA = OB$), donc
$$\widehat{BAO} = \frac{180^\circ - 2\gamma}{2} = 90^\circ - \gamma .$$

**L'angle $\widehat{ABE}$.** Soit $F$ le pied de la perpendiculaire à $(AD)$ issue de $B$ : c'est le point où $(BE)$ coupe $(AD)$. Le triangle $ABF$ est rectangle en $F$ et $\widehat{BAF} = \widehat{BAD} = \dfrac{\alpha}{2}$, donc $\widehat{ABF} = 90^\circ - \dfrac{\alpha}{2}$. Le point $E$ est sur la demi-droite $[BF)$, donc
$$\widehat{ABE} = 90^\circ - \frac{\alpha}{2} .$$

**L'angle $\widehat{AEB}$.** Les points $A$, $D$, $B$, $E$ sont sur un même cercle, et $D$, $E$ sont du même côté de $(AB)$ (celui de $C$). Les angles inscrits $\widehat{AEB}$ et $\widehat{ADB}$ interceptent la corde $[AB]$, donc ils sont égaux. Or $\widehat{ADB}$ est un angle extérieur du triangle $ADC$ : il est égal à la somme des deux angles de ce triangle qui ne lui sont pas adjacents,
$$\widehat{ADB} = \widehat{DAC} + \widehat{DCA} = \frac{\alpha}{2} + \gamma .$$
Donc $\widehat{AEB} = \dfrac{\alpha}{2} + \gamma$.

**L'angle $\widehat{BAE}$.** Dans le triangle $ABE$ :
$$\widehat{BAE} = 180^\circ - \left(90^\circ - \frac{\alpha}{2}\right) - \left(\frac{\alpha}{2} + \gamma\right) = 90^\circ - \gamma .$$

**Conclusion.** Les demi-droites $[AO)$ et $[AE)$ partent de $A$, sont du même côté de $(AB)$, et font le même angle $90^\circ - \gamma$ avec $[AB)$. Elles sont donc confondues : **les points $A$, $O$ et $E$ sont alignés.**

## Going further

Reprends la figure lorsque l'angle $\widehat{ACB}$ est obtus. De quel côté de $(AB)$ se trouve alors le point $O$ ? Les points $A$, $O$ et $E$ sont-ils encore alignés ? Quelles étapes de la démonstration faut-il modifier ?
