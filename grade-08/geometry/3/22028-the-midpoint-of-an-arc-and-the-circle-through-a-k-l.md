---
id: "22028"
title: "Le milieu d'un arc et le cercle qui passe par A, K, L"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [angle-inscrit, triangles-isometriques, milieu-d-arc, cercle-circonscrit, chasse-aux-angles]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe B"
  reference: "valbonne-2023.pdf, chapitre IV « Groupe B », deuxième partie, « Entraînement de mi-parcours », exercice 4"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Soit $ABC$ un triangle dont les trois angles sont aigus. Soit $D$ un point du segment $[AC]$ et $E$ un point du segment $[AB]$ tels que $B$, $C$, $D$ et $E$ sont sur un même cercle $\omega$.

Soit $K$ le point de la demi-droite $[BD)$ tel que $BK = AC$, et $L$ le point de la demi-droite $[CE)$ tel que $CL = AB$.

Enfin, soit $O$ le milieu de l'arc $BC$ de $\omega$ qui contient $D$ et $E$ : c'est le point de cet arc tel que $OB = OC$.

Démontrer que $O$ est le centre du cercle circonscrit au triangle $AKL$.

## Hints

1. Il faut montrer que $OA = OK = OL$. Cherchez deux triangles superposables, l'un avec le côté $[OK]$, l'autre avec le côté $[OA]$.
2. Comparez les triangles $OBK$ et $OCA$. Quels côtés sont égaux ?
3. Les angles $\widehat{DBO}$ et $\widehat{DCO}$ sont deux angles inscrits dans $\omega$ qui interceptent le même arc.

## Solution

**Un outil : les angles inscrits.** Si $U$, $V$, $X$, $Y$ sont quatre points d'un cercle, et si $X$ et $Y$ sont du même côté de la droite $(UV)$, alors $\widehat{UXV} = \widehat{UYV}$. (Les deux angles valent la moitié de l'angle au centre qui intercepte l'arc $UV$.)

**Étape 1 : deux angles inscrits égaux.** Sur le cercle $\omega$, l'arc $BC$ qui contient $D$ et $E$ contient aussi $O$. Sur cet arc, la portion qui va de $D$ à $O$ ne contient ni $B$ ni $C$. Donc $B$ et $C$ sont tous deux sur l'autre arc d'extrémités $D$ et $O$, c'est-à-dire du même côté de la droite $(DO)$. Par l'outil,

$$\widehat{DBO} = \widehat{DCO}.$$

(Si $O = D$, ces deux angles sont nuls, et ce qui suit reste vrai.)

**Étape 2 : deux triangles isométriques.** Comparons les triangles $OBK$ et $OCA$.

- $OB = OC$, par définition de $O$.
- $BK = CA$, par définition de $K$.
- $K$ est sur la demi-droite $[BD)$, donc $\widehat{OBK} = \widehat{OBD}$. Le point $D$ est sur le segment $[CA]$, donc $\widehat{OCA} = \widehat{OCD}$. Avec l'étape 1, $\widehat{OBK} = \widehat{OCA}$.

Les deux triangles ont un angle égal compris entre deux côtés égaux deux à deux : ils sont isométriques. Le côté $[OK]$ du premier correspond au côté $[OA]$ du second, donc $OK = OA$.

**Étape 3 : la même chose avec $L$.** On recommence en échangeant les rôles de $B$ et $C$, et de $D$ et $E$. Le point $E$ est lui aussi sur l'arc $BC$ qui contient $O$, donc, comme à l'étape 1, $\widehat{ECO} = \widehat{EBO}$. Dans les triangles $OCL$ et $OBA$ :

- $OC = OB$ ;
- $CL = BA$, par définition de $L$ ;
- $\widehat{OCL} = \widehat{OCE} = \widehat{OBE} = \widehat{OBA}$, car $L$ est sur la demi-droite $[CE)$ et $E$ sur le segment $[BA]$.

Ces deux triangles sont isométriques, donc $OL = OA$.

**Conclusion.** On a $OK = OA = OL$ : le point $O$ est à la même distance des trois sommets du triangle $AKL$. C'est donc le centre de son cercle circonscrit.

## Going further

1. Soit $G$ le symétrique de $A$ par rapport à la médiatrice de $[BC]$. Montrez que $G$ est lui aussi sur le cercle circonscrit au triangle $AKL$.
2. Où a-t-on utilisé que $D$ est sur le segment $[AC]$, et pas seulement sur la droite $(AC)$ ?
