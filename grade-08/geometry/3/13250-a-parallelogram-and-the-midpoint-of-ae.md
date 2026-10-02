---
id: "13250"
title: "Un parallélogramme et le milieu de [AE]"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [parallelogramme, droite-des-milieux, triangle-isocele, milieu]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath d'automne 2017"
  reference: "2017-10_coupe_automne_2017.pdf, énoncés communs, exercice 5 ; corrigé 2017-10_coupe_automne_2017_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/coupe_automne_2017.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-10_coupe_automne_2017.pdf"
---

## Statement

On trace un triangle $ABC$ isocèle en $A$, puis la droite $(d)$ perpendiculaire à $(BC)$ passant par $C$. On choisit un point $D$ sur $(d)$, et on place le point $E$ de sorte que $AEDB$ soit un parallélogramme. Enfin, on note $M$ le point d'intersection des droites $(AE)$ et $(d)$.

Démontrer que $M$ est le milieu de $[AE]$.

## Hints

1. Fais une figure soignée. Note $H$ le milieu de $[BC]$. Que peux-tu dire des droites $(AH)$ et $(d)$ ?
2. Note $K$ le milieu de $[BD]$. Dans le triangle $BCD$, que dit le théorème de la droite des milieux sur la droite $(HK)$ ?
3. Déduis-en que $K$ est sur la droite $(AH)$.
4. Note $N$ le milieu de $[AE]$ et montre que $ANDK$ est un parallélogramme.

## Solution

**La hauteur issue de $A$.** Notons $H$ le milieu de $[BC]$. Le triangle $ABC$ est isocèle en $A$, donc la médiane $(AH)$ est aussi la hauteur : $(AH)$ est perpendiculaire à $(BC)$. La droite $(d)$ est elle aussi perpendiculaire à $(BC)$, donc $(AH)$ et $(d)$ sont parallèles.

**Le milieu de $[BD]$ est sur $(AH)$.** Notons $K$ le milieu de $[BD]$. Dans le triangle $BCD$, la droite $(HK)$ passe par les milieux de deux côtés, donc elle est parallèle au troisième côté $(CD)$, c'est-à-dire à $(d)$. Les droites $(HK)$ et $(HA)$ passent toutes deux par $H$ et sont parallèles à $(d)$ : elles sont confondues. Donc $K$ est sur la droite $(AH)$.

(Si $D = C$, le point $K$ est $H$ lui-même, et la conclusion reste vraie.)

**Le milieu de $[AE]$.** Notons $N$ le milieu de $[AE]$. Comme $AEDB$ est un parallélogramme, les segments $[AE]$ et $[BD]$ sont parallèles, de même longueur et orientés dans le même sens (de $A$ vers $E$ comme de $B$ vers $D$). Leurs moitiés $[AN]$ et $[KD]$ sont donc parallèles, de même longueur et orientées dans le même sens.

Un quadrilatère dont deux côtés opposés sont parallèles et de même longueur, sans être croisé, est un parallélogramme. Donc $ANDK$ est un parallélogramme, et ses côtés $(ND)$ et $(AK)$ sont parallèles.

**On conclut.** La droite $(AK)$ est la droite $(AH)$, parallèle à $(d)$. Donc $(ND)$ est parallèle à $(d)$, et comme $D$ est sur $(d)$, la droite $(ND)$ est la droite $(d)$ elle-même : $N$ est sur $(d)$.

Ainsi $N$ est à la fois sur $(AE)$ et sur $(d)$. Ces deux droites ne sont pas parallèles (car $(AE)$ est parallèle à $(BD)$, qui coupe $(d)$ en $D$), donc elles n'ont qu'un point commun, qui est $M$.

**Conclusion.** $N = M$ : le point $M$ est le milieu de $[AE]$.
