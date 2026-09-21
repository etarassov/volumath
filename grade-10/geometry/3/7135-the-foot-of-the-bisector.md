---
id: "7135"
title: "Le pied de la bissectrice partage le côté"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [bissectrice, aires, rapports, thales, demonstration]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2015"
  reference: "stage_junior_2015.pdf, « Exercices d'échauffement », exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2015.pdf"
---

## Statement

Soit $ABC$ un triangle et soit $I$ le point où la bissectrice de l'angle $\widehat{BAC}$
coupe le côté $[BC]$.

Montrer que

$$\frac{IB}{IC} = \frac{AB}{AC} .$$

## Hints

1. Les deux triangles $ABI$ et $ACI$ se partagent le sommet $A$ et leurs bases $[IB]$ et
   $[IC]$ sont sur une même droite. Que vaut le rapport de leurs aires ?
2. Calcule maintenant ces deux mêmes aires en prenant $[AB]$ et $[AC]$ pour bases. Quelle est
   la hauteur correspondante dans chaque cas ?
3. Sers-toi du fait que $I$ est sur la bissectrice de $\widehat{BAC}$ : que dire de ses
   distances aux deux côtés $(AB)$ et $(AC)$ ?

## Solution

**Premier calcul des aires, avec $[IB]$ et $[IC]$ pour bases.**

Les triangles $ABI$ et $ACI$ ont leurs bases $[IB]$ et $[IC]$ portées par la même droite
$(BC)$, et le même sommet opposé $A$. Ils ont donc la **même hauteur**, à savoir la distance
$h$ de $A$ à la droite $(BC)$. D'où

$$\frac{\text{aire}(ABI)}{\text{aire}(ACI)} = \frac{\tfrac12 \times IB \times h}{\tfrac12 \times IC \times h}
= \frac{IB}{IC} . \qquad (1)$$

**Second calcul des aires, avec $[AB]$ et $[AC]$ pour bases.**

Notons $d$ la distance de $I$ à la droite $(AB)$, et $d'$ la distance de $I$ à la droite
$(AC)$. Alors

$$\text{aire}(ABI) = \frac{AB \times d}{2}, \qquad \text{aire}(ACI) = \frac{AC \times d'}{2} .$$

Or $I$ est sur la bissectrice de l'angle $\widehat{BAC}$, et **tout point d'une bissectrice
est à égale distance des deux côtés de l'angle**. Donc $d = d'$, et

$$\frac{\text{aire}(ABI)}{\text{aire}(ACI)} = \frac{AB \times d}{AC \times d} = \frac{AB}{AC} . \qquad (2)$$

**On conclut.** Les deux calculs portent sur le même rapport d'aires, donc $(1)$ et $(2)$
donnent

$$\frac{IB}{IC} = \frac{AB}{AC} .$$

## Going further

Ce résultat porte le nom de **théorème de la bissectrice**. Il dit que la bissectrice issue
de $A$ coupe le côté opposé dans le rapport des deux autres côtés. En particulier, elle passe
par le milieu de $[BC]$ si et seulement si $AB = AC$, c'est-à-dire si et seulement si le
triangle est isocèle en $A$.

En voici une deuxième démonstration, purement géométrique. Traçons la parallèle à $(AI)$
passant par $C$ ; elle coupe la droite $(AB)$ en un point $D$. D'après le théorème de Thalès
dans le triangle $BDC$,

$$\frac{IB}{IC} = \frac{AB}{AD} .$$

Il suffit donc de montrer que $AD = AC$. Or l'angle $\widehat{ADC}$ est égal à
$\widehat{BAI}$ (angles correspondants) et l'angle $\widehat{ACD}$ est égal à
$\widehat{IAC}$ (angles alternes-internes). Ces deux angles en $A$ étant égaux puisque
$(AI)$ est la bissectrice, le triangle $ACD$ est isocèle en $A$, donc $AD = AC$.
