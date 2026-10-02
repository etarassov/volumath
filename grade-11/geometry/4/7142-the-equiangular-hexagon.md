---
id: "7142"
title: "L'hexagone aux six angles égaux"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [hexagone, triangle-equilateral, construction-auxiliaire, angles]
adapted_from: null
see_also: ["10039"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior 2013-2016 (Cachan), stage 2014"
  reference: "stage_junior_2014.pdf, « Avancés : géométrie », mardi et mercredi matin (Vincent Jugé), exercice 2 (JBMO 2000, liste courte, problème G5)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCDEF$ un hexagone convexe dont les six angles sont égaux.

Montrer que

$$AB - DE = EF - BC = CD - FA .$$

## Hints

1. Combien vaut chaque angle intérieur d'un hexagone dont les six angles sont égaux ? Et
   chaque angle extérieur ?
2. Prolonge les côtés $[FA]$, $[BC]$ et $[DE]$. Que forment les trois droites obtenues ?
3. Nomme leurs points d'intersection $G$, $H$, $I$. Regarde les petits triangles qu'on a
   ajoutés aux coins, par exemple celui qui contient $A$ et $B$ : quelle est sa nature ?
4. Exprime chaque côté du grand triangle comme une somme de trois morceaux.

## Solution

**Les angles.** La somme des angles d'un hexagone vaut $(6-2) \times 180^\circ = 720^\circ$.
Les six angles étant égaux, chacun vaut

$$\frac{720^\circ}{6} = 120^\circ .$$

Chaque angle **extérieur** vaut donc $180^\circ - 120^\circ = 60^\circ$.

**La construction.** Prolongeons les trois côtés $[FA]$, $[BC]$ et $[DE]$ en droites
entières, et notons

- $G$ le point d'intersection de $(FA)$ et $(BC)$,
- $H$ le point d'intersection de $(BC)$ et $(DE)$,
- $I$ le point d'intersection de $(DE)$ et $(FA)$.

**Quatre triangles équilatéraux.** Considérons le triangle $ABG$. Ses angles en $A$ et en
$B$ sont les angles extérieurs de l'hexagone en ces sommets, donc valent $60^\circ$ chacun.
Le troisième en vaut donc $60^\circ$ aussi : **le triangle $ABG$ est équilatéral.**

Posons $a = AB$, de sorte que $AG = BG = a$.

Le même raisonnement dans les deux autres coins donne deux triangles équilatéraux $CDH$ et
$EFI$. Posons $b = CD$ et $c = EF$, de sorte que

$$CH = DH = b \qquad \text{et} \qquad EI = FI = c .$$

Enfin, le grand triangle $GHI$ a ses trois angles égaux à $60^\circ$ : il est lui aussi
équilatéral. Notons $s$ la longueur de son côté.

**Les trois côtés du grand triangle.** En parcourant chaque côté de $GHI$, on rencontre
successivement un morceau de petit triangle, un côté de l'hexagone, puis un autre morceau de
petit triangle :

$$GH = GB + BC + CH = a + BC + b = s ,$$
$$HI = HD + DE + EI = b + DE + c = s ,$$
$$IG = IF + FA + AG = c + FA + a = s .$$

On en tire

$$BC = s - a - b, \qquad DE = s - b - c, \qquad FA = s - c - a .$$

**Les trois différences.** Il ne reste qu'à calculer :

$$AB - DE = a - (s - b - c) = a + b + c - s ,$$
$$EF - BC = c - (s - a - b) = a + b + c - s ,$$
$$CD - FA = b - (s - c - a) = a + b + c - s .$$

Les trois différences valent toutes $a + b + c - s$ : elles sont donc égales.

$$AB - DE = EF - BC = CD - FA .$$

## Going further

L'astuce de la démonstration est de **compléter** l'hexagone en un triangle équilatéral, en
prolongeant un côté sur deux. C'est un réflexe utile devant un polygone équiangle : ses côtés
ont des directions imposées, et le compléter en une figure régulière simple fait apparaître
les relations cachées.

La réciproque est vraie aussi, et se démontre par la même construction lue à l'envers : si
six longueurs $AB$, $BC$, …, $FA$ vérifient les deux égalités de l'énoncé, alors elles sont
les côtés d'un hexagone équiangle. C'est donc une caractérisation complète.

Une question pour continuer : que devient le résultat pour un **octogone** dont les huit
angles sont égaux ?
