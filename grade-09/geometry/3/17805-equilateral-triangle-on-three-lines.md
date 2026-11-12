---
id: "17805"
title: "Un triangle équilatéral sur trois droites"
grade: 9
theme: geometry
difficulty: 3
duration_min: 25
tags: [construction, rotation, triangle-equilateral]
adapted_from: null
see_also: ["7440"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Débutants"
  reference: "stage_junior_2014.pdf, chapitre « Débutants », géométrie (mardi après-midi, vecteurs et transformations), exercice 3, p.32 ; solution p.33"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

On donne trois droites distinctes $(d_1)$, $(d_2)$ et $(d_3)$ du plan. Elles peuvent être parallèles ou non.

Expliquer comment construire un triangle équilatéral $A_1A_2A_3$, non réduit à un point, tel que $A_1$ soit sur $(d_1)$, $A_2$ sur $(d_2)$ et $A_3$ sur $(d_3)$. Démontrer que la construction marche toujours.

## Hints

1. Supposez le problème résolu. Quelle transformation de centre $A_1$ envoie $A_2$ sur $A_3$ ?
2. La rotation de centre $A_1$ et d'angle $60^\circ$ envoie $A_2$ sur $A_3$. Le point $A_2$ est sur $(d_2)$ : où se trouve alors son image $A_3$ ?
3. Choisissez d'abord $A_1$ sur $(d_1)$, n'importe où (ou presque). Que faire si l'image de $(d_2)$ ne coupe pas $(d_3)$ ?

## Solution

**Un outil : la rotation.** La rotation de centre $O$ et d'angle $60^\circ$ fait tourner chaque point $M$ autour de $O$ de $60^\circ$, dans un sens fixé : son image $M'$ vérifie $OM' = OM$ et $\widehat{MOM'} = 60^\circ$. Elle conserve les longueurs et les angles. L'image d'une droite est donc une droite, et cette image fait un angle de $60^\circ$ avec la droite de départ.

**L'idée.** Supposons le triangle $A_1A_2A_3$ trouvé. Alors $A_1A_2 = A_1A_3$ et $\widehat{A_2A_1A_3} = 60^\circ$ : la rotation de centre $A_1$ et d'angle $60^\circ$ (dans le bon sens) envoie $A_2$ sur $A_3$. Comme $A_2$ est sur $(d_2)$, le point $A_3$ est sur l'image de $(d_2)$ par cette rotation. Il est aussi sur $(d_3)$ : on le trouve à l'intersection de ces deux droites.

**La construction.**

1. Choisir un point $A_1$ sur $(d_1)$ qui n'est pas sur $(d_2)$. C'est possible, car $(d_1)$ et $(d_2)$ sont distinctes : elles ont au plus un point commun.
2. Construire l'image $(d_2')$ de $(d_2)$ par la rotation $r$ de centre $A_1$ et d'angle $60^\circ$ dans le sens des aiguilles d'une montre. En pratique, on construit les images de deux points de $(d_2)$ et on trace la droite qui les joint.
3. Si $(d_2')$ coupe $(d_3)$ en un seul point, appeler ce point $A_3$. Sinon, recommencer l'étape 2 avec la rotation de même centre dans l'autre sens, et appeler $A_3$ le point où la nouvelle image coupe $(d_3)$.
4. Le point $A_2$ est le point de $(d_2)$ dont l'image par la rotation choisie est $A_3$. On l'obtient en faisant tourner $A_3$ de $60^\circ$ autour de $A_1$, dans le sens contraire.

**Pourquoi l'étape 3 réussit toujours.** L'image de $(d_2)$ par la rotation dans un sens fait un angle de $60^\circ$ avec $(d_2)$, et l'image par la rotation dans l'autre sens fait aussi $60^\circ$ avec $(d_2)$, mais de l'autre côté. Ces deux images font donc entre elles un angle de $120^\circ$ : elles ne sont pas parallèles. Elles ne peuvent pas être parallèles toutes les deux à $(d_3)$ (ni confondues avec elle), donc l'une des deux coupe $(d_3)$ en un seul point.

**Pourquoi le triangle est équilatéral.** Par construction, $A_2$ est sur $(d_2)$, $A_3$ sur $(d_3)$, et la rotation de centre $A_1$ d'angle $60^\circ$ envoie $A_2$ sur $A_3$. Donc $A_1A_2 = A_1A_3$ et $\widehat{A_2A_1A_3} = 60^\circ$. Le triangle $A_1A_2A_3$ est isocèle en $A_1$, et ses deux angles à la base valent chacun

$$\frac{180^\circ - 60^\circ}{2} = 60^\circ .$$

Ses trois angles valent $60^\circ$ : il est équilatéral. Enfin $A_2 \neq A_1$, car $A_2$ est sur $(d_2)$ et $A_1$ n'y est pas : le triangle n'est pas réduit à un point.

**Conclusion.** En choisissant $A_1$ sur $(d_1)$ hors de $(d_2)$, puis $A_3$ à l'intersection de $(d_3)$ et de l'image de $(d_2)$ par une rotation de centre $A_1$ et d'angle $60^\circ$ (dans le sens qui convient), on obtient toujours un triangle équilatéral qui répond à la question.

## Going further

Le choix de $A_1$ sur $(d_1)$ était libre : il y a donc une infinité de triangles qui conviennent. Quand les trois droites sont parallèles, on retrouve un problème classique, avec la même construction.
