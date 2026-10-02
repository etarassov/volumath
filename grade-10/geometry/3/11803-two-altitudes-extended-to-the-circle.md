---
id: "11803"
title: "Deux hauteurs prolongées jusqu'au cercle"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [angle inscrit, hauteur, cocyclicite, chasse aux angles]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2019-2020 n° 5 (pot-pourri)"
  reference: "2020-02_sujet-envoi-5.pdf, Exercices Juniors, exercice 4 ; corrigé 2020-04_corrige-commente-envoi-5.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2020/02/sujet-envoi-5.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2020-02_sujet-envoi-5.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus, et soit $\Gamma$ son cercle circonscrit.

- La hauteur issue de $A$ recoupe le cercle $\Gamma$ en un point $D$.
- La hauteur issue de $B$ recoupe le cercle $\Gamma$ en un point $E$.
- La droite $(ED)$ coupe le côté $[AC]$ en $P$ et le côté $[BC]$ en $Q$.

Montrer que les quatre points $A$, $B$, $Q$ et $P$ sont sur un même cercle.

## Hints

1. Fais une grande figure. Dans quel ordre les points $A$, $B$, $D$, $C$, $E$ sont-ils placés sur le cercle ?
2. Il suffit de montrer que l'angle $\widehat{CPQ}$ est égal à l'angle $\widehat{ABC}$ : explique pourquoi.
3. Calcule les angles du triangle $PDC$. Pour cela, exprime $\widehat{CAD}$ et $\widehat{CBE}$ à l'aide de l'angle $\widehat{ACB}$, grâce aux deux triangles rectangles formés par les hauteurs.
4. Utilise le théorème de l'angle inscrit pour transporter ces angles : $\widehat{CBD} = \widehat{CAD}$ et $\widehat{EDC} = \widehat{EBC}$.

## Solution

Notons $\alpha = \widehat{BAC}$, $\beta = \widehat{ABC}$ et $\gamma = \widehat{ACB}$ les angles du triangle.

**Rappel : le théorème de l'angle inscrit.** Deux angles inscrits dans un cercle qui interceptent la même corde, et dont les sommets sont du même côté de cette corde, sont égaux. Si les sommets sont de part et d'autre de la corde, les deux angles sont supplémentaires (leur somme vaut $180^\circ$). En particulier, un quadrilatère convexe est inscrit dans un cercle si et seulement si deux angles opposés sont supplémentaires.

**La position des points.** Le point $D$ est sur l'arc $BC$ qui ne contient pas $A$, et le point $E$ sur l'arc $AC$ qui ne contient pas $B$. En tournant autour du cercle, on rencontre donc $A$, $B$, $D$, $C$, $E$ dans cet ordre. Sur la droite $(ED)$, les points sont dans l'ordre $E$, $P$, $Q$, $D$.

**Deux angles donnés par les hauteurs.** Le triangle formé par $A$, $C$ et le pied de la hauteur issue de $A$ est rectangle, donc $\widehat{CAD} = 90^\circ - \gamma$. De même, avec la hauteur issue de $B$, $\widehat{CBE} = 90^\circ - \gamma$.

**Les angles du triangle $PDC$.**

- *Angle en $C$.* Le quadrilatère $ABDC$ est inscrit dans $\Gamma$, donc $\widehat{ACD} = 180^\circ - \widehat{ABD}$. Comme $D$ et $A$ sont de part et d'autre de $(BC)$, $\widehat{ABD} = \widehat{ABC} + \widehat{CBD}$. Les angles inscrits $\widehat{CBD}$ et $\widehat{CAD}$ interceptent la même corde $[CD]$, avec $A$ et $B$ du même côté, donc $\widehat{CBD} = \widehat{CAD} = 90^\circ - \gamma$. Ainsi
$$\widehat{PCD} = \widehat{ACD} = 180^\circ - \beta - (90^\circ - \gamma) = 90^\circ - \beta + \gamma .$$

- *Angle en $D$.* Les angles inscrits $\widehat{EDC}$ et $\widehat{EBC}$ interceptent la même corde $[EC]$, avec $B$ et $D$ du même côté. Donc
$$\widehat{PDC} = \widehat{EDC} = \widehat{EBC} = 90^\circ - \gamma .$$

- *Angle en $P$.* La somme des angles du triangle $PDC$ vaut $180^\circ$, donc
$$\widehat{CPD} = 180^\circ - (90^\circ - \beta + \gamma) - (90^\circ - \gamma) = \beta .$$

**Conclusion.** Comme $Q$ est sur le segment $[PD]$, on a $\widehat{CPQ} = \widehat{CPD} = \beta$. Comme $P$ est sur le segment $[AC]$, l'angle $\widehat{APQ}$ du quadrilatère $ABQP$ vaut $180^\circ - \beta$. Son angle opposé, en $B$, est $\widehat{ABQ} = \widehat{ABC} = \beta$. Ces deux angles opposés sont supplémentaires, donc le quadrilatère convexe $ABQP$ est inscrit dans un cercle : **les points $A$, $B$, $Q$ et $P$ sont cocycliques.**

## Going further

Montre aussi que le point $C$ est le milieu de l'arc $DE$, c'est-à-dire que $CD = CE$, puis que la droite $(ED)$ est parallèle à la tangente en $C$ au cercle $\Gamma$.
