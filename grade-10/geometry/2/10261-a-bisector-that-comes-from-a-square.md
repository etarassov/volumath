---
id: "10261"
title: "Une bissectrice qui vient d'un carré"
grade: 10
theme: geometry
difficulty: 2
duration_min: 20
tags: [angle-inscrit, bissectrice, carre, symetrie-axiale, cocyclicite, triangle-rectangle]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2023-2024 n° 1 (géométrie)"
  reference: "2023-11_Sujet-envoi-1-2023-2024.pdf, Exercices Juniors, exercice 3 (repris en Exercices Seniors, exercice 12) ; corrigé 2023-04_Corrige-envoi-1-2023-2024.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/11/Sujet-envoi-1-2023-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2023-11_Sujet-envoi-1-2023-2024.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle en $B$, avec $BC < BA$. Soit $D$ le point du segment $[AB]$ tel que $BD = BC$.

La perpendiculaire à $(AC)$ passant par $D$ coupe $(AC)$ en $E$. Soit $B'$ le symétrique de $B$ par rapport à la droite $(CD)$.

Montrer que la droite $(EC)$ est la bissectrice de l'angle $\widehat{BEB'}$.

![Le triangle ABC rectangle en B, le point D, le pied E de la perpendiculaire à (AC), le point B′ et les segments [EB] et [EB′]](10261-figure-1.svg)

## Hints

1. Quelle est la nature du quadrilatère $BDB'C$ ?
2. Trois angles droits ont pour côtés $[CD]$ vus depuis $B$, $B'$ et $E$. Quel cercle passe par les cinq points $B$, $D$, $B'$, $C$, $E$ ?
3. Dans ce cercle, les cordes $[BC]$ et $[CB']$ ont la même longueur. Que peut-on dire des angles inscrits qui les interceptent ?

## Solution

*Rappels.*

- *Cercle de diamètre $[CD]$.* Un point $X$ distinct de $C$ et $D$ est sur le cercle de diamètre $[CD]$ exactement quand $\widehat{CXD} = 90°$.
- *Angles inscrits.* Si $X$, $Y$, $U$, $V$ sont sur un même cercle et si $U$ et $V$ sont du même côté de la droite $(XY)$, alors $\widehat{XUY} = \widehat{XVY}$.

![Le carré BDB′C, le cercle de diamètre [CD] qui passe par B, D, B′, C et E](10261-figure-2.svg)

**Étape 1 : un carré.** Le triangle $BCD$ est rectangle en $B$ et $BC = BD$ : il est rectangle isocèle, et ses angles en $C$ et en $D$ valent $45°$. Son symétrique par rapport à $(CD)$ est le triangle $B'CD$, lui aussi rectangle en $B'$, avec $B'C = BC$ et $B'D = BD$. Le quadrilatère $BDB'C$ a donc quatre côtés égaux, c'est un losange, et il a un angle droit en $B$ : c'est un carré. En particulier, $(CB')$ est parallèle à $(BD)$, donc à $(AB)$, et $(DB')$ est parallèle à $(BC)$. La diagonale $[BB']$ fait un angle de $45°$ avec les côtés : $\widehat{CBB'} = 45°$.

**Étape 2 : un cercle.** Les angles $\widehat{CBD}$, $\widehat{CB'D}$ et $\widehat{CED}$ sont droits. D'après le premier rappel, les cinq points $B$, $D$, $B'$, $C$, $E$ sont sur le cercle de diamètre $[CD]$.

**Étape 3 : où est $E$.** Dans le triangle $ADC$, l'angle en $A$ est aigu, et l'angle en $C$ aussi : $\widehat{ACD} = \widehat{ACB} - 45° < 90°$. Le pied $E$ de la perpendiculaire issue de $D$ est donc à l'intérieur du segment $[AC]$, distinct de $A$ et de $C$. On en déduit deux choses.

- $E$ et $D$ sont du même côté de $(BC)$, celui de $A$.
- $E$ et $B$ sont du même côté de $(CB')$. En effet, $(CB')$ est parallèle à $(AB)$, donc $A$ et $B$ sont du même côté de $(CB')$, et $E$, qui est sur $[CA]$ sans être en $C$, est du côté de $A$.

**Étape 4 : deux angles de $45°$.** Les points $E$ et $D$ sont sur le cercle, du même côté de $(BC)$. D'après le second rappel,

$$\widehat{BEC} = \widehat{BDC} = 45°.$$

Les points $E$ et $B$ sont sur le cercle, du même côté de $(CB')$. D'après le second rappel,

$$\widehat{CEB'} = \widehat{CBB'} = 45°.$$

**Étape 5 : $(EC)$ est entre $(EB)$ et $(EB')$.** Il reste à voir que $B$ et $B'$ sont de part et d'autre de la droite $(EC)$, qui est la droite $(AC)$. La droite $(DB')$ est parallèle à $(BC)$ ; elle coupe $(AC)$ en un point $F$, et le théorème de Thalès dans le triangle $ABC$ donne

$$\frac{DF}{BC} = \frac{AD}{AB} < 1, \quad \text{donc} \quad DF < BC = DB'.$$

Le point $F$ est donc strictement entre $D$ et $B'$ : $D$ et $B'$ sont de part et d'autre de $(AC)$. Enfin $B$ est du même côté que $D$, car la droite $(AC)$ coupe $(AB)$ en $A$, hors du segment $[BD]$.

**Conclusion.** Les demi-droites $[EB)$ et $[EB')$ sont de part et d'autre de $(EC)$ et font toutes les deux un angle de $45°$ avec $[EC)$. **Donc $(EC)$ est la bissectrice de l'angle $\widehat{BEB'}$, et cet angle est droit.**

*Remarques.*

- On peut se passer de l'hypothèse $BD = BC$ pour l'égalité des deux angles : en reprenant l'étape 4, $\widehat{BEC} = \widehat{BDC}$, puis $\widehat{BDC} = \widehat{CDB'}$ par la symétrie d'axe $(CD)$, puis $\widehat{CDB'} = \widehat{CEB'}$ par angle inscrit. Mais il faut alors refaire l'étude des positions sans l'aide du carré.
- L'hypothèse $BC < BA$ sert à placer $D$ sur le segment $[AB]$, strictement entre $B$ et $A$.
