---
id: "7442"
title: "Trois distances dans un triangle équilatéral"
grade: 11
theme: geometry
difficulty: 4
duration_min: 40
tags: [triangle-equilateral, angle-inscrit, triangles-semblables, cercle-circonscrit]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, incontournable : géométrie"
  reference: "stage_ete_2011.pdf, « Troisième période », incontournable géométrie, premier TD, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soit $ABC$ un triangle équilatéral et soit $\Gamma$ son cercle circonscrit.

Une droite passant par le sommet $A$ coupe le côté $[BC]$ en un point $Q$, puis recoupe le cercle
$\Gamma$ en un point $P$.

Montrer que
$$\frac{1}{PB} + \frac{1}{PC} = \frac{1}{PQ}.$$

## Hints

1. Mets la relation à démontrer au même dénominateur. Elle devient
   $PQ \times (PB + PC) = PB \times PC$. Il y a donc deux choses à établir.
2. Commence par les angles en $P$. Quelle est la mesure de $\widehat{BPA}$ ? Et celle de
   $\widehat{APC}$ ? Le triangle $ABC$ est équilatéral, donc tous ses angles valent $60°$.
3. Première étape : montrer que $PA = PB + PC$. Place sur le segment $[PA]$ le point $D$ tel que
   $PD = PB$. Que peux-tu dire du triangle $PBD$ ? Puis compare les triangles $ABD$ et $CBP$.
4. Seconde étape : montrer que $PB \times PC = PA \times PQ$. Cherche deux triangles semblables
   ayant $P$ pour sommet commun.

## Solution

Comme $ABC$ est équilatéral, $AB = BC = CA$ et
$$\widehat{ABC} = \widehat{BCA} = \widehat{CAB} = 60°.$$

La droite issue de $A$ traverse le côté $[BC]$, donc elle ressort du cercle par l'arc $BC$ qui ne
contient pas $A$ : le point $P$ est sur cet arc, et $Q$ est situé entre $A$ et $P$.

### Les deux angles en $P$

Les angles inscrits $\widehat{BPA}$ et $\widehat{BCA}$ interceptent le même arc $AB$, du même
côté. Ils sont donc égaux :
$$\widehat{BPA} = \widehat{BCA} = 60°.$$

De même, $\widehat{APC}$ et $\widehat{ABC}$ interceptent le même arc $AC$, donc
$$\widehat{APC} = \widehat{ABC} = 60°.$$

### Première étape : $PA = PB + PC$

Plaçons sur le segment $[PA]$ le point $D$ tel que $PD = PB$.

**Le triangle $PBD$ est équilatéral.** Il est isocèle en $P$ puisque $PD = PB$, et son angle au
sommet est $\widehat{BPD} = \widehat{BPA} = 60°$ (les points $D$ et $A$ sont du même côté de $P$
sur la droite). Un triangle isocèle avec un angle de $60°$ au sommet est équilatéral. Donc
$$BD = BP = PD.$$

**Les triangles $ABD$ et $CBP$ sont superposables.** Comparons-les :

- $BA = BC$, car le triangle $ABC$ est équilatéral ;
- $BD = BP$, qu'on vient d'établir ;
- les angles entre ces côtés sont égaux. En effet
  $$\widehat{ABD} = \widehat{ABP} - \widehat{DBP} = \widehat{ABP} - 60°,$$
  $$\widehat{CBP} = \widehat{ABP} - \widehat{ABC} = \widehat{ABP} - 60°,$$
  car le point $D$ est à l'intérieur de l'angle $\widehat{ABP}$ et le point $C$ aussi.

Deux côtés et l'angle entre eux : les triangles $ABD$ et $CBP$ sont superposables, et donc
$$AD = CP.$$

**Conclusion de l'étape.** Le point $D$ est sur le segment $[PA]$, donc
$$PA = PD + DA = PB + PC.$$

### Seconde étape : $PB \times PC = PA \times PQ$

Comparons les triangles $PBQ$ et $PAC$.

- Comme $Q$ est sur le segment $[AP]$, les demi-droites $[PQ)$ et $[PA)$ sont la même. Donc
  $$\widehat{BPQ} = \widehat{BPA} = 60° = \widehat{APC}.$$
- Les angles inscrits $\widehat{PBC}$ et $\widehat{PAC}$ interceptent le même arc $PC$, donc ils
  sont égaux. Or $Q$ est sur $[BC]$, donc $\widehat{PBQ} = \widehat{PBC}$, et finalement
  $$\widehat{PBQ} = \widehat{PAC}.$$

Les triangles $PBQ$ et $PAC$ ont deux angles égaux deux à deux : ils sont semblables, avec la
correspondance $P \leftrightarrow P$, $B \leftrightarrow A$, $Q \leftrightarrow C$.

Les rapports des côtés correspondants sont donc égaux :
$$\frac{PB}{PA} = \frac{PQ}{PC},$$
d'où, en multipliant en croix,
$$PB \times PC = PA \times PQ.$$

### Conclusion

On rassemble les deux étapes :
$$\frac{1}{PB} + \frac{1}{PC} = \frac{PC + PB}{PB \times PC} = \frac{PA}{PA \times PQ} = \frac{1}{PQ}.$$

$$\boxed{\dfrac{1}{PB} + \dfrac{1}{PC} = \dfrac{1}{PQ}}$$

## Going further

La première étape, $PA = PB + PC$, est vraie pour **tout** point $P$ de l'arc $BC$ ne contenant
pas $A$, qu'il soit ou non sur une droite passant par $Q$. C'est un résultat classique. Montrer
que réciproquement, si un point $P$ du plan vérifie $PA = PB + PC$ avec $P$ à l'intérieur de
l'angle $\widehat{BAC}$ vu de l'autre côté de $(BC)$, alors $P$ est sur cet arc.
