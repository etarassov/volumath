---
id: "17827"
title: "Un pentagone d'aire 1"
grade: 8
theme: geometry
difficulty: 3
duration_min: 25
tags: [aire, pentagone, cas-d-egalite, decoupage]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », géométrie, mercredi matin (Vincent Jugé), exercice 7 (JBMO 1998, problème 2), p.65 ; solution p.65"
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

Soit $ABCDE$ un pentagone convexe tel que

$$AB = AE = CD = 1, \qquad BC + DE = 1, \qquad \widehat{ABC} = \widehat{DEA} = 90^\circ .$$

Calculer l'aire du pentagone $ABCDE$.

## Hints

1. Les longueurs $BC$ et $DE$ ne sont pas connues séparément, seulement leur somme. Essayez de les mettre bout à bout.
2. Prolongez le segment $[DE]$ au-delà de $E$ jusqu'au point $P$ tel que $EP = BC$. Que vaut $DP$ ?
3. Comparez les triangles $ABC$ et $AEP$.
4. Le quadrilatère $ACDP$ a la même aire que le pentagone. Comparez ensuite les triangles $ACD$ et $APD$.

## Solution

**Étape 1 : mettre $BC$ et $DE$ bout à bout.** Sur la demi-droite $[DE)$, plaçons le point $P$ au-delà de $E$ tel que $EP = BC$. Alors

$$DP = DE + EP = DE + BC = 1 .$$

**Étape 2 : déplacer un triangle.** L'angle $\widehat{DEA}$ est droit et $D$, $E$, $P$ sont alignés, donc $\widehat{AEP} = 90^\circ$ aussi. Les triangles $ABC$ et $AEP$ ont :

- $AB = AE = 1$ ;
- $BC = EP$ ;
- un angle droit entre ces deux côtés : $\widehat{ABC} = \widehat{AEP} = 90^\circ$.

Ils sont donc égaux. En particulier $AC = AP$, et les deux triangles ont la même aire. Le pentagone $ABCDE$ est formé du triangle $ABC$ et du quadrilatère $ACDE$. En remplaçant le triangle $ABC$ par le triangle $AEP$, collé le long de $[AE]$, on obtient le quadrilatère $ACDP$, qui a donc **la même aire que le pentagone**.

**Étape 3 : couper en deux.** Les triangles $ACD$ et $APD$ ont :

- $AC = AP$ (étape 2) ;
- $CD = PD = 1$ ;
- le côté $[AD]$ en commun.

Leurs trois côtés sont égaux deux à deux, ils sont donc égaux et ont la même aire. L'aire de $ACDP$ vaut donc deux fois celle du triangle $APD$.

**Étape 4 : l'aire du triangle $APD$.** Dans ce triangle, prenons pour base $[DP]$, de longueur $1$. La droite $(AE)$ est perpendiculaire à $(DP)$, donc la hauteur correspondante est $AE = 1$. Ainsi

$$\mathcal{A}(APD) = \frac{DP \times AE}{2} = \frac{1}{2} .$$

**Conclusion :** l'aire du pentagone vaut $2 \times \frac{1}{2} = 1$.

## Going further

Le résultat ne dépend pas de la façon dont la longueur $1$ est partagée entre $BC$ et $DE$. Faites la figure dans le cas $BC = DE = \frac{1}{2}$ : le pentagone a alors un axe de symétrie, la droite qui joint $A$ au milieu de $[CD]$. Calculez son aire directement dans ce cas, pour vérifier.
