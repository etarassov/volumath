---
id: "17807"
title: "Deux bissectrices et un triangle isocèle"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [angle-inscrit, bissectrice, cercle-circonscrit, triangle-isocele, chasse-aux-angles]
adapted_from: null
see_also: ["10276"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 1, p.37 ; solution p.37"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle et $\Gamma$ le cercle qui passe par ses trois sommets.

- La bissectrice de l'angle $\widehat{ABC}$ recoupe le cercle $\Gamma$ en $D$.
- La bissectrice de l'angle $\widehat{ACB}$ recoupe le cercle $\Gamma$ en $E$.
- La droite $(DE)$ coupe le côté $[AB]$ en $F$ et le côté $[AC]$ en $G$.

Montrer que le triangle $AFG$ est isocèle en $A$.

## Hints

1. Notez $\widehat{B}$ et $\widehat{C}$ les angles du triangle en $B$ et en $C$. Que valent $\widehat{ABD}$ et $\widehat{ACE}$ ?
2. L'angle $\widehat{AFD}$ est un angle extérieur du triangle $AFE$. À quelle somme d'angles est-il égal ?
3. Les angles $\widehat{BAE}$ et $\widehat{BCE}$ interceptent le même arc. De même pour $\widehat{AED}$ et $\widehat{ABD}$.
4. Faites le même calcul pour l'angle $\widehat{AGE}$ dans le triangle $AGD$.

## Solution

**Un outil : le théorème de l'angle inscrit.** Dans un cercle, un angle inscrit vaut la moitié de l'angle au centre qui intercepte le même arc. Par conséquent, deux angles inscrits qui interceptent le même arc, avec leurs sommets du même côté de la corde, sont égaux.

Notons $\widehat{B} = \widehat{ABC}$ et $\widehat{C} = \widehat{ACB}$. Comme $(BD)$ et $(CE)$ sont des bissectrices,

$$\widehat{ABD} = \widehat{DBC} = \frac{\widehat{B}}{2}, \qquad \widehat{ACE} = \widehat{ECB} = \frac{\widehat{C}}{2} .$$

Faites la figure : $E$ est sur l'arc $AB$ qui ne contient pas $C$, $D$ sur l'arc $AC$ qui ne contient pas $B$, et $F$ est entre $E$ et $D$.

**Étape 1 : l'angle en $F$.** Les points $E$, $F$, $D$ sont alignés, donc $\widehat{AFD}$ est un angle extérieur du triangle $AFE$. Il est égal à la somme des deux angles de ce triangle qui ne sont pas en $F$ (car la somme des angles du triangle vaut $180^\circ$) :

$$\widehat{AFD} = \widehat{FAE} + \widehat{FEA} = \widehat{BAE} + \widehat{AED} .$$

- Les angles $\widehat{BAE}$ et $\widehat{BCE}$ interceptent le même arc $BE$, donc $\widehat{BAE} = \widehat{BCE} = \frac{\widehat{C}}{2}$.
- Les angles $\widehat{AED}$ et $\widehat{ABD}$ interceptent le même arc $AD$, donc $\widehat{AED} = \widehat{ABD} = \frac{\widehat{B}}{2}$.

Ainsi

$$\widehat{AFG} = \widehat{AFD} = \frac{\widehat{B} + \widehat{C}}{2} .$$

**Étape 2 : l'angle en $G$.** De la même façon, $\widehat{AGE}$ est un angle extérieur du triangle $AGD$ :

$$\widehat{AGE} = \widehat{GAD} + \widehat{GDA} = \widehat{CAD} + \widehat{ADE} .$$

Les angles $\widehat{CAD}$ et $\widehat{CBD}$ interceptent l'arc $CD$, donc $\widehat{CAD} = \frac{\widehat{B}}{2}$. Les angles $\widehat{ADE}$ et $\widehat{ACE}$ interceptent l'arc $AE$, donc $\widehat{ADE} = \frac{\widehat{C}}{2}$. Ainsi

$$\widehat{AGF} = \widehat{AGE} = \frac{\widehat{B} + \widehat{C}}{2} .$$

**Conclusion.** Les angles $\widehat{AFG}$ et $\widehat{AGF}$ sont égaux, tous les deux à $\frac{\widehat{B} + \widehat{C}}{2}$ : **le triangle $AFG$ est isocèle en $A$.**

## Going further

Le triangle $AFG$ étant isocèle en $A$, la bissectrice de l'angle $\widehat{BAC}$ est perpendiculaire à $(FG)$, c'est-à-dire à $(DE)$. Ainsi la droite $(DE)$ est perpendiculaire à la droite qui joint $A$ au centre du cercle inscrit du triangle $ABC$.
