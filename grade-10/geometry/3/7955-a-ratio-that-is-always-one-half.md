---
id: "7955"
title: "Un rapport qui vaut toujours un demi"
grade: 10
theme: geometry
difficulty: 3
duration_min: 30
tags: [theoreme des milieux, symetrie axiale, triangle isocele, bissectrice]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 31, niveau 1 (énoncé p. 282 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $B$. Soit $F$ un point de la bissectrice de l'angle $\widehat{ABC}$ tel que la droite $(AF)$ soit parallèle à $(BC)$. Soit $E$ le milieu de $[BC]$ et soit $D$ le symétrique de $A$ par rapport à $F$.

Calculer le rapport des distances $\dfrac{EF}{BD}$.

![Le triangle isocèle ABC, la bissectrice issue de B, le point F, le milieu E de [BC] et le symétrique D de A par rapport à F](7955-figure-1.svg)

## Hints

1. « $D$ est le symétrique de $A$ par rapport à $F$ » : que peut-on dire de $F$ dans le segment $[AD]$ ?
2. Introduis $M$, le milieu de $[AB]$, et regarde le triangle $ABD$. Que dit le théorème des milieux sur $MF$ ?
3. Il reste à comparer $EF$ et $MF$. Quelle transformation du plan laisse le triangle $ABC$ inchangé ?
4. Cette transformation échange $A$ et $C$. Où envoie-t-elle $M$ ? Et que fait-elle du point $F$ ?

## Solution

**La réponse : $\dfrac{EF}{BD} = \dfrac{1}{2}$, quel que soit le triangle isocèle de départ.**

**Étape 1 : $F$ est le milieu de $[AD]$.**

Par définition, $D$ est le symétrique de $A$ par rapport au point $F$ : cela signifie exactement que $F$ est le milieu du segment $[AD]$.

**Étape 2 : le théorème des milieux dans le triangle $ABD$.**

Notons $M$ le milieu de $[AB]$.

Dans le triangle $ABD$, le point $M$ est le milieu de $[AB]$ et le point $F$ est le milieu de $[AD]$. D'après le théorème des milieux,

$$MF = \frac{BD}{2} .$$

**Étape 3 : la symétrie qui sauve tout.**

Le triangle $ABC$ est isocèle en $B$, donc $BA = BC$. La bissectrice de l'angle $\widehat{ABC}$ est alors l'axe de symétrie du triangle : la symétrie d'axe cette bissectrice, appelons-la $\sigma$, échange les deux côtés $[BA]$ et $[BC]$, donc

$$\sigma(A) = C \qquad \text{et} \qquad \sigma(B) = B .$$

Une symétrie axiale conserve les milieux. Comme $M$ est le milieu de $[BA]$ et $E$ le milieu de $[BC]$, on a

$$\sigma(M) = E .$$

Enfin, le point $F$ est **sur l'axe** de la symétrie, donc $\sigma(F) = F$.

Une symétrie axiale conserve les distances, donc

$$FM = \sigma(F)\,\sigma(M) = FE .$$

**Étape 4 : on conclut.**

$$EF = MF = \frac{BD}{2} , \qquad \text{donc} \qquad \frac{EF}{BD} = \frac12 .$$

**Conclusion.** Le rapport vaut toujours $\boxed{\dfrac12}$, quelles que soient les dimensions du triangle isocèle.

## Going further

Où l'hypothèse « $(AF)$ parallèle à $(BC)$ » a-t-elle servi ? Nulle part dans la démonstration ! Elle sert seulement à **définir** le point $F$ : c'est elle qui dit où placer $F$ sur la bissectrice. Le raisonnement, lui, montre bien plus : pour **n'importe quel** point $F$ de la bissectrice, on a $EF = \frac{BD}{2}$ où $D$ est le symétrique de $A$ par rapport à $F$.
