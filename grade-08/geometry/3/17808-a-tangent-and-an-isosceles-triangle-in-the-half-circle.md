---
id: "17808"
title: "Une tangente et un triangle isocèle dans le demi-cercle"
grade: 8
theme: geometry
difficulty: 3
duration_min: 20
tags: [tangente, cercle-de-diametre, triangle-isocele, triangle-rectangle, chasse-aux-angles]
adapted_from: null
see_also: ["8858"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie, mercredi matin, « Le théorème de l'angle inscrit » (Jean-Louis Tu), exercice 3, p.38 ; solution p.38 (par les angles orientés)"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABC$ un triangle rectangle et isocèle en $C$, et $\Gamma$ le cercle qui passe par $A$, $B$ et $C$.

Soit $P$ un point du segment $[AB]$, différent de $A$, de $B$ et du milieu de $[AB]$. La droite $(CP)$ recoupe le cercle $\Gamma$ en un point $D$. La tangente au cercle $\Gamma$ en $D$ coupe la droite $(AB)$ en un point $E$.

Montrer que le triangle $DEP$ est isocèle en $E$.

## Hints

1. Où est le centre $O$ du cercle $\Gamma$ ? Quelle est la position de la droite $(OC)$ par rapport à $(AB)$ ?
2. La tangente en $D$ est perpendiculaire au rayon $[OD]$.
3. Le triangle $OCD$ est isocèle. Appelez $x$ ses deux angles à la base et exprimez $\widehat{EDP}$ et $\widehat{EPD}$ à l'aide de $x$.

## Solution

On se place dans le cas où $P$ est entre $A$ et le milieu $O$ de $[AB]$ ; l'autre cas est symétrique. Le point $D$ est de l'autre côté de $(AB)$ que $C$, et $E$ est au-delà de $A$.

**Étape 1 : le centre du cercle.** Le triangle $ABC$ est rectangle en $C$, donc son hypoténuse $[AB]$ est un diamètre de $\Gamma$ : le centre de $\Gamma$ est le milieu $O$ de $[AB]$. Le triangle est aussi isocèle en $C$, donc la médiane $(CO)$ est aussi une hauteur : $(OC) \perp (AB)$.

**Étape 2 : le triangle $OCD$.** On a $OC = OD$ (deux rayons), donc le triangle $OCD$ est isocèle en $O$. Notons $x$ ses deux angles à la base :

$$\widehat{OCD} = \widehat{ODC} = x .$$

**Étape 3 : l'angle en $D$.** Une tangente à un cercle est perpendiculaire au rayon au point de contact : $\widehat{ODE} = 90^\circ$. Le point $P$ est sur le segment $[EO]$, donc la demi-droite $[DP)$ est à l'intérieur de l'angle $\widehat{ODE}$, et

$$\widehat{EDP} = \widehat{EDO} - \widehat{ODP} = 90^\circ - x ,$$

car $\widehat{ODP} = \widehat{ODC} = x$ (les points $C$, $P$, $D$ sont alignés).

**Étape 4 : l'angle en $P$.** Le triangle $OPC$ est rectangle en $O$ (étape 1), donc

$$\widehat{OPC} = 90^\circ - \widehat{OCP} = 90^\circ - x .$$

Les droites $(EO)$ et $(DC)$ se coupent en $P$, et les angles $\widehat{EPD}$ et $\widehat{OPC}$ sont opposés par le sommet : ils sont égaux. Donc $\widehat{EPD} = 90^\circ - x$.

**Conclusion.** Dans le triangle $DEP$, les angles en $D$ et en $P$ valent tous les deux $90^\circ - x$ : **le triangle $DEP$ est isocèle en $E$**, c'est-à-dire $ED = EP$.

## Going further

Le point $C$ est le milieu de l'arc $AB$ qui ne contient pas $D$, donc la droite $(DC)$ est la bissectrice de l'angle $\widehat{ADB}$. L'exercice est un cas particulier d'un résultat plus général : dans un triangle $ADB$, la tangente en $D$ au cercle circonscrit et la bissectrice issue de $D$ coupent $(AB)$ en deux points qui forment avec $D$ un triangle isocèle.
