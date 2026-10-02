---
id: "13269"
title: "Un parallélogramme avec l'orthocentre et le centre du cercle circonscrit"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [orthocentre, cercle-circonscrit, mediatrice, parallelogramme, hauteurs]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2019"
  reference: "2019-10_coupe_animath_automne_2019_sujet.pdf, exercices lycéens, exercice 15 ; corrigé 2019-10_Corrige.pdf. On ajoute dans l'énoncé que le triangle n'a pas d'angle droit : sinon le quadrilatère est aplati (deux de ses sommets sont confondus)."
  url: "https://maths-olympiques.fr/wp-content/uploads/2019/10/coupe_animath_automne_2019_sujet.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2019-10_coupe_animath_automne_2019_sujet.pdf"
---

## Statement

Soit $ABC$ un triangle sans angle droit. Soit $E$ le pied de la hauteur issue de $B$ et $F$ le pied de la hauteur issue de $C$. On note $H$ le point d'intersection des droites $(BE)$ et $(CF)$, et $O$ le centre du cercle circonscrit au triangle $ABC$.

Démontrer que, si $AF = FC$, alors le quadrilatère $EHFO$ est un parallélogramme.

## Hints

1. Il suffit de montrer que $(EH)$ est parallèle à $(FO)$ et que $(HF)$ est parallèle à $(OE)$.
2. Les points $O$ et $F$ sont tous les deux à la même distance de $A$ et de $C$. Sur quelle droite sont-ils ?
3. Le triangle $AFC$ est rectangle et isocèle. Que vaut l'angle en $A$ ? Qu'en déduis-tu pour le triangle $AEB$ ?

## Solution

On va montrer que les côtés opposés du quadrilatère $EHFO$ sont parallèles : $(EH)$ parallèle à $(FO)$, et $(HF)$ parallèle à $(OE)$.

On utilise une propriété de la médiatrice : un point est à la même distance de deux points $P$ et $Q$ exactement quand il est sur la médiatrice de $[PQ]$. Deux points distincts qui sont tous deux à égale distance de $P$ et de $Q$ définissent donc la médiatrice de $[PQ]$, qui est perpendiculaire à $(PQ)$.

**Première paire de côtés.** Le centre $O$ du cercle circonscrit est à la même distance de $A$ et de $C$, et $F$ aussi puisque $FA = FC$. Les points $O$ et $F$ sont distincts : sinon $O$ serait sur le côté $(AB)$, et le triangle serait rectangle en $C$. Donc $(FO)$ est la médiatrice de $[AC]$, perpendiculaire à $(AC)$.

D'autre part, la droite $(EH)$ est la droite $(BE)$, la hauteur issue de $B$, elle aussi perpendiculaire à $(AC)$. Deux droites perpendiculaires à une même droite sont parallèles : $(EH)$ est parallèle à $(FO)$.

**L'angle en $A$.** Le triangle $AFC$ est rectangle en $F$ (car $(CF)$ est une hauteur) et isocèle puisque $FA = FC$. Ses deux angles aigus valent donc $45^\circ$. Cet angle en $A$ est l'angle aigu formé par les droites $(AB)$ et $(AC)$.

**Le triangle $AEB$.** Il est rectangle en $E$ (car $(BE)$ est une hauteur), et son angle aigu en $A$ est lui aussi l'angle aigu formé par les droites $(AC)$ et $(AB)$, c'est-à-dire $45^\circ$. Son troisième angle vaut $180^\circ - 90^\circ - 45^\circ = 45^\circ$ : le triangle $AEB$ est rectangle isocèle en $E$, donc $EA = EB$.

**Seconde paire de côtés.** Les points $O$ et $E$ sont tous deux à la même distance de $A$ et de $B$. Ils sont distincts : sinon $O$ serait sur le côté $(AC)$, et le triangle serait rectangle en $B$. Donc $(EO)$ est la médiatrice de $[AB]$, perpendiculaire à $(AB)$. Or $(HF)$ est la hauteur $(CF)$, elle aussi perpendiculaire à $(AB)$. Donc $(HF)$ est parallèle à $(OE)$.

**Conclusion.** Les côtés opposés du quadrilatère $EHFO$ sont parallèles deux à deux : c'est un parallélogramme.
