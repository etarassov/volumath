---
id: "7112"
title: "Quatre angles et le cinquième"
grade: 9
theme: geometry
difficulty: 2
duration_min: 15
tags: [angles, somme-des-angles, triangle, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Lundi : test initial », exercice 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Sur la figure ci-dessous, $ABE$ est un triangle. Le point $C$ est sur la demi-droite
$[BE)$, au-delà de $E$, et le point $D$ est sur le segment $[AE]$.

![Le triangle ABE, le point C au-delà de E sur la droite (BE), le point D sur le segment [AE], et le segment [CD]](7112-figure-1.svg)

On sait que

$$\widehat{EAB} = 55^\circ, \qquad \widehat{ABE} = 40^\circ, \qquad \widehat{DCE} = 35^\circ .$$

Combien vaut l'angle $\widehat{ADC}$ ?

## Hints

1. Commence par le triangle dont tu connais déjà deux angles.
2. Les points $B$, $E$ et $C$ sont alignés. Que peux-tu en déduire sur les angles
   $\widehat{AEB}$ et $\widehat{AEC}$ ?
3. Les points $A$, $D$ et $E$ sont alignés eux aussi, donc l'angle $\widehat{DEC}$ est un
   angle que tu viens de calculer.
4. Il ne reste plus qu'à travailler dans le triangle $CDE$, puis à te souvenir que $A$, $D$
   et $E$ sont alignés.

## Solution

**Premier triangle.** Dans le triangle $ABE$, la somme des angles vaut $180^\circ$, donc

$$\widehat{AEB} = 180^\circ - 55^\circ - 40^\circ = 85^\circ .$$

**On passe de l'autre côté.** Les points $B$, $E$ et $C$ sont alignés, et $E$ est entre $B$
et $C$. Les angles $\widehat{AEB}$ et $\widehat{AEC}$ sont donc supplémentaires :

$$\widehat{AEC} = 180^\circ - 85^\circ = 95^\circ .$$

Comme $D$ est sur le segment $[AE]$, la demi-droite $[ED)$ est la demi-droite $[EA)$. Donc

$$\widehat{DEC} = \widehat{AEC} = 95^\circ .$$

**Deuxième triangle.** Dans le triangle $CDE$, la somme des angles vaut encore $180^\circ$ :

$$\widehat{CDE} = 180^\circ - \widehat{DCE} - \widehat{DEC} = 180^\circ - 35^\circ - 95^\circ = 50^\circ .$$

**Le dernier pas.** Les points $A$, $D$ et $E$ sont alignés, avec $D$ entre $A$ et $E$. Les
angles $\widehat{ADC}$ et $\widehat{CDE}$ sont donc supplémentaires :

$$\widehat{ADC} = 180^\circ - 50^\circ = 130^\circ .$$

**Conclusion.** L'angle cherché vaut $\boxed{130^\circ}$.

## Going further

Ce genre d'exercice s'appelle une **chasse aux angles**. On n'y utilise que deux règles :
la somme des angles d'un triangle vaut $180^\circ$, et deux angles adjacents dont les côtés
extérieurs sont alignés sont supplémentaires. Tout le travail consiste à choisir le bon
triangle à chaque étape, en partant de celui où l'on connaît déjà le plus de choses.

Une question pour continuer : reprends la figure en remplaçant les trois données par
$\alpha$, $\beta$ et $\gamma$. Montre que l'angle cherché vaut toujours
$\alpha + \beta + \gamma$. Vérifie sur l'exemple : $55 + 40 + 35 = 130$.
